# Logging and Error Handling

Forward RecordKit's logs to your own logging infrastructure and surface RecordKit errors directly to users.

## Overview

RecordKit provides structured logging and user-friendly errors to help you debug issues and inform your users.

## Logging

By default, RecordKit logs to the system console. You can forward logs to your own logging infrastructure (such as SwiftLog) and control verbosity with log levels.

Set the log level using ``RKLogger/setLogLevel(_:)``. Available levels from most to least verbose: ``RKLogLevel/trace``, ``RKLogLevel/debug`` (default), ``RKLogLevel/info``, ``RKLogLevel/warning``, ``RKLogLevel/error``, ``RKLogLevel/critical``.

```swift
RKLogger.shared.setLogLevel(.info)
```

### Forwarding Logs

Connect RecordKit's logs to your existing logging setup.

```swift
import Logging
import RecordKit

private let logger = Logger(label: "RecordKit")

// Forward RecordKit logs to SwiftLog
func setupRecordKitLogging() {
    RKLogger.shared.setLogLevel(.debug)
    RKLogger.shared.setLogHandler(mode: .realtime) { message in
        let level: Logger.Level = switch message.level {
        case .trace:    .trace
        case .debug:    .debug
        case .info:     .info
        case .warning:  .warning
        case .error:    .error
        case .critical: .critical
        @unknown default: .info
        }
        logger.log(level: level, "[\(message.category)] \(message.message)")
    }
}
```

> Tip: `.realtime` delivers logs inline, but your handler must be fast to avoid blocking RecordKit. `.nonblocking` (the default) delivers logs on a background thread, so your handler won't block RecordKit even if it's slow.

For per-category log levels, see ``RKLogger/setLogLevel(_:category:)``.

## Error Handling

RecordKit errors are designed to be shown directly to users. Every error includes:

- A **user-friendly message** that explains what went wrong, safe to display in your UI.
- A **technical description** with details useful for logging and troubleshooting.

```swift
do {
    try await recorder.start()
} catch {
    // User-friendly message, e.g. "Can't record 'Cinema Display' because it is not connected anymore."
    showAlert(message: error.localizedDescription)

    // Technical details, e.g. "displayUnavailable - RKDisplay 12345 has availability: notConnected"
    logger.error("Recording failed: \((error as NSError).debugDescription)")
}
```

For all error codes, see ``RKError``.

## Topics

### Related Symbols

- ``RKLogger``
- ``RKLogLevel``
- ``RKError``
