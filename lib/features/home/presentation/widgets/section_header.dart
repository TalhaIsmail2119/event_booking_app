import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const SectionHeader({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: TextStyle(
              fontSize: 16.r,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF2D2F39),
            )),
        const Spacer(),
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8.r),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("See All",
                  style: TextStyle(
                      fontSize: 12.r,
                      color: const Color(0xFF6E49FF),
                      fontWeight: FontWeight.w600)),
              const Icon(Icons.chevron_right, color: Color(0xFF6E49FF), size: 18),
            ],
          ),
        )
      ],
    );
  }
}
