# Crash Recovery

Recover recordings that didn't stop normally because the app crashed, was force quit or was killed.

## Overview

RecordKit writes every recording so it survives a crash. Media files are written in fragments of one second, so a file stays readable up to its last fragment. A recording that didn't stop normally, because the app crashed, was force quit or killed, or its ``RKRecorder`` was released while recording, is an *interrupted recording*. The next time your app runs, it can recover it into a normal bundle, as if ``RKRecorder/stop()`` had returned it, or discard it.

A recording that only streams samples to callbacks writes no files, so it has nothing to recover.

## Recover at Launch

Call ``RKRecorder/recoverBundles()`` after your app launches. It recovers every interrupted recording of your app in the default location, oldest first, and returns a result for each, like ``RKRecorder/stop()``:

```swift
func recoverAtLaunch() async {
    for result in await RKRecorder.recoverBundles() {
        switch result {
        case .success(let recording):
            // Your app owns the bundle now, as after stop().
            importRecording(at: recording.bundleURL, bundleInfo: recording.bundleInfo)
        case .failure(let error):
            print("Failed to recover a recording: \(error.localizedDescription)")
        }
    }
}
```

A recording that is still running, in this process or another, such as a second instance of your app, is never recovered.

## Ask Before Recovering

To let the user decide, list the recordings with ``RKRecorder/interruptedRecordings()``. Listing is cheap: it doesn't touch the media files. Then call ``RKInterruptedRecording/recover()`` or ``RKInterruptedRecording/discard()``:

```swift
func offerRecovery() async {
    for recording in await RKRecorder.interruptedRecordings() {
        let started = recording.startedAt.formatted(date: .abbreviated, time: .shortened)
        do {
            if await askUser("Recover the recording from \(started)?") {
                let result = try await recording.recover()
                importRecording(at: result.bundleURL, bundleInfo: result.bundleInfo)
            } else {
                try recording.discard()
            }
        } catch {
            print("Failed to handle an interrupted recording: \(error.localizedDescription)")
        }
    }
}
```

Both check the recording again first, since it can change after it was listed. When it was recovered in the meantime, `recover()` returns that bundle and `discard()` throws, so a recovered bundle is never removed. Recovering is safe to repeat: when the app crashes while recovering, the next launch recovers the recording again.

## The Recovered Bundle

A recovered bundle has a `recordkit.json` with ``RKBundleInfo/recovered`` set to `true`. Its files can end at different points, so the bundle's ``RKBundleInfo/duration`` is that of the longest one. A file with nothing readable in it is left out.

Recovery repairs the files in place, and usually takes a fraction of a second:

- **Video files** (`.mov`, `.mp4`) are kept as they are. They stay fragmented, which AVFoundation and ffmpeg read fine.
- **Audio files** (`.m4a`) are rewritten without re-encoding, so players start them at the right moment. This needs free space of about the file's size. Without it, `recover()` throws ``RKError/Code/fileOperationFailed`` and the recording stays interrupted until there is room.
- **Segmented output** gets its index playlist rebuilt. A stream without segments yet is left out.
- **JSON files**, like input events, hold the events written up to the interruption.

## What a Crash Loses

Whatever was still in memory is lost: about the last second of a single file, a little more for a screen without changes, and up to one segment of segmented output, 2 seconds of video or 6 of audio by default. A kernel panic or power loss can lose more. Events in JSON files can run past the end of the recovered media, so clamp their times to the bundle's ``RKBundleInfo/duration``.

> Note: If you upload segments from `segmentCallback`: a segment your callback received is in the recovered playlists and JSON index, unless RecordKit couldn't add it to its playlist, which it logs as a warning. The last segments may not have reached your callback. After ``RKInterruptedRecording/recover()``, upload what's missing, plus the playlists, the JSON index and `recordkit.json`, which recovery rewrites.

## Where Recordings Are Found

Without an `outputDirectory` a recording goes into the default location, a bundle in the temporary directory, and ``RKRecorder/interruptedRecordings()`` and ``RKRecorder/recoverBundles()`` find it there. macOS clears the temporary directory after 3 days: pass your own `outputDirectory` to keep recordings recoverable longer.

When your app passes its own `outputDirectory`, pass the folder that holds its bundles to ``RKRecorder/interruptedRecordings(in:)`` or ``RKRecorder/recoverBundles(in:)`` at launch. They look at each directory and its direct children, since a recorder's `outputDirectory` is the bundle itself. Use these as well for a bundle your app moved.

### Sandboxed Apps

The default location is in your app's container, so its recordings are found without help. A folder the user chose is out of reach after a relaunch until your app accesses it again. Resolve your bookmark of the folder, start accessing it, and pass it to ``RKRecorder/recoverBundles(in:)``. Move or copy the recovered bundles before you stop accessing it:

```swift
func recoverRecordings(bookmark: Data) async throws {
    var isStale = false
    let folder = try URL(resolvingBookmarkData: bookmark, options: .withSecurityScope, bookmarkDataIsStale: &isStale)
    guard folder.startAccessingSecurityScopedResource() else { return }
    defer { folder.stopAccessingSecurityScopedResource() }

    for result in await RKRecorder.recoverBundles(in: [folder]) {
        if case .success(let recording) = result {
            importRecording(at: recording.bundleURL, bundleInfo: recording.bundleInfo)
        }
    }
}
```

## Topics

### Recovering Recordings

- ``RKRecorder/recoverBundles()``
- ``RKRecorder/recoverBundles(in:)``
- ``RKRecorder/interruptedRecordings()``
- ``RKRecorder/interruptedRecordings(in:)``
- ``RKInterruptedRecording``

### Related Symbols

- ``RKBundleInfo``
- ``RKRecorder/Settings/crashRecovery``
