import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  String? title;
  FontWeight? fontWeight;
  double? fontSize;
  Color? fontColor;
  String? fontFamily;
  double? letterSpacing;
  double?  fontHeight;

  CustomText({super.key,

    this.fontWeight,
    this.fontHeight,
    this.letterSpacing,
    this.fontColor,
    this.title,
    this.fontSize,
    this.fontFamily,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: fontColor,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
        height: fontHeight,
      ),
    );
  }
}
