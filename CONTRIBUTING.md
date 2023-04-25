Feeel is conceived as a community project.

Here's how you can get involved:

Write exercise descriptions
=====
Exercises are now contributed via **[the wger website](https://wger.de/en/exercise/overview/)**, another open-source community project.

To cut back on spam, contributing via wger currently requires an account older than 21 days. [Create an account now](https://wger.de/en-gb/user/registration) so that you can start contributing later!

Take exercise photos
======
Exercise photos are sorely needed. Take a look at wger's [list of exercises](https://wger.de/en/exercise/overview) and take photos of those that don't have any.

The photos you submit **must be your own work** (copyright belongs only to you).

Unfortunately, wger currently does not support adding license information for photos. Please send your contributions along with the necessary license info to this e-mail: ![contribution email](https://gitlab.com/enjoyingfoss/feeel/-/wikis/uploads/cf757eceb7db13b395bed6516ad4b4b9/Artboard12.png).

Process exercise photos
======
You can take CC0, CC BY, or CC BY-SA photos and turn them into low-poly versions using the [FOSStriangulator app](https://github.com/FOSStriangulator/FOSStriangulator).

See **[this tutorial](https://gitlab.com/enjoyingfoss/feeel/-/wikis/Processing-photos)** for a guide on how to triangulate.

Note that license of the source photo is extremely important here! Your contribution won't be accepted if it's based on a photo that isn't CC BY-SA-compatible. If in doubt, start with a photo you took yourself.

Send your contributions along with the necessary license info to this e-mail: ![contribution email](https://gitlab.com/enjoyingfoss/feeel/-/wikis/uploads/cf757eceb7db13b395bed6516ad4b4b9/Artboard12.png).

Develop
=======
You'll need to set up Flutter on your device ([Linux](https://docs.flutter.dev/get-started/install/linux#install-flutter-manually), [macOS](https://docs.flutter.dev/get-started/install/macos), or [Windows](https://docs.flutter.dev/get-started/install/windows)) to work on Feeel. If you're developing for Linux, you'll also need to [install the prerequisites for the audio library Feeel uses](https://github.com/bluefireteam/audioplayers/blob/main/packages/audioplayers_linux/requirements.md).

Before running the app for the first time, you'll need to run the build runner and generate the localizations:
```
flutter pub run build_runner build --delete-conflicting-outputs
flutter gen-l10n
```

Once you're all set up, find a development issue on [Gitlab](https://gitlab.com/enjoyingfoss/feeel/-/issues) and start working on it.

Need help getting around the code? Get help from the community on [Matrix](https://matrix.to/#/!jFShhgWHRXehKXrToU:matrix.org?via=matrix.org).

As a sidenote, you might want to disable Google's analytics built into Flutter:

```
flutter config --no-analytics
dart --disable-analytics
```

Translate
=========
Know a foreign language?

You can translate:
* The app's UI through [Weblate](https://hosted.weblate.org/projects/feeel/strings/)
* Individual exercises via [wger](https://wger.de/en-gb/exercise/overview/). You'll need an account older than 21 days ([register here](https://wger.de/en-gb/user/registration) and simply wait). To translate, use the language menu on an exercise's detail page.

Spread the word
===============
Have a social media account? Or a blog? Give Feeel a mention!

Rate and review the app
=======================
Here is a [list of sites where you can rate or review Feeel](https://gitlab.com/enjoyingfoss/feeel/-/wikis/App-rating-and-reviews).

Donate
======
Donations are much appreciated, as they allow me to be able to devote more time to the app.

You can donate via [Liberapay](https://liberapay.com/Feeel/).

Reach out to us
===============

ANYONE can contribute, no special skills required. Message me on the [Feeel channel on Matrix](https://matrix.to/#/!jFShhgWHRXehKXrToU:matrix.org?via=matrix.org) if you'd like to help.
