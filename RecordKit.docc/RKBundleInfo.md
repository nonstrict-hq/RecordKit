# ``RecordKit/RKBundleInfo``

## Overview

`RKBundleInfo` describes the files of a finished recording bundle, and is also written into the bundle as
`recordkit.json`.

A bundle recovered after its recording was interrupted, for example by a crash, or repaired after ``RKRecorder/stop()``
threw, has ``recovered`` set to `true`, and its ``duration`` is that of its longest media file: its files can end at
different points.

## Topics

### Output types

- ``RKInputEvent``
- ``RKInputModifier``
- ``RKInputModifiersChangedEvent``
- ``RKMouseEvent``
- ``RKMouseEventType``
- ``RKMouseButton``
- ``RKCursorType``
- ``RKKeyboardEvent``
- ``RKKeyboardEventType``
- ``RKKeyboardKeyType``
- ``RKDiscontinuationEvent``
- ``RKVideoDimensionChange``
- ``RKTime``
- ``RKColorSpace``
- ``RKVideoCodec``
- ``RKWindowPresence``
- ``RKWindowInfo``
- ``RKWindowAbsence``
