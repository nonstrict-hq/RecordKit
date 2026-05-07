# AGENTS.md

Before writing RecordKit code, read the relevant guide first. RecordKit ships docs locally with the package.

## Articles & guides

Markdown lives in `RecordKit.docc/`. Always start with these two:

- `RecordKit.docc/ProjectSetup.md` — Info.plist keys and entitlements required for each recording source. Read this before any task that touches a new source type.
- `RecordKit.docc/FirstRecording.md` — the four-step shape of a recording (configure, authorize, discover, record). Read this before writing your first recorder call.

Other guides in the same folder cover specific topics (system audio, Apple device recording, output formats, echo cancellation, logging & errors). `ls RecordKit.docc/` to see what's available, or grep the folder for your topic.

## Symbol docs

`///` comments live in the binary `.swiftdoc` files in the framework. Extract with `strings`:
`strings <framework>/Modules/RecordKit.swiftmodule/arm64-apple-macos.swiftdoc`

For signatures (without comments), grep the matching `.swiftinterface` in the same directory.

Typical lookup: read the relevant article, then swiftdoc for per-symbol prose.
