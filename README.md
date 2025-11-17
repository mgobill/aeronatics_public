# Aeronatics marketing site

This repo now hosts the Aeronatics marketing/landing page that is built with Flutter Web. The home screen highlights the new iOS launch and teases upcoming platforms.

## Local development

```bash
flutter run -d chrome
```

Run `flutter test` or `flutter analyze` to keep the landing page healthy before pushing changes.

## Official store badges

The official Apple and Google SVG badges now live under `assets/branding/` and are loaded via `SvgPicture.asset` in `StoreBadge`. If you ever need a localized variant, grab it from the official resources below and drop it into the same folder before updating `pubspec.yaml`:

1. **App Store:** [Marketing Resources and Identity Guidelines](https://developer.apple.com/app-store/marketing/guidelines/#downloadOnTheAppStore)
2. **Google Play:** [Get it on Google Play badge generator](https://play.google.com/intl/en_us/badges/)

Apple and Google both require that the artwork is not modified, links directly to the respective listing, and has adequate clear space. The current implementation follows those rules by rendering their untouched SVG files.
