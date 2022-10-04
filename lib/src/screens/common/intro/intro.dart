import 'package:flutter/material.dart';
import 'package:heilo_flutter/src/screens/common/intro/intro_mobile.dart';
import 'package:heilo_flutter/src/screens/common/intro/intro_web.dart';
import 'package:heilo_flutter/src/utils/dynamic_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.amber,
        width: AppSizes.dynamicWidth(context, 1),
        height: AppSizes.dynamicHeight(context, 1),
        child: ScreenTypeLayout(
          mobile: IntroMobile(),
          tablet: IntroWeb(),
          desktop: IntroWeb(),
        ),
      ),
    );
  }
}
