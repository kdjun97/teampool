import 'package:flutter/material.dart';
import 'package:teampool/utils/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class DesktopSignInBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            width: Get.width,
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Get.width*1/10, Get.height*1.3/10, Get.width*1/10, 0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: Get.width*2.5/10,
                      height: Get.height*6.5/10,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Expanded(child: Container(),),
                Container(
                  width: Get.width*4/10,
                  height: Get.height*6.5/10,
                  color: Colors.purple,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}