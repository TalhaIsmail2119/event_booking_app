import 'package:event_booking_app/config/app_route/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../domain/home_models.dart';

// class HomeHeader extends StatelessWidget {
//   final AsyncValue<List<CategoryModel>> categories;
//   const HomeHeader({super.key, required this.categories});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         // ==== Header Section ====
//         const Header(),
//
//         // ==== Category Chips Floating ====
//         Positioned(
//           bottom: -28.h, // half over blue, half over white
//           left: 0,
//           right: 0,
//           child: categories.when(
//             data: (cats) => SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               padding: EdgeInsets.symmetric(horizontal: 16.w),
//               child: Row(
//                 children: [
//                   for (final c in cats)
//                     Row(
//                       children: [
//                         CategoryChip(
//                           text: c.name,
//                           icon: _mapIcon(c.icon),   // use icon field
//                           color: Color(c.colorHex), // use colorHex field
//                         ),
//                         Gap(8.w),
//                       ],
//                     ),
//                 ],
//               ),
//             ),
//             loading: () => const SizedBox(),
//             error: (_, __) => const SizedBox(),
//           ),
//         ),
//       ],
//     );
//   }
//
//   /// Maps backend "icon" string → Flutter IconData
//   IconData _mapIcon(String iconName) {
//     switch (iconName.toLowerCase()) {
//       case "sports":
//         return Icons.sports_basketball;
//       case "music":
//         return Icons.music_note;
//       case "food":
//         return Icons.restaurant;
//       case "travel":
//         return Icons.flight_takeoff;
//       case "party":
//         return Icons.celebration;
//       default:
//         return Icons.category; // fallback
//     }
//   }
// }



class CategoryChip extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const CategoryChip({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 16.r),
          Gap(6.w),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13.r,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

}


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipPath(
          clipper: _BottomCurveClipper(),
          child: Container(
            height: 210.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF6E49FF), Color(0xFF2EA4FF)],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 0),
            child: Column(
              children: [
                // ==== Top bar ====
                Row(
                  children: [
                    _SoftIconButton(
                      icon: Icons.menu,
                      //: () => Scaffold.of(context).openDrawer(),
                      onTap: () => context.go(AppRoutes.menu),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(
                            color: Colors.white.withOpacity(.85),
                            fontSize: 11.r,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_on,
                                color: Colors.white, size: 16),
                            Text(
                              "New York, USA",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.r,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down,
                                color: Colors.white, size: 16),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 6.h),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.15),
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(
                          color: Colors.white.withOpacity(.35),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.tune,
                              size: 16, color: Colors.white),
                          Gap(6.w),
                          Text(
                            "Filters",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.r,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Gap(16.h),

                // ==== Search bar ====
                Container(
                  height: 46.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Color(0xFF7A7D87)),
                      Gap(8.w),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search...",
                            hintStyle: TextStyle(
                              color: const Color(0xFFB4B7C2),
                              fontSize: 13.r,
                            ),
                            isCollapsed: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final p = Path();
    p.lineTo(0, size.height - 50.r);
    p.quadraticBezierTo(
      size.width * 0.5, size.height,
      size.width, size.height - 50.r,
    );
    p.lineTo(size.width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class _SoftIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _SoftIconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        width: 38.w,
        height: 38.w,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.15),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.white.withOpacity(.35)),
        ),
        child: Icon(icon, color: Colors.white, size: 20.r),
      ),
    );
  }
}
