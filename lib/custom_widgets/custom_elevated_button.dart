import 'package:ecommerce_app/custom_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  double? buttonHeight;
  double? buttonWidth;
  Color? buttonColor;
  double? buttonRadius;

  String? title;
  FontWeight? fontWeight;
  double? fontSize;
  Color? fontColor;
  String? fontFamily;
  double? letterSpacing;
  double?  fontHeight;

  CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      width: buttonWidth,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(buttonRadius!),
      ),
      child: Center(
        child: CustomText(
          title: title,
          fontColor: fontColor,
          letterSpacing: letterSpacing,
          fontHeight: fontHeight,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
