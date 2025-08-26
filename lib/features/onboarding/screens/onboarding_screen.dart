import 'package:event_booking_app/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../config/app_route/app_routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<_OnboardData> data = [
    _OnboardData(
      image: "assets/images/onboarding_one.png",
      title: "Explore Upcoming and\n Nearby Events",
      description:
          "In publishing and graphic design, Lorem is a placeholder text commonly",
    ),
    _OnboardData(
      image: "assets/images/two.png",
      title: "Web Have Modern Events Calendar Feature",
      description:
          "In publishing and graphic design, Lorem is a placeholder text commonly",
    ),
    _OnboardData(
      image: "assets/images/onboarding_three.png",
      title: "To Look Up More Events or Activities Nearby By Map",
      description:
          "In publishing and graphic design, Lorem is a placeholder text commonly",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: data.length,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 60.h),
                        child: Image.asset(
                          data[index].image,
                          height: 538.5.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      height: 288.h,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 30.h,
                      ),
                      decoration: BoxDecoration(
                        color: context.colors.primary,

                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Gap(35.h),
                          Text(
                            data[index].title,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18.r,
                              color: context.colors.textSecondary,
                              fontWeight: FontWeight.bold,
                              height: 1.3, // controls spacing between lines
                            ),
                          ),
                          Gap(16.h),
                          Text(
                            data[index].description,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14.r,
                              color: context.colors?.textSecondary.withOpacity(
                                0.8,
                              ),
                              height: 1.4,
                            ),
                          ),

                          Gap(43.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  // Skip action
                                },
                                child: Text(
                                  "Skip",
                                  style: TextStyle(
                                    color: context.colors?.buttonText,
                                    fontSize: 14.r,
                                  ),
                                ),
                              ),
                              Row(
                                children: List.generate(
                                  data.length,
                                  (dotIndex) => Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 4.w,
                                    ),
                                    width: _currentIndex == dotIndex
                                        ? 12.w
                                        : 8.w,
                                    height: _currentIndex == dotIndex
                                        ? 12.w
                                        : 8.w,
                                    decoration: BoxDecoration(
                                      color: _currentIndex == dotIndex
                                          ? Colors.white
                                          : Colors.white54,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  if (_currentIndex == data.length - 1) {
                                    context.go(AppRoutes.signIn);
                                  } else {
                                    _controller.nextPage(
                                      duration: const Duration(
                                        milliseconds: 300,
                                      ),
                                      curve: Curves.easeInOut,
                                    );
                                  }
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                    color: context.colors?.buttonText,
                                    fontSize: 14.r,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },

              // itemBuilder: (context, index) {
              //   return Column(
              //     children: [
              //       SizedBox(height: 60.h),
              //       Image.network(
              //         data[index].image,
              //         height: 400.h,
              //         fit: BoxFit.contain,
              //       ),
              //       const Spacer(),
              //       Container(
              //         width: double.infinity,
              //         padding: EdgeInsets.symmetric(
              //           horizontal: 20.w,
              //           vertical: 30.h,
              //         ),
              //         decoration: BoxDecoration(
              //           color: Colors.blueAccent,
              //           borderRadius: BorderRadius.only(
              //             topLeft: Radius.circular(30.r),
              //             topRight: Radius.circular(30.r),
              //           ),
              //         ),
              //         child: Column(
              //           children: [
              //             Text(
              //               data[index].title,
              //               textAlign: TextAlign.center,
              //               style: TextStyle(
              //                 fontSize: 18.sp,
              //                 color: Colors.white,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             SizedBox(height: 10.h),
              //             Text(
              //               data[index].description,
              //               textAlign: TextAlign.center,
              //               style: TextStyle(
              //                 fontSize: 14.sp,
              //                 color: Colors.white.withOpacity(0.8),
              //               ),
              //             ),
              //             SizedBox(height: 20.h),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 TextButton(
              //                   onPressed: () {
              //                     // Skip action
              //                   },
              //                   child: Text(
              //                     "Skip",
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 14.sp,
              //                     ),
              //                   ),
              //                 ),
              //                 Row(
              //                   children: List.generate(
              //                     data.length,
              //                         (dotIndex) => Container(
              //                       margin:
              //                       EdgeInsets.symmetric(horizontal: 4.w),
              //                       width: _currentIndex == dotIndex ? 12.w : 8.w,
              //                       height:
              //                       _currentIndex == dotIndex ? 12.w : 8.w,
              //                       decoration: BoxDecoration(
              //                         color: _currentIndex == dotIndex
              //                             ? Colors.white
              //                             : Colors.white54,
              //                         shape: BoxShape.circle,
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //                 TextButton(
              //                   onPressed: () {
              //                     if (_currentIndex == data.length - 1) {
              //                       context.go(AppRoutes.signIn);
              //                     } else {
              //                       _controller.nextPage(
              //                         duration: const Duration(milliseconds: 300),
              //                         curve: Curves.easeInOut,
              //                       );
              //                     }
              //                   },
              //                   child: Text(
              //                     "Next",
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 14.sp,
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             )
              //           ],
              //         ),
              //       ),
              //     ],
              //   );
              // },
            ),
          ),
        ],
      ),
    );
  }
}

class _OnboardData {
  final String image;
  final String title;
  final String description;

  _OnboardData({
    required this.image,
    required this.title,
    required this.description,
  });
}
