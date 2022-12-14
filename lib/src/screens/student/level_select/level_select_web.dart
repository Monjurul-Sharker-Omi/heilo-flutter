import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo_flutter/src/components/temp/basic_widgets.dart';
import 'package:heilo_flutter/src/components/temp/text_widget.dart';
import 'package:heilo_flutter/src/components/temp/waves.dart';
import 'package:heilo_flutter/src/router/routes.dart';
import 'package:heilo_flutter/src/utils/color_const.dart';
import 'package:heilo_flutter/src/utils/dynamic_sizes.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LevelSelctWeb extends StatefulWidget {
  const LevelSelctWeb({Key? key}) : super(key: key);

  @override
  State<LevelSelctWeb> createState() => _StudentPhase1WebState();
}

class _StudentPhase1WebState extends State<LevelSelctWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.dynamicWidth(context, 1),
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
              heightPercentages: [0.15, 0.15, 0.15],
              blur: blur,
              gradientBegin: Alignment.bottomLeft,
              gradientEnd: Alignment.topRight,
            ),
            backgroundImage: const DecorationImage(image: AssetImage('')),
            // backgroundImage: AssetImage(assetName),
          ),
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
                        //loginPopUp(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 100.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: text(context, "LOG  IN", 18.sp, Colors.white,
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
                        //signUpPopUp(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 100.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: text(context, "SIGN  UP", 18.sp, Colors.white,
                            bold: true),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            child: Container(
              width: AppSizes.dynamicWidth(context, 1),
              height: AppSizes.dynamicHeight(context, 0.6),
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.SELECT_SERVICES);
                          },
                          child: TextBtn(title: "SSC")),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.SELECT_SERVICES);
                          },
                          child: TextBtn(title: "HSC")),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.SELECT_SERVICES);
                          },
                          child: TextBtn(title: "A LEVELS")),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.SELECT_SERVICES);
                          },
                          child: TextBtn(title: "O LEVELS")),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.SELECT_SERVICES);
                          },
                          child: TextBtn(title: "ADMISSION")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget textBtn(BuildContext context, text) {
    return Container(
      width: 350.w,
      height: 70.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: text(context, text, 24.sp, Colors.black),
    );
  }
}
