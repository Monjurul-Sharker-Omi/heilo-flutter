// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo_flutter/src/components/ProfileCard.dart';
import 'package:heilo_flutter/src/components/temp/notification_container.dart';
import 'package:heilo_flutter/src/components/temp/text_widget.dart';
import 'package:heilo_flutter/src/components/temp/top_iconavatar.dart';
import 'package:heilo_flutter/src/utils/color_const.dart';
import 'package:heilo_flutter/src/utils/dynamic_sizes.dart';

class OnDemandWeb extends StatefulWidget {
  const OnDemandWeb({Key? key}) : super(key: key);

  @override
  State<OnDemandWeb> createState() => _OnDemandWebState();
}

class _OnDemandWebState extends State<OnDemandWeb> {
  String dropdownValue = 'Subject';
  String dropdownValue1 = 'Topic';
  String dropdownValueAvail = 'Availability';
  int _radioValue = 0;

  // List of items in our dropdown menu
  var items = [
    'Subject',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  // List of items in our dropdown menu
  var items1 = [
    'Topic',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  // List of items in our dropdown menu
  var availitem = [
    'Availability',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  int _value = 6;
  double value = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: AppSizes.dynamicWidth(context, 1),
        height: AppSizes.dynamicHeight(context, 1),
        decoration: BoxDecoration(
          // color: Colors.amber,
          color: AppColors.customWhite,
          borderRadius: BorderRadius.circular(30.r),
        ),
        padding: EdgeInsets.all(AppSizes.dynamicWidth(context, 0.02)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // AppSizes.heightBox(context, .02),
              topIconAvatar(context),
              Container(
                // color: Colors.yellow,
                padding: EdgeInsets.only(left: 0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 502.w,
                          height: 65.h,
                          decoration: BoxDecoration(
                              color: Colors.white, borderRadius: BorderRadius.circular(40), border: Border.all(width: 2, color: Color(0xffE4E4E4))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              DropdownButton(
                                // Initial Value
                                value: dropdownValue,
                                underline: Container(color: Colors.transparent),
                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),
                                // Array list of items
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              DropdownButton(
                                // Initial Value
                                value: dropdownValue1,
                                underline: Container(color: Colors.transparent),
                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),
                                // Array list of items
                                items: items1.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue1 = newValue!;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Container(
                                  height: 65.h,
                                  width: 182.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xff01B489),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40.0),
                                        bottomRight: Radius.circular(40.0),
                                        // topLeft: Radius.circular(40.0),
                                        bottomLeft: Radius.circular(64.0)),
                                  ),
                                  child:
                                      Align(alignment: Alignment.center, child: text(context, "SEARCH", 25.sp, AppColors.customWhite, bold: false)))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          width: 771.w,
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 180.w,
                                height: 10.h,
                                child: Slider(
                                    value: _value.toDouble(),
                                    min: 1.0,
                                    max: 20.0,
                                    divisions: 10,
                                    activeColor: AppColors.primaryColor,
                                    inactiveColor: Colors.grey,
                                    label: 'Set Price value',
                                    onChanged: (double newValue) {
                                      setState(() {
                                        _value = newValue.round();
                                      });
                                    },
                                    semanticFormatterCallback: (double newValue) {
                                      return '${newValue.round()} dollars';
                                    }),
                              ),
                              Row(
                                children: [
                                  Radio(
                                    activeColor: AppColors.primaryColor,
                                    value: 0,
                                    groupValue: _radioValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _radioValue = value as int;
                                      });
                                    },
                                  ),
                                  Text(
                                    'Male',
                                    style: TextStyle(fontSize: 16.sp),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    activeColor: AppColors.primaryColor,
                                    value: 1,
                                    groupValue: _radioValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _radioValue = value as int;
                                      });
                                    },
                                  ),
                                  Text(
                                    'FeMale',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 33.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30.w,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: AppColors.lightGreybBorder),
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                child: DropdownButton(
                                  // Initial Value
                                  value: dropdownValueAvail,
                                  underline: Container(color: Colors.transparent),
                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  // Array list of items
                                  items: availitem.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValueAvail = newValue!;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 170.w,
                                height: 46.h,
                                padding: EdgeInsets.only(
                                  left: 10.w,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: AppColors.lightGreybBorder),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.search,
                                      size: 17,
                                    ),
                                    Container(
                                      alignment: Alignment.topCenter,
                                      width: 128.w,
                                      padding: EdgeInsets.only(
                                        left: 10.w,
                                        bottom: 15.h,
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Search By ID',
                                            hintStyle: TextStyle(
                                              fontSize: 16.sp,
                                              color: AppColors.greyText,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          // color: Colors.amber,
                          width: 760.w,
                          height: 570.h,
                          child: ListView.builder(
                            itemCount: 6,
                            itemBuilder: (context, i) {
                              return ProfileCard(
                                name: 'Sakib Abdullah',
                                image: "assets/png/wp2398385 1.png",
                                rating: '4.5',
                                institute: "bangladesh University Of Professionals\nAccounting , Finance, English, ICT ",
                                rate: "450",
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    notificationContainer(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
