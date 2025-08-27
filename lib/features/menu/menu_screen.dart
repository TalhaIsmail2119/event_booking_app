import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                  Gap(12.w),
                  Text(
                    "Ashfak Sayem",
                    style: TextStyle(
                      fontSize: 16.r,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Gap(30.h),
              _buildMenuItem(Icons.person, "My Profile"),
              _buildMenuItem(Icons.message, "Message"),
              _buildMenuItem(Icons.calendar_today, "Calendar"),
              _buildMenuItem(Icons.bookmark, "Bookmark"),
              _buildMenuItem(Icons.contact_mail, "Contact Us"),
              _buildMenuItem(Icons.settings, "Settings"),
              _buildMenuItem(Icons.help_outline, "Helps & FAQs"),
              _buildMenuItem(Icons.logout, "Sign Out"),
              const Spacer(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 14.h),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                  child: Text(
                    "Upgrade Pro",
                    style: TextStyle(
                      fontSize: 14.r,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Icon(icon, size: 22.r, color: Colors.black54),
          Gap(12.w),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.r,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
