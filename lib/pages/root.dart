import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:teampool/pages/tablet/tablet_root_body.dart';

import 'desktop/desktop_root_body.dart';
import 'mobile/mobile_root_body.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: DesktopRootBody(),
        tablet: TabletRootBody(),
        mobile: MobileRootBody(),
      ),
    );
  }
}