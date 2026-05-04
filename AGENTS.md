# AGENTS.md

RecordKit ships docs locally in two places:

**Articles & guides** — markdown in the package checkout:
`RecordKit.docc/*.md`

**Symbol docs** — `///` comments are in the binary `.swiftdoc` files in the framework. Extract with `strings`:
`strings <framework>/Modules/RecordKit.swiftmodule/arm64-apple-macos.swiftdoc`

For signatures (without comments), grep the matching `.swiftinterface` in the same directory.

Typical lookup: grep articles for the topic, then swiftdoc for per-symbol prose.
