import 'package:flutter/material.dart';
import '../../config/themes/app_themes.dart';

extension ThemeColors on BuildContext {
  CustomColors? get colors => Theme.of(this).extension<CustomColors>();
}


// extension ThemeColors on BuildContext {
//   CustomColors get colors {
//     final ext = Theme.of(this).extension<CustomColors>();
//     assert(ext != null, 'CustomColors is not found in ThemeData. Did you apply AppTheme.lightTheme/darkTheme?');
//     return ext ??
//         const CustomColors(
//           textPrimary: Colors.black,
//           textSecondary: Colors.grey,
//           textTertiary: Colors.grey,
//           iconPrimary: Colors.black,
//           iconSecondary: Colors.grey,
//           buttonBackground: Colors.blue,
//           buttonText: Colors.white,
//           navActive: Colors.blue,
//           navInactive: Colors.grey,
//           background: Colors.white,
//           scaffoldBackground: Colors.white,
//         );
//   }
// }
