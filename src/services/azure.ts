import * as sdk from 'microsoft-cognitiveservices-speech-sdk';
import { env } from '../config/env';
import { WordResultInput, WordStatus, WsWordMessage } from '../types';

// ─── Filler word detection ─────────────────────────────────────────────────
const FILLER_WORDS = new Set([
  'um', 'uh', 'uh-huh', 'uhm', 'umm', 'hmm', 'hm',
  'like', 'basically', 'actually', 'literally', 'honestly',
  'you know', 'i mean', 'sort of', 'kind of',
  'right', 'okay', 'so', 'well', 'anyway',
]);

// Single-word fillers for quick lookup (multi-word handled separately)
const SINGLE_FILLERS = new Set([
  'um', 'uh', 'uhm', 'umm', 'hmm', 'hm',
  'like', 'basically', 'actually', 'literally', 'honestly',
  'right', 'okay', 'so', 'well', 'anyway',
]);

export interface AzureSessionResult {
  words: WordResultInput[];
  overallAccuracy: number;
  fluencyScore: number;
  durationSeconds: number;
  fillerCount: number;
  fillerWords: string[];
  wordsPerMinute: number;
  speechHealthScore: number;
}

export type WordCallback = (msg: WsWordMessage) => void;
export type ErrorCallback = (message: string) => void;

/**
 * Runs a pronunciation assessment session against Azure Speech Services.
 *
 * @param audioStream  - Readable stream of raw PCM 16kHz 16-bit mono audio
 * @param referenceText - The sentence the user is supposed to read
 * @param targetAccent  - e.g. "en-US" or "en-GB"
 * @param onWord        - Called for each assessed word in real time
 * @param onError       - Called if Azure returns a service-level error
 */
export async function runAzurePronunciationSession(
  audioStream: sdk.PushAudioInputStream,
  referenceText: string,
  targetAccent: string,
  onWord: WordCallback,
  onError: ErrorCallback
): Promise<AzureSessionResult> {
  return new Promise((resolve, reject) => {
    const speechConfig = sdk.SpeechConfig.fromSubscription(
      env.azure.speechKey,
      env.azure.speechRegion
    );
    speechConfig.speechRecognitionLanguage = targetAccent || 'en-US';

    const pronunciationConfig = new sdk.PronunciationAssessmentConfig(
      referenceText,
      sdk.PronunciationAssessmentGradingSystem.HundredMark,
      sdk.PronunciationAssessmentGranularity.Word,
      true // enable miscue detection
    );
    pronunciationConfig.enableProsodyAssessment = true;

    const audioConfig = sdk.AudioConfig.fromStreamInput(audioStream);
    const recognizer = new sdk.SpeechRecognizer(speechConfig, audioConfig);

    pronunciationConfig.applyTo(recognizer);

    const collectedWords: WordResultInput[] = [];
    let totalAccuracy = 0;
    let wordCount = 0;
    let fluencyScore = 0;
    let durationMs = 0;

    recognizer.recognized = (_sender, event) => {
      if (event.result.reason !== sdk.ResultReason.RecognizedSpeech) return;

      const assessment = sdk.PronunciationAssessmentResult.fromResult(event.result);

      // Accumulate fluency from each recognized segment
      if (assessment.fluencyScore) {
        fluencyScore = assessment.fluencyScore; // last segment's score (Azure gives rolling value)
      }

      // Duration in ticks (100ns each) → seconds
      durationMs += event.result.duration / 10000;

      const wordDetails = assessment.detailResult?.Words ?? [];
      for (const wordDetail of wordDetails) {
        const word = wordDetail.Word ?? '';
        const accuracy = wordDetail.PronunciationAssessment?.AccuracyScore ?? 0;
        const errorType = wordDetail.PronunciationAssessment?.ErrorType ?? null;

        const status: WordStatus = deriveStatus(accuracy, errorType);

        collectedWords.push({
          word,
          accuracyScore: accuracy,
          errorType: errorType === 'None' ? null : errorType,
        });

        totalAccuracy += accuracy;
        wordCount++;

        // Real-time word feedback
        onWord({ type: 'word', word, accuracy, status });
      }
    };

    recognizer.canceled = (_sender, event) => {
      recognizer.stopContinuousRecognitionAsync();
      if (event.reason === sdk.CancellationReason.Error) {
        onError('AZURE_SERVICE_FAILURE');
        reject(new Error(`Azure canceled: ${event.errorDetails}`));
      }
    };

    recognizer.sessionStopped = () => {
      recognizer.stopContinuousRecognitionAsync();
      const overallAccuracy = wordCount > 0 ? totalAccuracy / wordCount : 0;
      const durationSeconds = Math.round(durationMs / 1000);

      // ── Compute speech analytics ─────────────────────────────────────
      const { fillerCount, fillerWords } = detectFillers(collectedWords);
      const wordsPerMinute = computeWPM(wordCount, fillerCount, durationSeconds);
      const speechHealthScore = computeSpeechHealthScore(
        overallAccuracy,
        fluencyScore || 0,
        wordsPerMinute,
        fillerCount,
        durationSeconds
      );

      resolve({
        words: collectedWords,
        overallAccuracy: parseFloat(overallAccuracy.toFixed(2)),
        fluencyScore: parseFloat((fluencyScore || 0).toFixed(2)),
        durationSeconds,
        fillerCount,
        fillerWords,
        wordsPerMinute: parseFloat(wordsPerMinute.toFixed(2)),
        speechHealthScore: parseFloat(speechHealthScore.toFixed(2)),
      });
    };

    recognizer.startContinuousRecognitionAsync(
      () => { /* recognition started */ },
      (err) => {
        onError('AZURE_SERVICE_FAILURE');
        reject(new Error(`Azure start failed: ${err}`));
      }
    );
  });
}

export function createAudioInputStream(): sdk.PushAudioInputStream {
  // Raw PCM: 16kHz, 16-bit, mono
  const format = sdk.AudioStreamFormat.getWaveFormatPCM(16000, 16, 1);
  return sdk.AudioInputStream.createPushStream(format);
}

function deriveStatus(accuracy: number, errorType: string | null): WordStatus {
  if (errorType === 'Omission') return 'skipped';
  if (accuracy >= 80) return 'correct';
  if (accuracy >= 50) return 'partial';
  return 'incorrect';
}

// ─── Speech analytics helpers ──────────────────────────────────────────────

/**
 * Detects filler words in the collected transcript.
 * Checks single-word fillers and adjacent-word bigrams (e.g. "you know").
 */
function detectFillers(words: WordResultInput[]): { fillerCount: number; fillerWords: string[] } {
  const foundFillers: string[] = [];
  const wordTexts = words.map((w) => w.word.toLowerCase().replace(/[^a-z'-]/g, ''));

  for (let i = 0; i < wordTexts.length; i++) {
    // Check bigrams first (e.g. "you know", "i mean", "sort of", "kind of")
    if (i < wordTexts.length - 1) {
      const bigram = `${wordTexts[i]} ${wordTexts[i + 1]}`;
      if (FILLER_WORDS.has(bigram)) {
        foundFillers.push(bigram);
        i++; // skip next word since it's part of the bigram
        continue;
      }
    }

    // Check single-word fillers
    if (SINGLE_FILLERS.has(wordTexts[i])) {
      foundFillers.push(wordTexts[i]);
    }
  }

  // Deduplicated list of unique filler types found
  const uniqueFillers = [...new Set(foundFillers)];

  return {
    fillerCount: foundFillers.length,
    fillerWords: uniqueFillers,
  };
}

/**
 * Computes words per minute, excluding filler words from the meaningful word count.
 */
function computeWPM(totalWords: number, fillerCount: number, durationSeconds: number): number {
  if (durationSeconds <= 0) return 0;
  const meaningfulWords = Math.max(0, totalWords - fillerCount);
  return (meaningfulWords / durationSeconds) * 60;
}

/**
 * Computes a composite Speech Health Score (0-100).
 *
 * Formula:
 *   40% Accuracy + 30% Fluency + 20% Speed consistency + 10% Filler control
 *
 * Speed score: 100 if WPM is in the ideal range (110–160), scales down linearly.
 * Filler score: 100 if no fillers, decreases by 20 per filler/minute.
 */
function computeSpeechHealthScore(
  accuracy: number,
  fluency: number,
  wpm: number,
  fillerCount: number,
  durationSeconds: number
): number {
  // Speed score: ideal range 110-160 WPM
  let speedScore: number;
  if (wpm >= 110 && wpm <= 160) {
    speedScore = 100;
  } else if (wpm < 110) {
    // Linear scale: 0 WPM → 0, 110 WPM → 100
    speedScore = Math.max(0, (wpm / 110) * 100);
  } else {
    // Linear scale: 160 WPM → 100, 250+ WPM → 0
    speedScore = Math.max(0, 100 - ((wpm - 160) / 90) * 100);
  }

  // Filler score: penalize based on fillers per minute
  const durationMinutes = durationSeconds > 0 ? durationSeconds / 60 : 1;
  const fillersPerMinute = fillerCount / durationMinutes;
  const fillerScore = Math.max(0, 100 - fillersPerMinute * 20);

  // Composite score
  const healthScore =
    accuracy * 0.4 +
    fluency * 0.3 +
    speedScore * 0.2 +
    fillerScore * 0.1;

  return Math.min(100, Math.max(0, healthScore));
}
