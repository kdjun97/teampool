import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teampool/root/pages.dart';
import 'package:teampool/root/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'teampool',
      initialRoute: RouteName.ROOT,
      getPages: Pages.routes,
    );
  }
}