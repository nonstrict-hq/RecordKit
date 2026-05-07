# System Audio Recording

Capture exactly what users hear, useful for apps like meeting recorders.

## Overview

RecordKit supports two ways to record system audio: Core Audio and ScreenCaptureKit. By default, the most appropriate backend is selected, which works well for most setups, but you can also explicitly choose the backend when needed.

## Record All System Audio

Recording all system audio is the simplest setup:

```swift
let recorder = RKRecorder([
    .systemAudio()
])
try await recorder.start()
```

> Warning: Add `NSAudioCaptureUsageDescription` to your app's `Info.plist`. Without it, Core Audio system-audio recordings will be silent.

## Choose a Backend

### Default (Recommended)

- OS support: all macOS versions supported by RecordKit (macOS 13+)
- Best fit: maximum compatibility with automatic fallback

This setting will use Core Audio on macOS 14.2+ and ScreenCaptureKit on older macOS versions.

```swift
let recorder = RKRecorder([
    .systemAudio(backend: .default) // You can also omit the backend to use default
])
```

### Core Audio

Core Audio has a friendlier flow where the user can grant system audio recording permissions with one click. This also assures the user that the app can't also capture the screen. It is supported on macOS 14.2+.

```swift
let recorder = RKRecorder([
    .systemAudio(backend: .coreAudio)
])
```

### ScreenCaptureKit

ScreenCaptureKit is available from macOS 12.3+. It needs full screen recording permissions, those need to be granted manually by the user through the Settings app.

```swift
let recorder = RKRecorder([
    .systemAudio(backend: .screenCaptureKit)
])
```

> Tip: Apps that do both screen and system audio only recordings can consider using the ScreenCaptureKit backend to make sure the audio capturing behaviour is always consistent.

## Permissions

Permissions differ by backend:

- Core Audio backend: requires system audio capture permission and `NSAudioCaptureUsageDescription` in your app's `Info.plist`.
- ScreenCaptureKit backend: requires Screen Recording permission.

Use backend-aware permission helpers so your app checks and requests the correct permission path.
If you use `.systemAudio()` with the default backend, include `NSAudioCaptureUsageDescription` so fallback/backend selection stays safe.

```swift
let backend: RKRecorder.SystemAudioBackend = .default

if !RKAuthorization.systemAudioRecording(backend: backend) {
    try await RKAuthorization.requestSystemAudioRecording(backend: backend)
}
```

## Recording Modes

### Record Everything

Use `systemAudio()` to record all system audio.

```swift
let recorder = RKRecorder([
    .systemAudio()
])
```

### Excluding Specific Apps

Use exclude mode to remove apps you do not want in the mix, for example Apple Music or Spotify.

```swift
let apps = RKRunningApplication.applications()
let excluded = apps
    .filter { $0.bundleIdentifier == "com.apple.Music" || $0.bundleIdentifier == "com.spotify.client" }
    .map(\.id)

var options: Set<RKRecorder.SystemAudioExcludeOptions> = [.currentProcess]
options.formUnion(excluded.map { .processID($0) })

let recorder = RKRecorder([
    .systemAudio(excluding: options)
])
```

### Record Specific Apps

Use include mode when you want audio from selected apps only, for example Zoom.

```swift
let apps = RKRunningApplication.applications()
let zoomIDs = apps
    .filter { $0.bundleIdentifier == "us.zoom.xos" }
    .map(\.id)

let recorder = RKRecorder([
    .systemAudio(includedApplicationIDs: zoomIDs)
])
```

> Tip: Some apps output audio from background processes. For supported browsers such as Safari and Chrome, RecordKit handles this process routing automatically.

