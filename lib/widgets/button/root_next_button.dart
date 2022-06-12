import 'package:flutter/material.dart';
import 'package:teampool/theme/color.dart';

class RootNextButton extends StatelessWidget {
  double paddingSize = 50.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingSize),
      child: MaterialButton(
        onPressed: () {
          print("버튼");
        },
        color: const Color(CustomColorTheme.rootNextButtonColor),
        textColor: const Color(CustomColorTheme.arrowColor),
        child: const Icon(
          Icons.arrow_forward,
          size: 100,
        ),
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(),
      ),
    );
  }
}
