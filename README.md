# Flutter Boilerplate (WIP)

[![Actions Status](https://github.com/wisnuwiry/boilerplate/workflows/build/badge.svg)](https://github.com/wisnuwiry/boilerplate/actions)
[![CodeCov](https://codecov.io/gh/wisnuwiry/boilerplate/branch/master/graph/badge.svg)](https://github.com/wisnuwiry/boilerplate)
[![Star On Github](https://img.shields.io/github/stars/wisnuwiry/boilerplate.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/wisnuwiry/boilerplate)
[![Flutter Website](https://img.shields.io/badge/flutter-website-deepskyblue.svg)](https://github.com/wisnuwiry/boilerplate)
[![License  MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://github.com/wisnuwiry/boilerplate)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)

### Requirement:

- Flutter SDK >= 1.17.5
- Extension Flutter_intL ([VS Code](https://marketplace.visualstudio.com/items?itemName=localizely.flutter-intl), [Intellij Platform](https://plugins.jetbrains.com/plugin/13666-flutter-intl))


## Simple Build & Setup
1. Clone this repo
2. cd name folder repo
3. Run `flutter pub get`
4. Run `flutter run` to debugging app

### Build to APK
- `flutter build apk --split-per-abi` (Splitting per type processor)
- `flutter build apk` (Build apk without split)
- `flutter build appbundle` (Build aab to release in playstore)

## References:

- [Flutter Bloc]((https://bloclibrary.dev/#/gettingstarted))
- [Atomic Design](https://atomicdesign.bradfrost.com/)
- [Flutter Icon](https://fluttericon.com)


## Use Dimens
Yang paling direkomendasikan menggunakan ukuran, dan space gunakanlah class `Dimens` ini.

Contoh penggunaan:

```dart
SizedBox(width: Dimens.dp8, height: Dimens.height(context)),
```

## Use Color
Jika ingin menggunakan color gunakan class `AppColors`. Berikut contoh penggunaan:

```dart
Container(
    color: AppColors.primaryColor
)
```

**Note:**
Cara diatas nggak efisien jika ingin panggil color misal text, disabledColor, dividerColor. Intinya boleh panggil color dengan cara tersebut, jika color benar-benar fixed/atau nggak perlu dirubah.  


> Jika color tersebut adalah bagian dari theme, misal primaryColor, disabledColor, accentColor, erroColor, dll. Gunakan cara berikut:

```dart
Container(
    color: Theme.of(context).primaryColor,
)
```

## Use Translate

Learn more.. https://marketplace.visualstudio.com/items?itemName=localizely.flutter-intl


## Generate launcher icon

```dart
flutter pub run flutter_launcher_icons:main
```

Config file launcher icon generator in `pubspec.yaml`

Example:

```yaml
flutter_icons:
  android: "ic_launcher"
  ios: true
  image_path_android: "launcher/ic_launcher.png"
  adaptive_icon_background: "#2DBD78"
  adaptive_icon_foreground: "launcher/ic_foreground.png"
  image_path_ios: "launcher/ic_launcher.png"
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
