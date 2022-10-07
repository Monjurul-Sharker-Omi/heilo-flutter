import 'package:flutter/material.dart';
import 'package:heilo_flutter/src/screens/common/intro/intro_mobile.dart';
import 'package:heilo_flutter/src/screens/common/intro/intro_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: IntroMobile(),
        tablet: IntroWeb(),
        desktop: IntroWeb(),
      ),
    );
  }
}
