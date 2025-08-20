enum Flavor {
  dev,
  staging,
  prod,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Event Booking App Dev';
      case Flavor.staging:
        return 'Event Booking App Staging';
      case Flavor.prod:
        return 'Event Booking App';
    }
  }

}
