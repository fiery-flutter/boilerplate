enum Flavor {
  DEV,
  PROD,
}

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'Boilerplate Dev';
      case Flavor.PROD:
        return 'Boilerplate Prod';
      default:
        return 'title';
    }
  }

}
