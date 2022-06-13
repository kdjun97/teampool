import 'package:flutter/material.dart';

class RootDescription extends StatelessWidget {
  RootDescription({required this.fontSize});
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Text(
          "저희 페이지는 마음에 맞는 팀원을 구할 수 있는 기회를 제공합니다.\n간단한 프로필을 등록하고 원하는 팀원들을 구해 팀을 꾸려보세요.",
          style: TextStyle(
              fontSize: fontSize,
              fontFamily: 'NotoSansKR',
          ),
          textAlign: TextAlign.center,
        )
    );
  }
}
