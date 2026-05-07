# Output Formats

Choose video codecs, color spaces, container formats, and segmented (HLS) output for your recordings.

## Overview

RecordKit provides flexible output options, including multiple video codecs, color spaces, and delivery methods. You can record to a single file (mov/mp4/m4a) or a segmented stream (HLS) for real-time upload scenarios.

## Video Codecs

RecordKit supports two video codecs for screen and display recordings. The codec is specified as part of the output options.

### H.264

H.264 (also known as AVC) is the default codec. It offers the best compatibility across devices and players.

```swift
RKRecorder([
    .display(displayID: selectedDisplay, output: .singleFile(filename: nil, videoCodec: .h264))
])
```

### HEVC

HEVC (also known as H.265) produces smaller file sizes at the same quality level.

```swift
RKRecorder([
    .display(displayID: selectedDisplay, output: .singleFile(filename: nil, videoCodec: .hevc))
])
```

> Tip: Use HEVC when file size is a priority and you know your users have modern devices. For maximum compatibility, stick with H.264.

## Color Spaces

RecordKit can record in different color spaces to match your display capabilities. Color space is configured separately from the codec.

- **sRGB** — Standard RGB color space, compatible with all modern displays. This is the default.
- **Display P3** — Wide gamut color space used in high-end Apple displays. Only available with the HEVC codec.

```swift
// Record in Display P3 with HEVC for wide gamut colors
RKRecorder([
    .display(
        displayID: selectedDisplay,
        colorSpace: .displayP3,
        output: .singleFile(filename: nil, videoCodec: .hevc)
    )
])
```

> Warning: Display P3 color space is only supported with the HEVC codec. Using Display P3 with H.264 will fall back to sRGB.

## Container Formats

The container format is determined by the filename extension you specify.

### MOV / M4A

MOV is the default container format for video recordings. When recording audio only (microphone or system audio), RecordKit automatically uses the M4A container.

```swift
RKRecorder([
    // Video recording → .mov
    .display(displayID: selectedDisplay),
    // Audio-only recording → .m4a
    .microphone(microphoneID: selectedMicrophone)
])
```

### MP4

The MP4 container is supported by specifying a filename with the `.mp4` extension. This can be useful for broader web compatibility.

```swift
RKRecorder([
    .display(displayID: selectedDisplay, output: .singleFile(filename: "display.mp4", videoCodec: .h264))
])
```

## Segmented Output (HLS)

When uploading files to a backend, it can be beneficial to write audio and video in smaller segments that can be uploaded while the recording is still running. RecordKit can output a segmented media stream, also known as HLS/fMP4.

### Enabling Segmented Output

Enable segmented output by setting the output parameter to `.segmented`. You can optionally specify a filename prefix for the generated files.

```swift
RKRecorder([
    .display(displayID: selectedDisplay, output: .segmented(filenamePrefix: "screen", segmentCallback: nil))
])
```

### Segment Callback

Pass a callback to be notified each time a new segment is written to disk. This is useful for uploading segments in real-time, moving them to a different location, or renaming them to match your naming conventions.

```swift
RKRecorder([
    .display(displayID: selectedDisplay, output: .segmented(filenamePrefix: "screen", segmentCallback: { url in
        // Upload the segment to your backend
        uploadSegment(url)
    }))
])
```

### Index Playlist Generation

RecordKit automatically generates an index playlist (`.m3u8`) that references all segments, ready for HLS playback.

When using segmented output, RecordKit generates several files:

| File | Description |
|------|-------------|
| `*.m3u8` | Index playlist for HLS playback |
| `*.mp4` | Initialization segment containing codec information |
| `*.m4s` | Media segments containing the actual audio/video data |

Segment durations are approximately 6 seconds for audio streams and 2 seconds for video streams.

## Topics

### Related Symbols

- ``RKBundleInfo``
- ``RKVideoCodec``
- ``RKColorSpace``
