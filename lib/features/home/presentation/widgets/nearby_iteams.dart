import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class NearbyItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const NearbyItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 10.r,
            offset: const Offset(0, 6),
          )
        ],
      ),
      padding: EdgeInsets.all(14.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 38.w,
            height: 38.w,
            decoration: BoxDecoration(
              color: const Color(0xFFEFF3FF),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(icon, size: 22.r, color: const Color(0xFF6E49FF)),
          ),
          Gap(10.h),
          Text(title,
              style: TextStyle(
                fontSize: 13.r,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF2D2F39),
              )),
          Gap(4.h),
          Text(subtitle,
              style: TextStyle(fontSize: 11.r, color: const Color(0xFF8C909A))),
        ],
      ),
    );
  }
}
