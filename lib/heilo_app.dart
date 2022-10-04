import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo_flutter/src/components/animations/loading_animation.dart';
import 'package:heilo_flutter/src/router/router_helper.dart';
import 'package:heilo_flutter/src/screens/common/intro/intro.dart';

class HeiloApp extends StatefulWidget {
  const HeiloApp({Key? key}) : super(key: key);

  @override
  State<HeiloApp> createState() => _HeiloAppState();
}

class _HeiloAppState extends State<HeiloApp> {
  @override
  void initState() {
    super.initState();
    RouterHelper().setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 982),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Heilo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Intro(),
        onGenerateRoute: RouterHelper.router.generator,
        // initialRoute: Routes.SPLASH_SCREEN,
      ),
    );
  }
}
//
// class AuthenticationWrapper extends StatefulWidget {
//   const AuthenticationWrapper({Key? key}) : super(key: key);
//
//   @override
//   State<AuthenticationWrapper> createState() => _AuthenticationWrapperState();
// }
//
// class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
//   // void checkState() async {
//   //   AuthProvider authProvider = Provider.of<AuthProvider>(context, listen: false);
//   //   bool isLoggedIn = await authProvider.isUserSignedIn();
//   //   bool isVerified = await authProvider.isVerified();
//   //
//   //   if (isLoggedIn) {
//   //     if (isVerified) {
//   //       await authProvider.getCurrentUserData();
//   //       UserData? userData = authProvider.userData;
//   //       if (userData == null) {
//   //         Navigator.pushReplacementNamed(context, Routes.PERSONAL_INFO_SCREEN);
//   //       } else {
//   //         Navigator.pushReplacementNamed(context, Routes.HOME_SCREEN);
//   //       }
//   //     } else {
//   //       Navigator.pushReplacementNamed(context, Routes.VERIFY_SCREEN);
//   //     }
//   //   } else {
//   //     Navigator.pushReplacementNamed(context, Routes.SIGN_IN_SCREEN);
//   //   }
//   // }
//
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 1), () {
//       // checkState();
//       print("Init");
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Loader(),
//       ),
//     );
//   }
// }
