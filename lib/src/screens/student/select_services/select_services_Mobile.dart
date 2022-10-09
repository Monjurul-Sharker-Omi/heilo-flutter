// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo_flutter/src/components/temp/basic_widgets.dart';
import 'package:heilo_flutter/src/components/temp/text_widget.dart';
import 'package:heilo_flutter/src/components/temp/waves.dart';
import 'package:heilo_flutter/src/router/routes.dart';
import 'package:heilo_flutter/src/utils/color_const.dart';
import 'package:heilo_flutter/src/utils/dynamic_sizes.dart';
import 'package:wave/config.dart';

class SelectServicesMobile extends StatelessWidget {
  const SelectServicesMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.amber,
        height: AppSizes.dynamicHeight(context, 1),
        child: Stack(
          children: [
            buildCard(
              context: context,
              backgroundColor: Colors.white,
              config: CustomConfig(
                gradients: [
                  [Color(0xffA6FFCB), Color(0xffA6FFCB)],
                  [Color(0xff32E8A0), Color(0xff32E8A0)],
                  [Color(0xFF12D8FA), Color(0xFF12D8FA)],
                ],
                durations: [25000, 19440, 6000],
                heightPercentages: [0.30, 0.30, 0.30],
                blur: blur,
                gradientBegin: Alignment.bottomLeft,
                gradientEnd: Alignment.topRight,
              ),
              backgroundImage: DecorationImage(image: AssetImage('')),
              // backgroundImage: AssetImage(assetName),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      // color: Colors.amber,
                      margin: EdgeInsets.only(
                        top: AppSizes.dynamicHeight(context, 0.03),
                        right: 10,
                      ),
                      // width: AppSizes.dynamicWidth(context, 0.2),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              //loginPopUpMobile(context);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 400.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: AppColors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: text(
                                  context,
                                  "LOG  IN",
                                  AppSizes.dynamicWidth(context, 0.04),
                                  Colors.white,
                                  bold: true),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 2,
                            height: 25.h,
                            decoration: BoxDecoration(
                              color: AppColors.green,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              //signUpPopUpMobile(context);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 400.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: AppColors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: text(
                                  context,
                                  "SIGN  UP",
                                  AppSizes.dynamicWidth(context, 0.04),
                                  Colors.white,
                                  bold: true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: AppSizes.dynamicHeight(context, 0.5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              //AppRoutes.push(context, StudentSideMenu());
                              Navigator.pushNamed(context, Routes.ON_DEMAND);
                            },
                            child: TextBtn(title: "SSC")),
                        InkWell(
                            onTap: () {
                              //AppRoutes.push(context, StudentSideMenu());
                              Navigator.pushNamed(context, Routes.ON_DEMAND);
                            },
                            child: TextBtn(title: "HSC")),
                        InkWell(
                            onTap: () {
                              //AppRoutes.push(context, StudentSideMenu());
                              Navigator.pushNamed(context, Routes.ON_DEMAND);
                            },
                            child: TextBtn(title: "HSC")),
                        // SizedBox(
                        //   height: 40.h,
                        // ),
                      ]),
                ),
              ],
            ),
          ],
        ));
  }
}
