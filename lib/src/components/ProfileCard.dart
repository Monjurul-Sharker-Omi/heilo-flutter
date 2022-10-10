import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo_flutter/src/components/temp/text_widget.dart';
import 'package:heilo_flutter/src/utils/color_const.dart';
import 'package:heilo_flutter/src/utils/dynamic_sizes.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String? image;
  final String rating;
  final String institute;
  final String rate;
  final bool mobileView;

  const ProfileCard(
      {Key? key,
      required this.name,
      this.image,
      required this.rating,
      required this.institute,
      required this.rate,
      this.mobileView = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mobileView ? 90.h : 130.h,
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(mobileView ? 45.r : 10.r),
      ),
      padding: mobileView
          ? EdgeInsets.zero
          : EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 14.h,
            ),
      margin: EdgeInsets.only(bottom: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: mobileView ? 130.r : 46.r,
                    backgroundImage: AssetImage(
                      image ?? "assets/png/wp2398385 1.png",
                    ),
                  ),
                  Positioned(
                    top: -5,
                    right: -40,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: mobileView ? 7 : 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffC4C4C4).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/png/star.png'),
                          text(
                            context,
                            rating,
                            mobileView ? 65.sp : 15.sp,
                            Colors.black,
                            bold: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                context,
                name,
                mobileView ? 70.sp : 20.sp,
                AppColors.customBlack,
                bold: true,
              ),
              text(
                context,
                institute,
                mobileView ? 65.sp : 14.sp,
                AppColors.customBlack,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: mobileView ? 25.h : 42.h,
                width: mobileView ? AppSizes.dynamicWidth(context, 0.2) : 146.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(mobileView ? 75.r : 10.r),
                ),
                child: Center(
                    child: text(context, "${rate}/hr",
                        mobileView ? 65.sp : 18.sp, Colors.black)),
              ),
              Container(
                height: mobileView ? 25.h : 42.h,
                width: mobileView ? AppSizes.dynamicWidth(context, 0.2) : 146.w,
                decoration: BoxDecoration(
                  color: AppColors.greenDark,
                  borderRadius: BorderRadius.circular(mobileView ? 75.h : 10.r),
                ),
                child: Center(
                  child: text(context, "Message", mobileView ? 65.sp : 18.sp,
                      Colors.white),
                ),
              ),
            ],
          ),
          mobileView ? SizedBox(width: 20.w) : const SizedBox(width: 0)
        ],
      ),
    );
  }
}
