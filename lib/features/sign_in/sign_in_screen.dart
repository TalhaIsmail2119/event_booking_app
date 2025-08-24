import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../config/app_route/app_routes.dart';
import '../../shared/widgets/text_field/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(40.h),
              // Logo
              Icon(Icons.event, size: 60.r, color: Colors.blue),
              Gap(8.h),
              Text(
                "EventHub",
                style: TextStyle(
                  fontSize: 24.r,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Gap(30.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Gap(20.h),

              // Email
              CustomTextFormField(
                hintText: "abc@email.com",
                prefixIcon: Icons.email_outlined,
                controller: emailCtrl,
              ),
              Gap(16.h),
              // Password
              CustomTextFormField(
                hintText: "Your password",
                prefixIcon: Icons.lock_outline,
                obscureText: true,
                controller: passwordCtrl,
              ),
              Gap(10.h),

              // Remember Me + Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (val) {}),
                      Text("Remember Me", style: TextStyle(fontSize: 12.r)),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      context.go(AppRoutes.resetPassword);
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 12.r),
                    ),
                  ),
                ],
              ),

              Gap(20.h),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  onPressed: () {
                    context.go(AppRoutes.home);
                  },
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.r,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              Gap(20.h),

              Text("OR", style: TextStyle(fontSize: 14.r)),
              Gap(20.h),

              // Social Buttons
              _socialButton(
                "Login with Google",
                Colors.red,
                Icons.g_mobiledata,
              ),
              Gap(12.h),
              _socialButton("Login with Facebook", Colors.blue, Icons.facebook),

              Gap(30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(fontSize: 12.r),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go(AppRoutes.signUp);
                    },
                    child: Text("Sign up"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialButton(String text, Color color, IconData icon) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 22.r),
          Gap(10.w),
          Text(text, style: TextStyle(fontSize: 14.r)),
        ],
      ),
    );
  }
}
