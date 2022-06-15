import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teampool/root/pages.dart';
import 'package:teampool/root/route_name.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  setPathUrlStrategy();
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 800, tablet: 550, watch: 200),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'teampool',
      initialRoute: RouteName.ROOT,
      getPages: Pages.routes,
    );
  }
}