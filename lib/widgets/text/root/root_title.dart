import 'package:flutter/material.dart';

class RootTitle extends StatelessWidget {
  RootTitle({required this.height, required this.fontSize});
  final double fontSize;
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
          fontFamily: 'NotoSansKR'
        ),
        textAlign: TextAlign.center,
      )
    );
  }
}
