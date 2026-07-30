# ``RecordKit/RKRecorder``

## Topics

### Creating a recorder

- ``init(_:outputDirectory:settings:onAbort:)``
- ``init(_:outputDirectory:settings:onAbort:onSignalsChanged:)``
- ``setAbortHander(_:)``

### Managing recordings

- ``prepare()``
- ``start()``
- ``stop()``
- ``pause()``
- ``resume()``

### Reacting to problems during a recording

- ``setSignalsHandler(_:)``
- ``SignalsHandler``
- ``Signal``
