// import 'package:flutter/material.dart';
// import 'config/app_route/route_config.dart';
// import 'flavors/app.dart';
// import 'flavors/flavors.dart';
//
// void main() {
//   F.appFlavor = Flavor.dev;
//   runApp(ProviderScope(child: App(router: appRoute)));
// }


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/app_route/route_config.dart';
import 'flavors/app.dart';
import 'flavors/flavors.dart';

void main() {
  F.appFlavor = Flavor.dev;
  runApp(
    ProviderScope(
      child: App(router: appRoute),
    ),
  );
}