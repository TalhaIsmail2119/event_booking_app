import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class InviteCard extends StatelessWidget {
  const InviteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: const Color(0xFFE5F6FF),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Invite your friends",
                    style: TextStyle(
                        fontSize: 14.r,
                        color: const Color(0xFF2D2F39),
                        fontWeight: FontWeight.w700)),
                Gap(6.h),
                Text("Get \$20 for ticket",
                    style: TextStyle(
                        fontSize: 12.r, color: const Color(0xFF2EA4FF))),
                Gap(12.h),
                SizedBox(
                  height: 34.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2EA4FF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    child: Text("INVITE",
                        style: TextStyle(
                            fontSize: 12.r,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          Gap(10.w),
          Image.asset(
            "assets/images/invite.png",
            width: 90.w,
            height: 80.h,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
