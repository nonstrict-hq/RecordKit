# Echo Cancellation

Remove system audio from the microphone signal in real time, useful for meeting recorders, dictation/transcription apps, and other apps where speakers play audio that should not end up in the microphone recording.

## Overview

RecordKit has built-in echo cancellation — you can enable it by adding it to a microphone recorder item.

> Warning: Echo cancellation requires macOS 14.2 or later. On older versions, the recorder throws ``RKError/Code/configurationNotSupported``.

## Basic Usage

To enable echo cancellation, pass an `echoCancellation` option to the microphone schema item. The ``RKRecorder/EchoCancellation/AEC3Config/balanced`` preset is a good default:

```swift
let recorder = RKRecorder([
    .microphone(microphoneID: micId, echoCancellation: .aec3(.balanced))
])
try await recorder.start()
```

RecordKit captures the system audio internally and removes it from the microphone signal during recording.

## Predefined Configurations

RecordKit ships with two presets that cover the most common use cases:

### Balanced

Balanced echo removal that preserves audio quality. Records at 48 kHz for full fidelity, making it the best choice for audio recordings.

```swift
.microphone(microphoneID: micId, echoCancellation: .aec3(.balanced))
```

### Aggressive

Maximum echo removal at the cost of some audio quality. Records at 16 kHz with aggressive suppression and residual echo gating. Best for speech-to-text pipelines where echo removal matters more than audio fidelity.

```swift
.microphone(microphoneID: micId, echoCancellation: .aec3(.aggressive))
```

## Custom Configuration

For more control, create an ``RKRecorder/EchoCancellation/AEC3Config`` with custom settings:

```swift
let config = RKRecorder.EchoCancellation.AEC3Config(
    sampleRate: .kHz32,
    suppressionMode: .balanced,
    highPassFilter: true,
    residualEchoGate: true
)

let recorder = RKRecorder([
    .microphone(microphoneID: micId, echoCancellation: .aec3(config))
])
```

### Sample Rate

The sample rate controls the fidelity of the echo-cancelled output:

| Sample Rate | Use Case |
| --- | --- |
| `.kHz16` | Speech-to-text pipelines |
| `.kHz32` | Intermediate quality |
| `.kHz48` | Full audio fidelity |

> Tip: Echo cancellation always outputs mono audio, regardless of the input microphone configuration.

### Suppression Mode

The suppression mode determines how aggressively echo is removed:

- **`.balanced`** — Conservative suppression. Preserves speech naturalness during double-talk (when both the local and remote participant speak at the same time). Best for recordings where speech quality matters.
- **`.aggressive`** — Aggressive suppression. Removes more echo but may attenuate speech. Best when echo removal is the priority over speech quality.

### High-Pass Filter

When `highPassFilter` is enabled, a high-pass filter is applied to the captured audio to remove DC offset and low-frequency noise. This helps the echo canceller's adaptive filter perform better. Enabled by default in both presets.

### Residual Echo Gate

When `residualEchoGate` is enabled, a post-processing gate attenuates output when the speaker is active but the microphone signal is quiet — which likely means the remaining signal is residual echo rather than speech. This catches echo that the main canceller misses, at the cost of occasionally clipping very quiet speech. Enabled in the `aggressive` preset, disabled in `balanced`.

## Permissions

Echo cancellation works by capturing system audio to use as a reference signal. This means it uses system audio recording under the hood, and your app needs the same permissions as for system audio recording — see <doc:SystemAudioRecording> and <doc:ProjectSetup>.

Add `NSAudioCaptureUsageDescription` to your app's `Info.plist` and use RecordKit's permission helpers:

```swift
if !RKAuthorization.systemAudioRecording(backend: .coreAudio) {
    try await RKAuthorization.requestSystemAudioRecording(backend: .coreAudio)
}
```

> Tip: On macOS 26+, Screen Recording permission also grants access to system audio via Core Audio. If your app already has that permission you're covered, but still include `NSAudioCaptureUsageDescription` in your `Info.plist`.

## Topics

### Related Symbols

- ``RKRecorder/EchoCancellation``
- ``RKRecorder/EchoCancellation/AEC3Config``
- ``RKAuthorization``
