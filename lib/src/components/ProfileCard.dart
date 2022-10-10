import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo_flutter/src/components/temp/text_widget.dart';
import 'package:heilo_flutter/src/utils/color_const.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String? image;
  final String rating;
  final String institute;
  final String rate;
  final bool mobileView;

  const ProfileCard(
      {Key? key, required this.name, this.image, required this.rating, required this.institute, required this.rate, this.mobileView = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: mobileView ? 90.h : 130.h,
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 14.h,
      ),
      margin: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: mobileView ? 130.r : 46.r,
            backgroundImage: AssetImage(
              image ?? "assets/png/wp2398385 1.png",
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    text(
                      context,
                      name,
                      mobileView ? 70.sp : 20.sp,
                      AppColors.customBlack,
                      bold: true,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
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
                          Image.asset(
                            'assets/png/star.png',
                            scale: 1.3,
                          ),
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
                  ],
                ),
                text(
                  context,
                  institute,
                  mobileView ? 60.sp : 14.sp,
                  AppColors.customBlack,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 16.w),

                // height: mobileView ? 25.h : 42.h,
                // width: mobileView ? AppSizes.dynamicWidth(context, 0.2) : 146.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    text(
                      context,
                      rate,
                      mobileView ? 65.sp : 18.sp,
                      Colors.black,
                    ),
                    text(
                      context,
                      "/hr",
                      mobileView ? 65.sp : 18.sp,
                      Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 16.w),
                // height: mobileView ? 25.h : 42.h,
                // width: mobileView ? AppSizes.dynamicWidth(context, 0.2) : 146.w,
                decoration: BoxDecoration(
                  color: AppColors.greenDark,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: text(context, "Message", mobileView ? 65.sp : 18.sp, Colors.white),
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
