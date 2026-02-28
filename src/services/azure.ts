import * as sdk from 'microsoft-cognitiveservices-speech-sdk';
import { env } from '../config/env';
import { WordResultInput, WordStatus, WsWordMessage } from '../types';

export interface AzureSessionResult {
  words: WordResultInput[];
  overallAccuracy: number;
  fluencyScore: number;
  durationSeconds: number;
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

      resolve({
        words: collectedWords,
        overallAccuracy: parseFloat(overallAccuracy.toFixed(2)),
        fluencyScore: parseFloat((fluencyScore || 0).toFixed(2)),
        durationSeconds,
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
