import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teampool/utils/custom_appbar/custom_appbar.dart';
import 'package:teampool/widgets/text/root/root_title.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            showInfo: true,
            width: Get.width,
            height: Get.height * 0.5 / 10,
          ),
          RootTitle(height: Get.height * 1 /10,),
          Text("${Get.width} x ${Get.height}"),
          Container(
              width : Get.width,
              height: Get.height*4/10,
              color: Colors.blue
          ),
        ],
      ),
    );
  }
}