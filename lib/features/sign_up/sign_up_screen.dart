import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../config/app_route/app_routes.dart';
import '../../shared/widgets/text_field/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController confirmPasswordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10.h),
              InkWell(
                onTap: () => context.go(AppRoutes.signIn),
                child: const Icon(Icons.arrow_back),
              ),

              Gap(10.h),
              Text(
                "Sign up",
                style: TextStyle(fontSize: 22.r, fontWeight: FontWeight.bold),
              ),

              Gap(20.h),
              CustomTextFormField(
                hintText: "Full name",
                prefixIcon: Icons.person_outline,
                controller: nameCtrl,
              ),
              Gap(16.h),
              CustomTextFormField(
                hintText: "abc@email.com",
                prefixIcon: Icons.email_outlined,
                controller: emailCtrl,
              ),
              Gap(16.h),
              CustomTextFormField(
                hintText: "Your password",
                prefixIcon: Icons.lock_outline,
                obscureText: true,
                controller: passwordCtrl,
              ),
              Gap(16.h),
              CustomTextFormField(
                hintText: "Confirm password",
                prefixIcon: Icons.lock_outline,
                obscureText: true,
                controller: confirmPasswordCtrl,
              ),
              Gap(20.h),

              // Sign Up Button
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
                  onPressed: () {},
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.r,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              Gap(20.h),
              Center(
                child: Text("OR", style: TextStyle(fontSize: 14.r)),
              ),
              Gap(20.h),

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
                    "Already have an account?",
                    style: TextStyle(fontSize: 12.r),
                  ),
                  TextButton(onPressed: () {
                    context.go(AppRoutes.signIn);
                  }, child: Text("Sign in")),
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
