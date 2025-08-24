import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final otpControllers = List.generate(4, (index) => TextEditingController());
    final focusNodes = List.generate(4, (index) => FocusNode());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
              ),
              Gap(20.h),

              // Title
              Text(
                "Verification",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(10.h),

              // Subtitle
              Text(
                "We’ve sent you the verification code on +1 2620 0323 7631",
                style: TextStyle(fontSize: 14.sp, color: Colors.black54),
              ),
              Gap(30.h),

              // OTP Boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                      (index) => SizedBox(
                    width: 60.w,
                    child: TextFormField(
                      controller: otpControllers[index],
                      focusNode: focusNodes[index],
                      autofocus: index == 0,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      textInputAction: index < 3
                          ? TextInputAction.next
                          : TextInputAction.done,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty && index < 3) {
                          FocusScope.of(context)
                              .requestFocus(focusNodes[index + 1]);
                        }
                      },
                      decoration: InputDecoration(
                        counterText: "", // removes length counter
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                              color: Colors.grey.shade300, width: 1.w),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide:
                          BorderSide(color: Colors.blue, width: 1.5.w),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Gap(30.h),

              // Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  onPressed: () {
                    final otp = otpControllers.map((e) => e.text).join();
                    debugPrint("OTP Entered: $otp");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "CONTINUE",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      Gap(8.w),
                      const Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
              Gap(20.h),

              // Resend text
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "Re-send code in ",
                    style: TextStyle(fontSize: 14.sp, color: Colors.black54),
                    children: [
                      TextSpan(
                        text: "0:20",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
