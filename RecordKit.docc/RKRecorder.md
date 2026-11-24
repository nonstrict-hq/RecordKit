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

### Recovering interrupted recordings

- <doc:CrashRecovery>
- ``recoverBundles()``
- ``recoverBundles(in:)``
- ``interruptedRecordings()``
- ``interruptedRecordings(in:)``
- ``RKInterruptedRecording``

### Reacting to problems during a recording

- ``setSignalsHandler(_:)``
- ``SignalsHandler``
- ``SignalAction``
- ``Signal``
