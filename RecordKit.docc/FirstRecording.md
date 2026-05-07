# First Recording

Record audio from a microphone in four steps: configure your project, check authorization, find a microphone, start a recorder.

## Overview

This guide walks through a microphone-only recording in SwiftUI. The same shape — authorize, find a source, start a recorder — applies to every other source. For the full prerequisites of each source, see <doc:ProjectSetup>. For the full set of recorder configuration options, see ``RKRecorder``.

## 1. Configure Your Project

To record a microphone, add the following to your Xcode project:

- **Info.plist:** `NSMicrophoneUsageDescription`
- **Entitlement:** `com.apple.security.device.audio-input`

For other sources (camera, screen, system audio, etc.), see <doc:ProjectSetup> for the full table.

## 2. Check Authorization

Use the ``RKAuthorizationStatus`` property wrapper to observe permission state and request access:

```swift
import RecordKit
import SwiftUI

struct RecorderView: View {
    @RKAuthorizationStatus(.microphone) var microphoneAllowed

    var body: some View {
        if microphoneAllowed {
            RecordingControls()
        } else {
            Button("Allow Microphone") {
                Task { await $microphoneAllowed.requestMicrophoneAccess() }
            }
        }
    }
}
```

> Tip: Outside SwiftUI, use ``RKAuthorization`` for the same checks.

## 3. Find a Microphone

Use the ``RKSources`` property wrapper to observe the list of available microphones, or ``RKMicrophone/preferred`` for a sensible default.

```swift
struct RecordingControls: View {
    @RKSources(.microphones) var microphones
    @State var selected: RKMicrophone? = RKMicrophone.preferred

    var body: some View {
        Picker("Microphone", selection: $selected) {
            ForEach(microphones) { microphone in
                Text(microphone.localizedName).tag(microphone as RKMicrophone?)
            }
        }
    }
}
```

> Tip: Outside SwiftUI, use ``RKMicrophone/microphones`` and ``RKMicrophone/preferred``.

## 4. Start a Recorder

Create an ``RKRecorder`` with a microphone schema item, then call ``RKRecorder/prepare()`` and ``RKRecorder/start()``.

```swift
guard let microphone = RKMicrophone.preferred else { return }

let recorder = RKRecorder([
    .microphone(microphoneID: microphone.id)
])

try await recorder.prepare() // Wait for all hardware to be prepared.
try await recorder.start() // Actually start recording
```

The recorder writes its output into a RecordKit bundle in a temporary directory. ``RKRecorder/stop()`` returns the bundle URL and metadata describing the recorded files:

```swift
let result = try await recorder.stop()
NSWorkspace.shared.open(result.bundleURL) // Open directory containing all recorded files
```

## Next Steps

- ``RKRecorder`` — full recorder API and per-source schema item options.
- <doc:OutputFormats> — codecs, color spaces, and HLS segmented output.
- <doc:SystemAudioRecording> — recording system audio.
- <doc:AppleDeviceRecording> — recording iPhone and iPad screens.
- <doc:LoggingAndErrors> — log forwarding and error handling.
- <doc:ProjectSetup> — full prerequisites reference.
