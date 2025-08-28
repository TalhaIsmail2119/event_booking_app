import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';


class InviteCard extends StatelessWidget {
  const InviteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xFFE6FBFF), // light blue background
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          /// Left side texts + button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Invite your friends",
                  style: TextStyle(
                    fontSize: 16.r,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1C1C1C), // dark text
                  ),
                ),
                Gap(6.h),
                Text(
                  "Get \$20 for ticket",
                  style: TextStyle(
                    fontSize: 13.r,
                    color: const Color(0xFF6F6F6F), // gray text
                  ),
                ),
                Gap(12.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00E0FF), // cyan button
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.w,
                      vertical: 8.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    "INVITE",
                    style: TextStyle(
                      fontSize: 13.r,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// Right side image
          Image.asset(
            "assets/images/invite_image.png",
            width: 170.w,
            height: 100.h,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}





// class InviteCard extends StatelessWidget {
//   const InviteCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: const Color(0xFFE5F6FF),
//         borderRadius: BorderRadius.circular(18.r),
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Invite your friends",
//                     style: TextStyle(
//                         fontSize: 14.r,
//                         color: const Color(0xFF2D2F39),
//                         fontWeight: FontWeight.w700)),
//                 Gap(6.h),
//                 Text("Get \$20 for ticket",
//                     style: TextStyle(
//                         fontSize: 12.r, color: const Color(0xFF2EA4FF))),
//                 Gap(12.h),
//                 SizedBox(
//                   height: 34.h,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF2EA4FF),
//                       elevation: 0,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20.r),
//                       ),
//                     ),
//                     child: Text("INVITE",
//                         style: TextStyle(
//                             fontSize: 12.r,
//                             fontWeight: FontWeight.w700,
//                             color: Colors.white)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Gap(10.w),
//           Image.asset(
//             "assets/images/invite.png",
//             width: 90.w,
//             height: 80.h,
//             fit: BoxFit.contain,
//           ),
//         ],
//       ),
//     );
//   }
// }
