// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:heilo_flutter/src/screens/student/select_services/select_services_Mobile.dart';
import 'package:heilo_flutter/src/screens/student/select_services/select_services_web.dart';
import 'package:heilo_flutter/src/utils/dynamic_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SelectServices extends StatelessWidget {
  const SelectServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.amber,
        width: AppSizes.dynamicWidth(context, 1),
        height: AppSizes.dynamicHeight(context, 1),
        child: ScreenTypeLayout(
          mobile: SelectServicesMobile(),
          tablet: SelectServicesWeb(),
          desktop: SelectServicesWeb(),
        ),
      ),
    );
  }
}
