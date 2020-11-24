part of 'config.dart';

enum Flavor {
  // ignore: constant_identifier_names
  PROD,
  // ignore: constant_identifier_names
  DEV,
  // ignore: constant_identifier_names
  STAGGING,
}

class F {
  F._();
  static Flavor appFlavor;

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'https://example.com/v1';
      case Flavor.STAGGING:
        return 'https://example.com/v1-stagging';
      case Flavor.DEV:
        return 'https://example.com/v1-dev';

      default:
        return 'https://example.com/v1-dev';
    }
  }
}
