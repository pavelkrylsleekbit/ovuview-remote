# ovuview-remote
Android library project for integrating with OvuView Android app.

https://play.google.com/store/apps/details?id=com.sleekbit.ovuview

OvuView exposes an AIDL file and is accessible as a bound service:
https://developer.android.com/guide/components/bound-services

If you are not interested in the source code and just want to use the released/built version,
just set up the dependency in your build.gradle:

compile 'com.sleekbit.ovuview.remote:ovuview-remote:0.1'

A sample application utilizing this library can be found at
https://github.com/pavelkrylsleekbit/ovuview-client-app
