

import 'package:event_booking_app/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/home_providers.dart';
import '../widgets/category_chips.dart';
import '../widgets/event_card.dart';
import '../widgets/header.dart' hide CategoryChip;
import '../widgets/invite_card.dart';
import '../widgets/nearby_iteams.dart';
import '../widgets/section_header.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventsProvider);
    final categories = ref.watch(categoriesProvider);
    final nearby = ref.watch(nearbyProvider);

    return Scaffold(
      backgroundColor: context.colors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
           // HomeHeader(categories: categories),
            //const Header(),

            // categories.when(
            //   data: (cats) => SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     padding: EdgeInsets.symmetric(horizontal: 16.w),
            //     child: Row(
            //       children: [
            //         for (final c in cats)
            //           Row(
            //             children: [
            //               CategoryChip(
            //                 text: c.name,
            //                 icon: _mapIcon(c.icon),
            //                 color: Color(c.colorHex),
            //               ),
            //               Gap(8.w),
            //             ],
            //           )
            //       ],
            //     ),
            //   ),
            //   loading: () => const SizedBox(),
            //   error: (_, __) => const SizedBox(),
            // ),

            // ==== Stack with Header & Floating Chips ====
            Stack(
              clipBehavior: Clip.none,
              children: [
                const Header(),

                // ---- Category Chips Floating ----
                Positioned(
                  bottom: 17.h, // push half outside header
                  left: 50.w,
                  right: 0,
                  child: categories.when(
                    data: (cats) => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        children: [
                          for (final c in cats)
                            Row(
                              children: [
                                CategoryChip(
                                  text: c.name,
                                  icon: _mapIcon(c.icon),
                                  color: Color(c.colorHex),
                                ),
                                Gap(8.w),
                              ],
                            ),
                        ],
                      ),
                    ),
                    loading: () => const SizedBox(),
                    error: (_, __) => const SizedBox(),
                  ),
                ),
              ],
            ),

           // Gap(20.h),

            // ==== Upcoming Events ====
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16.w),
            //   child: SectionHeader(title: "Upcoming Events", onTap: () {}),
            // ),
            // Gap(12.h),
            // events.when(
            //   data: (list) => SizedBox(
            //     height: 250.h,
            //     child: ListView.separated(
            //       padding: EdgeInsets.only(left: 16.w, right: 12.w),
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (c, i) => EventCard(
            //         image: list[i].image,
            //         title: list[i].title,
            //         location: list[i].location,
            //         dateDay: list[i].dateDay,
            //         dateMon: list[i].dateMonth,
            //         going: list[i].going,
            //       ),
            //       separatorBuilder: (_, __) => Gap(14.w),
            //       itemCount: list.length,
            //     ),
            //   ),
            //   loading: () => const SizedBox(),
            //   error: (_, __) => const SizedBox(),
            // ),

            // ==== Upcoming Events Section ====
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SectionHeader(
                title: "Upcoming Events",
                onTap: () {},
              ),
            ),
            Gap(12.h),
            events.when(
              data: (list) {
                if (list.isEmpty) {
                  return SizedBox(
                    height: 250.h,
                    child: Center(
                      child: Text(
                        "No upcoming events",
                        style: TextStyle(
                          fontSize: 14.r,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  );
                }

                return SizedBox(
                  height: 250.h, // vertical bound
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 16.w, right: 12.w),
                    itemCount: list.length,
                    itemBuilder: (context, i) => EventCard(
                      image: list[i].image,
                      title: list[i].title,
                      location: list[i].location,
                      dateDay: list[i].dateDay,
                      dateMon: list[i].dateMonth,
                      going: list[i].going,
                    ),
                    separatorBuilder: (_, __) => Gap(14.w),
                  ),
                );
              },
              loading: () => SizedBox(
                height: 250.h,
                child: const Center(child: CircularProgressIndicator()),
              ),
              error: (_, __) => SizedBox(
                height: 250.h,
                child: Center(
                  child: Text(
                    "Failed to load events",
                    style: TextStyle(
                      fontSize: 14.r,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
            Gap(20.h),

            // Gap(20.h),

            // ==== Invite card ====
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const InviteCard(),
            ),
            Gap(20.h),

            // ==== Nearby You ====
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SectionHeader(title: "Nearby You", onTap: () {}),
            ),
            Gap(12.h),
            nearby.when(
              data: (list) => SizedBox(
                height: 136.h,
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 16.w, right: 12.w),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (c, i) => NearbyItem(
                    title: list[i].title,
                    subtitle: list[i].subtitle,
                    icon: _mapIcon(list[i].icon),
                  ),
                  separatorBuilder: (_, __) => Gap(12.w),
                  itemCount: list.length,
                ),
              ),
              loading: () => const SizedBox(),
              error: (_, __) => const SizedBox(),
            ),
            Gap(80.h),
          ],
        ),
      ),
    );
  }

  /// helper: maps backend icon string to Flutter IconData
  IconData _mapIcon(String iconName) {
    switch (iconName.toLowerCase()) {
      case 'sports':
        return Icons.sports_soccer;
      case 'music':
        return Icons.music_note;
      case 'food':
        return Icons.restaurant;
      case 'travel':
        return Icons.flight;
      case 'art':
        return Icons.color_lens;
      default:
        return Icons.circle; // fallback icon
    }
  }
}




