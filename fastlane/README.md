fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

### build_all

```sh
[bundle exec] fastlane build_all
```

Build both Android and iOS applications, upload to Firebase App Distribution and send notification to chatops channel

### build_application_android

```sh
[bundle exec] fastlane build_application_android
```

Build APK or AAB

### build_application_ios

```sh
[bundle exec] fastlane build_application_ios
```

Build IPA

----


## Android

### android build_android

```sh
[bundle exec] fastlane android build_android
```

Build ứng dụng Android

----


## iOS

### ios build_ios

```sh
[bundle exec] fastlane ios build_ios
```

Build ứng dụng iOS

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
