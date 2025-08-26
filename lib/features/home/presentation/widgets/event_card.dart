import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class EventCard extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final String dateDay;
  final String dateMon;
  final int going;

  const EventCard({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.dateDay,
    required this.dateMon,
    required this.going,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.06),
            blurRadius: 12.r,
            offset: const Offset(0, 6),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 132.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 12.w,
                top: 12.h,
                child: Container(
                  width: 46.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(dateDay,
                          style: TextStyle(
                              fontSize: 16.r,
                              fontWeight: FontWeight.w800,
                              color: const Color(0xFF2D2F39))),
                      Text(dateMon,
                          style: TextStyle(
                              fontSize: 10.r,
                              color: const Color(0xFF8C909A),
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.r,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF2D2F39),
                    )),
                Gap(8.h),
                Row(
                  children: [
                    const Icon(Icons.place, size: 16, color: Color(0xFF8C909A)),
                    Gap(4.w),
                    Expanded(
                      child: Text(
                        location,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12.r, color: const Color(0xFF8C909A)),
                      ),
                    ),
                  ],
                ),
                Gap(10.h),
                Row(
                  children: [
                    _AvatarStack(count: 3),
                    Gap(8.w),
                    Text("+$going Going",
                        style: TextStyle(
                          fontSize: 12.r,
                          color: const Color(0xFF2EA4FF),
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AvatarStack extends StatelessWidget {
  final int count;
  const _AvatarStack({required this.count});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 54.w,
      height: 25.6.h,
      child: Stack(
        children: List.generate(
          count,
              (i) => Positioned(
            left: (i * 18).w,
            child: CircleAvatar(
              radius: 12.r,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 11.r,
                backgroundImage: const AssetImage("assets/images/avatar.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
