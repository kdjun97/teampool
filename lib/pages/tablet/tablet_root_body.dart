import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teampool/utils/custom_appbar/custom_appbar.dart';
import 'package:teampool/widgets/button/root_next_button.dart';
import 'package:teampool/widgets/text/root/root_description.dart';
import 'package:teampool/widgets/text/root/root_title.dart';

class TabletRootBody extends StatelessWidget {
  double h2 = 15;
  double titleSize = 50;
  double descriptionSize = 15;
  double buttonSize = 75;
  double appBarPaddingSize = 20;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            fontSize: h2,
            showInfo: true,
            width: Get.width,
            height: Get.height * 0.5 / 10,
            paddingSize: appBarPaddingSize,
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