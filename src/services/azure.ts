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
  completenessScore: number;
  prosodyScore: number;
  pronunciationScore: number;
  durationSeconds: number;
  fillerCount: number;
  fillerWords: string[];
  wordsPerMinute: number;
  speechHealthScore: number;
  // New analysis factors
  pauseCount: number;
  totalPauseMs: number;
  avgPauseMs: number;
  longestPauseMs: number;
  hesitationScore: number;
  mispronunciationCount: number;
  omissionCount: number;
  insertionCount: number;
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
      sdk.PronunciationAssessmentGranularity.Phoneme, // ← upgraded from Word to Phoneme
      true // enable miscue detection
    );
    pronunciationConfig.enableProsodyAssessment = true;

    const audioConfig = sdk.AudioConfig.fromStreamInput(audioStream);
    const recognizer = new sdk.SpeechRecognizer(speechConfig, audioConfig);

    pronunciationConfig.applyTo(recognizer);

    const collectedWords: WordResultInput[] = [];
    let wordCount = 0;
    // Accumulate Azure's own segment-level scores (weighted averages)
    const segmentAccuracies: number[] = [];
    const segmentFluencies: number[] = [];
    const segmentCompletenessScores: number[] = [];
    const segmentProsodyScores: number[] = [];
    const segmentPronunciationScores: number[] = [];
    let durationMs = 0;

    // Error type counters
    let mispronunciationCount = 0;
    let omissionCount = 0;
    let insertionCount = 0;

    // Word timing data for pause/hesitation analysis
    // Each entry: { offsetMs, durationMs }
    const wordTimings: { offsetMs: number; durationMs: number }[] = [];

    recognizer.recognized = (_sender, event) => {
      if (event.result.reason !== sdk.ResultReason.RecognizedSpeech) return;

      const assessment = sdk.PronunciationAssessmentResult.fromResult(event.result);
      const segDurationMs = event.result.duration / 10000; // ticks (100ns) → ms

      // Use Azure's own weighted scores per segment (NOT custom averages)
      const segAccuracy = assessment.accuracyScore;
      const segFluency = assessment.fluencyScore;
      const segCompleteness = assessment.completenessScore;

      // prosodyScore is on the detailResult
      const segProsody = (assessment.detailResult as any)?.PronunciationAssessment?.ProsodyScore
        ?? (assessment as any).prosodyScore
        ?? 0;

      // pronunciationScore — Azure's own composite blend
      const segPronunciation = assessment.pronunciationScore ?? 0;

      if (segAccuracy != null) segmentAccuracies.push(segAccuracy);
      if (segFluency != null) segmentFluencies.push(segFluency);
      if (segCompleteness != null) segmentCompletenessScores.push(segCompleteness);
      if (segProsody != null && segProsody > 0) segmentProsodyScores.push(segProsody);
      if (segPronunciation != null && segPronunciation > 0) segmentPronunciationScores.push(segPronunciation);

      // Duration in ticks (100ns each) → ms
      durationMs += segDurationMs;

      const wordDetails = assessment.detailResult?.Words ?? [];
      for (const wordDetail of wordDetails) {
        const word = wordDetail.Word ?? '';
        const accuracy = wordDetail.PronunciationAssessment?.AccuracyScore ?? 0;
        const errorType = wordDetail.PronunciationAssessment?.ErrorType ?? null;

        const status: WordStatus = deriveStatus(accuracy, errorType);

        // ── Extract phoneme-level data ──────────────────────────────
        const phonemes: { phoneme: string; accuracy: number }[] = [];
        const rawPhonemes = (wordDetail as any).Phonemes ?? [];
        for (const ph of rawPhonemes) {
          phonemes.push({
            phoneme: ph.Phoneme ?? '',
            accuracy: ph.PronunciationAssessment?.AccuracyScore ?? 0,
          });
        }

        // ── Extract syllable-level data ─────────────────────────────
        const syllables: { syllable: string; accuracy: number; durationMs: number }[] = [];
        const rawSyllables = (wordDetail as any).Syllables ?? [];
        for (const syl of rawSyllables) {
          syllables.push({
            syllable: syl.Syllable ?? '',
            accuracy: syl.PronunciationAssessment?.AccuracyScore ?? 0,
            durationMs: syl.Duration ? syl.Duration / 10000 : 0,
          });
        }

        // ── Extract word-level timing ───────────────────────────────
        // Azure provides Offset and Duration in 100ns ticks
        const wordOffsetMs = (wordDetail as any).Offset
          ? (wordDetail as any).Offset / 10000
          : 0;
        const wordDurationMs = (wordDetail as any).Duration
          ? (wordDetail as any).Duration / 10000
          : 0;

        wordTimings.push({ offsetMs: wordOffsetMs, durationMs: wordDurationMs });

        // ── Count error types ───────────────────────────────────────
        if (errorType === 'Mispronunciation') mispronunciationCount++;
        else if (errorType === 'Omission') omissionCount++;
        else if (errorType === 'Insertion') insertionCount++;

        collectedWords.push({
          word,
          accuracyScore: accuracy,
          errorType: errorType === 'None' ? null : errorType,
          phonemes: phonemes.length > 0 ? phonemes : null,
          syllables: syllables.length > 0 ? syllables : null,
          durationMs: wordDurationMs > 0 ? Math.round(wordDurationMs) : null,
        });

        // Only count non-insertion words toward wordCount
        if (errorType !== 'Insertion') {
          wordCount++;
        }

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

      // Use Azure's own weighted accuracy (average across segments) instead of custom mean
      const overallAccuracy = segmentAccuracies.length > 0
        ? segmentAccuracies.reduce((a, b) => a + b, 0) / segmentAccuracies.length
        : 0;
      const fluencyScore = segmentFluencies.length > 0
        ? segmentFluencies.reduce((a, b) => a + b, 0) / segmentFluencies.length
        : 0;
      const completenessScore = segmentCompletenessScores.length > 0
        ? segmentCompletenessScores.reduce((a, b) => a + b, 0) / segmentCompletenessScores.length
        : 0;
      const prosodyScore = segmentProsodyScores.length > 0
        ? segmentProsodyScores.reduce((a, b) => a + b, 0) / segmentProsodyScores.length
        : 0;
      const pronunciationScore = segmentPronunciationScores.length > 0
        ? segmentPronunciationScores.reduce((a, b) => a + b, 0) / segmentPronunciationScores.length
        : 0;

      const durationSeconds = Math.round(durationMs / 1000);

      // ── Compute pause/hesitation analysis from word timings ───────
      const pauseAnalysis = computePauseAnalysis(wordTimings);

      // ── Compute speech analytics ─────────────────────────────────
      const { fillerCount, fillerWords } = detectFillers(collectedWords);
      const wordsPerMinute = computeWPM(wordCount, fillerCount, durationSeconds);
      const hesitationScore = computeHesitationScore(pauseAnalysis, durationSeconds);

      // Error rate score: % of non-insertion words with no error
      const nonInsertionWords = collectedWords.filter((w) => w.errorType !== 'Insertion');
      const cleanWords = nonInsertionWords.filter((w) => !w.errorType);
      const errorRateScore = nonInsertionWords.length > 0
        ? (cleanWords.length / nonInsertionWords.length) * 100
        : 100;

      const speechHealthScore = computeSpeechHealthScore(
        overallAccuracy,
        fluencyScore,
        completenessScore,
        prosodyScore,
        wordsPerMinute,
        fillerCount,
        durationSeconds,
        hesitationScore,
        errorRateScore
      );

      resolve({
        words: collectedWords,
        overallAccuracy: parseFloat(overallAccuracy.toFixed(2)),
        fluencyScore: parseFloat(fluencyScore.toFixed(2)),
        completenessScore: parseFloat(completenessScore.toFixed(2)),
        prosodyScore: parseFloat(prosodyScore.toFixed(2)),
        pronunciationScore: parseFloat(pronunciationScore.toFixed(2)),
        durationSeconds,
        fillerCount,
        fillerWords,
        wordsPerMinute: parseFloat(wordsPerMinute.toFixed(2)),
        speechHealthScore: parseFloat(speechHealthScore.toFixed(2)),
        pauseCount: pauseAnalysis.pauseCount,
        totalPauseMs: Math.round(pauseAnalysis.totalPauseMs),
        avgPauseMs: Math.round(pauseAnalysis.avgPauseMs),
        longestPauseMs: Math.round(pauseAnalysis.longestPauseMs),
        hesitationScore: parseFloat(hesitationScore.toFixed(2)),
        mispronunciationCount,
        omissionCount,
        insertionCount,
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
  if (errorType === 'Insertion') return 'incorrect'; // extra words not in reference
  if (accuracy >= 85) return 'correct';
  if (accuracy >= 60) return 'partial';
  return 'incorrect';
}

// ─── Pause / Hesitation analysis ───────────────────────────────────────────

interface PauseAnalysis {
  pauseCount: number;
  totalPauseMs: number;
  avgPauseMs: number;
  longestPauseMs: number;
}

/**
 * Computes pause metrics from word timing data.
 * A "pause" is a gap > 300ms between the end of one word and the start of the next.
 * Normal inter-word gaps (~50-200ms) are expected and not counted.
 */
function computePauseAnalysis(
  timings: { offsetMs: number; durationMs: number }[]
): PauseAnalysis {
  const PAUSE_THRESHOLD_MS = 300; // gaps > 300ms count as pauses
  const pauses: number[] = [];

  for (let i = 1; i < timings.length; i++) {
    const prevEnd = timings[i - 1].offsetMs + timings[i - 1].durationMs;
    const currStart = timings[i].offsetMs;
    const gap = currStart - prevEnd;
    if (gap > PAUSE_THRESHOLD_MS) {
      pauses.push(gap);
    }
  }

  return {
    pauseCount: pauses.length,
    totalPauseMs: pauses.reduce((a, b) => a + b, 0),
    avgPauseMs: pauses.length > 0
      ? pauses.reduce((a, b) => a + b, 0) / pauses.length
      : 0,
    longestPauseMs: pauses.length > 0 ? Math.max(...pauses) : 0,
  };
}

/**
 * Computes a 0-100 hesitation score.
 * 100 = no hesitations (smooth speech). Lower = more hesitations.
 *
 * Factors:
 * - Pause frequency (pauses per minute of speech)
 * - Average pause duration (longer pauses = more penalty)
 * - Longest pause (a single very long pause is penalized extra)
 */
function computeHesitationScore(
  analysis: PauseAnalysis,
  durationSeconds: number
): number {
  if (durationSeconds <= 0) return 100;

  const durationMinutes = durationSeconds / 60;

  // Frequency penalty: ideal is 0-2 pauses/min, penalize above that
  const pausesPerMinute = analysis.pauseCount / durationMinutes;
  // 0 pauses/min → 100, 8+ pauses/min → 0
  const freqScore = Math.max(0, 100 - (pausesPerMinute / 8) * 100);

  // Average duration penalty: avg > 1500ms is very hesitant
  // 300ms avg → 100, 1500ms avg → 0
  const avgScore = analysis.avgPauseMs <= 300
    ? 100
    : Math.max(0, 100 - ((analysis.avgPauseMs - 300) / 1200) * 100);

  // Longest pause penalty: > 3000ms single pause is very bad
  const longestScore = analysis.longestPauseMs <= 500
    ? 100
    : Math.max(0, 100 - ((analysis.longestPauseMs - 500) / 2500) * 100);

  // Weighted: 50% frequency + 30% avg duration + 20% longest
  return Math.min(100, Math.max(0,
    freqScore * 0.50 + avgScore * 0.30 + longestScore * 0.20
  ));
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
 * Formula (8 components):
 *   25% Accuracy + 15% Fluency + 12% Completeness + 12% Prosody
 *   + 12% Hesitation + 10% Speed consistency + 7% Filler control + 7% Error rate
 *
 * Speed score: 100 if WPM is in the ideal range (110–160), scales down linearly.
 * Filler score: 100 if no fillers, decreases by 20 per filler/minute.
 * Error rate: percentage of words with no error type.
 */
function computeSpeechHealthScore(
  accuracy: number,
  fluency: number,
  completeness: number,
  prosody: number,
  wpm: number,
  fillerCount: number,
  durationSeconds: number,
  hesitationScore: number,
  errorRateScore: number
): number {
  // Speed score: ideal range 110-160 WPM
  let speedScore: number;
  if (wpm >= 110 && wpm <= 160) {
    speedScore = 100;
  } else if (wpm < 110) {
    speedScore = Math.max(0, (wpm / 110) * 100);
  } else {
    speedScore = Math.max(0, 100 - ((wpm - 160) / 90) * 100);
  }

  // Filler score: penalize based on fillers per minute
  const durationMinutes = durationSeconds > 0 ? durationSeconds / 60 : 1;
  const fillersPerMinute = fillerCount / durationMinutes;
  const fillerScore = Math.max(0, 100 - fillersPerMinute * 20);

  // Composite score with 8 components
  const healthScore =
    accuracy * 0.25 +
    fluency * 0.15 +
    completeness * 0.12 +
    prosody * 0.12 +
    hesitationScore * 0.12 +
    speedScore * 0.10 +
    fillerScore * 0.07 +
    errorRateScore * 0.07;

  return Math.min(100, Math.max(0, healthScore));
}
