# ``RecordKit/RKAuthorization``

Some resources require user authorization to be accessed. For example, the user must allow an app access to the camera, before it can record the camera.

If you access a resource for the first time, macOS will automatically prompt the user for access.
If you want better control over the user experience, you can first check if the user has access, if not explicitly show the request prompt.

Some requests return a value indicating if the user clicked _Allow_ or _Deny_, other requests are fire-and-forget.
These fire-and-forget requests just show a prompt to the user, but don't return a result. The app first needs to be restarted before it gets access to the resource.

## Topics


### Checking for authorization

- ``camera``
- ``microphone``
- ``screenRecording``
- ``systemAudioRecording``
- ``systemAudioRecording(backend:)``
- ``inputMonitoring``
- ``accessibilityControl``


### Requesting authorization

- ``requestCameraAccess()``
- ``requestMicrophoneAccess()``
- ``requestScreenRecording()``
- ``requestSystemAudioRecording()``
- ``requestSystemAudioRecording(backend:)``
- ``requestInputMonitoring()``
- ``requestAccessibilityControl()``
