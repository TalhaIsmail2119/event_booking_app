import 'package:event_booking_app/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/themes/app_themes.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/widgets/bottom_nav/custom_bottom_navbar.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: SidebarMenu(),
      extendBody: true,
      body: navigationShell,
      bottomNavigationBar: CustomBottomNavBar(
        index: navigationShell.currentIndex,
        onTap: navigationShell.goBranch,
      ),
       // Bottom Nav Section
      // bottomNavigationBar: Container(
      //   height: 70.h,
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black12,
      //         blurRadius: 8,
      //         offset: Offset(0, -2),
      //       ),
      //     ],
      //   ),
      //   child: Stack(
      //     clipBehavior: Clip.none,
      //     children: [
      //       // Nav items
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           _buildNavItem(
      //             context,
      //             icon: Icons.explore,
      //             label: "Explore",
      //             index: 0,
      //           ),
      //           _buildNavItem(
      //             context,
      //             icon: Icons.event,
      //             label: "Events",
      //             index: 1,
      //           ),
      //           SizedBox(width: 50.w), // space for center button
      //           _buildNavItem(
      //             context,
      //             icon: Icons.map,
      //             label: "Map",
      //             index: 2,
      //           ),
      //           _buildNavItem(
      //             context,
      //             icon: Icons.person,
      //             label: "Profile",
      //             index: 3,
      //           ),
      //         ],
      //       ),
      //
      //       // Floating Center Button
      //       Positioned.fill(
      //         top: -25,
      //         child: Align(
      //           alignment: Alignment.topCenter,
      //           child: GestureDetector(
      //             onTap: () {
      //               //context.push(AppRoutes.addSomething); // your route here
      //             },
      //             child: Container(
      //               height: 60,
      //               width: 60,
      //               decoration: BoxDecoration(
      //                 color: context.colors.buttonBackground,
      //                 shape: BoxShape.circle,
      //                 boxShadow: [
      //                   BoxShadow(
      //                     color: Colors.black26,
      //                     blurRadius: 6,
      //                   ),
      //                 ],
      //               ),
      //               child: const Icon(
      //                 Icons.add,
      //                 color: Colors.white,
      //                 size: 30,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  // Widget _buildNavItem(BuildContext context,
  //     {required IconData icon, required String label, required int index}) {
  //   final bool isActive = navigationShell.currentIndex == index;
  //   return GestureDetector(
  //     onTap: () => navigationShell.goBranch(index),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Icon(
  //           icon,
  //           color: isActive ? context.colors.iconPrimary : Colors.grey,
  //         ),
  //         Text(
  //           label,
  //           style: TextStyle(
  //             fontSize: 12.sp,
  //             color: isActive ? context.colors.textPrimary : Colors.grey,
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}




