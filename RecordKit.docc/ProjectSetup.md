# Project Setup

Configure your app's Info.plist keys and entitlements for each recording source.

## Overview

Each recording source has its own prerequisites. Most require an Info.plist usage description, some additionally require a code-signing entitlement, and others depend on system-level permissions granted in System Settings. macOS displays the Info.plist string in the permission dialog; entitlements gate access for sandboxed and hardened apps. Some permissions granted via System Settings only take effect after the app is restarted.

This document describes what each source requires. After your project is configured, see <doc:FirstRecording> for the runtime workflow.

## Quick Example: Microphone

To record a microphone, configure two things in your Xcode project:

- **Info.plist** — Add `NSMicrophoneUsageDescription` with a string describing why your app records audio. macOS shows this string to the user in the permission dialog.
- **Entitlement** — In *Signing & Capabilities*, enable *Hardware → Audio Input* (`com.apple.security.device.audio-input`).

At runtime, request access with ``RKAuthorization/requestMicrophoneAccess()`` (or the ``RKAuthorizationStatus`` property wrapper in SwiftUI). The system shows a one-time prompt and returns whether the user granted access. No app restart is needed.

## All Sources

| Source | Info.plist | Entitlement | Permission grant |
|---|---|---|---|
| Camera | `NSCameraUsageDescription` | `com.apple.security.device.camera` | System prompt |
| Microphone | `NSMicrophoneUsageDescription` | `com.apple.security.device.audio-input` | System prompt |
| Screen Recording | — | — | System Settings, app restart |
| System Audio (Core Audio) | `NSAudioCaptureUsageDescription` | — | System prompt |
| System Audio (ScreenCaptureKit) | — | — | System Settings, app restart |
| Input Monitoring | — | — | System Settings, app restart |
| Accessibility Control | — | — | System Settings, app restart |

## Camera

- **Info.plist:** `NSCameraUsageDescription`
- **Entitlement:** `com.apple.security.device.camera` (Xcode: *Signing & Capabilities → Hardware → Camera*)
- **Permission grant:** One-time system prompt on first request. The request returns whether the user allowed access. No app restart required.
- **Runtime:** ``RKAuthorization/camera``, ``RKAuthorization/requestCameraAccess()``

## Microphone

- **Info.plist:** `NSMicrophoneUsageDescription`
- **Entitlement:** `com.apple.security.device.audio-input` (Xcode: *Signing & Capabilities → Hardware → Audio Input*)
- **Permission grant:** One-time system prompt on first request. The request returns whether the user allowed access. No app restart required.
- **Runtime:** ``RKAuthorization/microphone``, ``RKAuthorization/requestMicrophoneAccess()``

## Screen Recording

- **Info.plist:** none required.
- **Entitlement:** none required.
- **Permission grant:** The first request shows a dialog with a button to open System Settings. After the user grants access, the app must be restarted before the permission becomes active in the running process.
- **Runtime:** ``RKAuthorization/screenRecording``, ``RKAuthorization/requestScreenRecording()``

## System Audio

System audio has two backends with different prerequisites. See <doc:SystemAudioRecording> for guidance on choosing a backend.

### Core Audio (macOS 14.2+)

- **Info.plist:** `NSAudioCaptureUsageDescription`
- **Entitlement:** none required.
- **Permission grant:** One-time system prompt that returns whether access was granted. No app restart required.

### ScreenCaptureKit

Same prerequisites and grant flow as Screen Recording above.

Use the backend-aware helpers ``RKAuthorization/systemAudioRecording(backend:)`` and ``RKAuthorization/requestSystemAudioRecording(backend:)`` so the correct permission path is checked.

## Input Monitoring

- **Info.plist:** none required.
- **Entitlement:** none required.
- **Permission grant:** The first request shows a dialog with a button to open System Settings. After the user grants access, the app must be restarted.
- **Runtime:** ``RKAuthorization/inputMonitoring``, ``RKAuthorization/requestInputMonitoring()``

## Accessibility Control

- **Info.plist:** none required.
- **Entitlement:** none required.
- **Permission grant:** The first request shows a dialog with a button to open System Settings. After the user grants access, the app must be restarted.
- **Runtime:** ``RKAuthorization/accessibilityControl``, ``RKAuthorization/requestAccessibilityControl()``

## Topics

### Related Symbols

- ``RKAuthorization``
- ``RKAuthorizationStatus``
