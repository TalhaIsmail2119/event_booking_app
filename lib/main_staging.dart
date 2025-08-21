import 'package:flutter/material.dart';
import 'config/app_route/route_config.dart';
import 'flavors/app.dart';
import 'flavors/flavors.dart';

void main() {
  F.appFlavor = Flavor.staging;
  runApp(App(router: appRoute));
}
