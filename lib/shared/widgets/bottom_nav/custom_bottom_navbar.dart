import 'package:event_booking_app/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/themes/app_themes.dart';
import 'package:go_router/go_router.dart';


class CustomBottomNavBar extends StatelessWidget {
  final int index;
  final void Function(int) onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(context, Icons.explore, "Explore", 0),
              _buildNavItem(context, Icons.event, "Events", 1),
              SizedBox(width: 50.w), // space for center button
              _buildNavItem(context, Icons.map, "Map", 2),
              _buildNavItem(context, Icons.person, "Profile", 3),
            ],
          ),

          // Floating Center Button
          Positioned.fill(
            top: -25,
            child: Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () => onTap(4), // treat as a branch
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    //color: context.colors.buttonBackground,
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, IconData icon, String label, int itemIndex) {
    final bool isSelected = index == itemIndex;

    return GestureDetector(
      onTap: () => onTap(itemIndex),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         // Icon(icon, color: isSelected ? context.colors.iconPrimary : Colors.grey),
          Icon(icon, color: isSelected ?  Colors.blue : Colors.grey),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.blue: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
