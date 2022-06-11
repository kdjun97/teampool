import 'package:flutter/material.dart';

class RootTitle extends StatelessWidget {
  RootTitle({required this.height});
  double fontSize = 60.0;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, height, 0, 0),
      child: Text(
        "원하는 프로젝트를 찾고\n팀원들을 구해보세요",
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      )
    );
  }
}
