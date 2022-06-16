import 'package:flutter/material.dart';

import '../../theme/color.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.width,
    required this.height,
    required this.controller,
    required this.hintText,
    required this.icon,
  });

  final double width;
  final double height;
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  double iconSize = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: const Color(CustomColorTheme.formBackgroundColor),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 50, 0),
            child: Icon(
              icon,
              size: iconSize,
            )
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
