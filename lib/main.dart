import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/app_route/route_config.dart';
import 'flavors/app.dart';
import 'flavors/flavors.dart';

void main() {
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  runApp(ProviderScope(child: App(router: appRoute)));
}
