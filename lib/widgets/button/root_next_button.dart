import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teampool/theme/color.dart';

class RootNextButton extends StatelessWidget {
  RootNextButton({required this.buttonSize});
  final double buttonSize;
  double paddingSize = 50.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingSize),
      child: MaterialButton(
        onPressed: () {
          print("[System] : 루트 페이지에서 next 버튼을 눌렀습니다. (로그인 페이지 이동)");
          Get.toNamed('/SignIn');
        },
        color: const Color(CustomColorTheme.rootNextButtonColor),
        textColor: const Color(CustomColorTheme.arrowColor),
        child: Icon(
          Icons.arrow_forward,
          size: buttonSize,
        ),
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(),
      ),
    );
  }
}
