import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../config/app_route/app_routes.dart';
import '../../shared/widgets/text_field/custom_text_form_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  final TextEditingController emailCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                "Reset Password",
                style: TextStyle(
                  fontSize: 22.r,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(10.h),

              // Subtitle
              Text(
                "Please enter your email address to request a password reset",
                style: TextStyle(fontSize: 14.r, color: Colors.black54),
              ),
              Gap(30.h),

              // Email Field (Custom)
              CustomTextFormField(
                hintText: "abc@email.com",
                prefixIcon: Icons.email_outlined,
                controller: emailCtrl,
              ),
              Gap(30.h),

              // Send Button
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
                    context.go(AppRoutes.varification);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SEND",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      Gap(8.w),
                      Icon(Icons.arrow_forward),
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