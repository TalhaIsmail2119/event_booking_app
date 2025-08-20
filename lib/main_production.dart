import 'package:flutter/material.dart';
import 'flavors/app.dart';
import 'flavors/flavors.dart';

void main() {
  F.appFlavor = Flavor.prod;
  runApp(const App());
}
