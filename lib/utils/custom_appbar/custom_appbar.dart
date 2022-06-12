import 'package:flutter/material.dart';
import 'package:teampool/theme/color.dart';

// Logo, 회원가입, 로그인 AppBar
// TODO : Text Size랑 padding 같은 위치 정보 잘 받아야함.
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.showInfo = false,
    required this.width,
    required this.height,
  });

  final bool showInfo; // 회원가입과 로그인을 보여줄 지 정해주는 bool 변수
  final double width;
  final double height;
  final double fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: width,
      height: height,
      child: Row(
        children: [
          Container(
            width: width * 2 / 10,
            height: height / 2,
            color: Colors.blue,
            margin: EdgeInsets.only(
              left: width * 0.5 / 10,
            ),
            child: const Text("Logo"), // TODO : Logo Image 들어오기 (이미지 받아서 넣기)
          ),
          Expanded(
            child: Container(),
          ),
          (showInfo)
              ? Row(
                  children: [
                    Container(
                      height: height / 2,
                      color: Colors.blue,
                      padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: const Color(CustomColorTheme.appBarTextColor),
                          textStyle: TextStyle(
                            fontSize: fontSize,
                          ),
                        ),
                        onPressed: () {
                          print("회원가입 버튼");
                        },
                        child: const Text('회원가입'),
                      ),
                    ),
                    Container(
                      height: height / 2,
                      child: const VerticalDivider(
                          thickness: 1, width: 1, color: Colors.black),
                    ),
                    Container(
                      height: height / 2,
                      color: Colors.purple,
                      padding: const EdgeInsets.fromLTRB(40.0, 0, 65.0, 0.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: const Color(CustomColorTheme.appBarTextColor),
                          textStyle: TextStyle(
                            fontSize: fontSize,
                          ),
                        ),
                        onPressed: () {
                          print("로그인");
                        },
                        child: const Text('로그인'),
                      ),
                    ),
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}
