import 'package:flutter/material.dart';
import 'package:teampool/utils/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:teampool/widgets/text_field/custom_text_field.dart';

import '../../controller/form_controller.dart';

class MobileSignInBody extends StatelessWidget {
  FormController formController = Get.find<FormController>();
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
            padding: EdgeInsets.fromLTRB(Get.width * 1 / 10, Get.height * 1.3 / 10, Get.width * 1 / 10, 0),
            child: Row(
              children: [
                Container(
                  width: Get.width * 7 / 10,
                  height: Get.height * 6.5 / 10,
                  // color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,50,0,45),
                        child: Text("로그인",
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NotoSansKR'
                          ),
                        ),
                      ),
                      CustomTextField(width: Get.width * 7 / 10, height: 49, controller: formController.emailController, hintText: "이메일", icon: Icons.email),
                      Text("d",),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width * 7 / 10,
            height: Get.height * 6.5 / 10,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}