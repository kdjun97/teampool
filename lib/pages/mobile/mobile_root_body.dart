import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teampool/utils/custom_appbar/custom_appbar.dart';
import 'package:teampool/widgets/button/root_next_button.dart';
import 'package:teampool/widgets/text/root/root_description.dart';
import 'package:teampool/widgets/text/root/root_title.dart';

class MobileRootBody extends StatelessWidget {
  double h2 = 10;
  double titleSize = 30;
  double descriptionSize = 10;
  double buttonSize = 50;
  double appBarPaddingSize = 10;

  @override
  Widget build (BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            fontSize: h2,
            showInfo: true,
            width: Get.width,
            height: 60,
            paddingSize: appBarPaddingSize
          ),
          RootTitle(
            fontSize: titleSize,
            height: Get.height * 1 / 10,
          ),
          Container(
            width: Get.width / 4,
            height: Get.height * 3 / 10,
            child: Image.asset(
              'assets/images/root_image.png',
              fit: BoxFit.fill,
            ),
          ),
          RootDescription(fontSize: descriptionSize,),
          RootNextButton(buttonSize: buttonSize,),
        ],
      ),
    );
  }
}