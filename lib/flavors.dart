enum Flavor {
  DEV,
  PROD,
}

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'KodingWorks Dev';
      case Flavor.PROD:
        return 'KodingWorks Prod';
      default:
        return 'title';
    }
  }

}
