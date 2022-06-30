import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';

import 'desktop/desktop_sign_in_body.dart';
import 'mobile/mobile_sign_in_body.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          print("${Get.width} sign in page");
          return ScreenTypeLayout(
            desktop: DesktopSignInBody(),
            mobile: MobileSignInBody(),
//        tablet: TabletRootBody(),
//        mobile: MobileRootBody(),
          );
        }
      ),
    );
  }
}