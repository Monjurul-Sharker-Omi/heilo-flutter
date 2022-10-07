import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo_flutter/src/components/temp/text_widget.dart';
import 'package:heilo_flutter/src/utils/color_const.dart';

Widget notificationCardforall(context) {
  return Container(
    width: 476.w,
    height: 76.h,
    decoration: BoxDecoration(
      color: Color(0xffB4F4DD),
      borderRadius: BorderRadius.circular(30.r),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 20.w,
      vertical: 10.h,
    ),
    margin: EdgeInsets.only(bottom: 10.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 26.r,
          backgroundImage: const AssetImage(
            "assets/png/wp2398385 1.png",
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Expanded(
          child: text(
            context,
            "You have received a tution request from Salsabil Murshed.",
            16.sp,
            AppColors.customBlack,
          ),
        ),
      ],
    ),
  );
}
