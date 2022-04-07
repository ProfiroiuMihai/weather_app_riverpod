import 'package:flutter/material.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';

enum CustomTextStyles {
  //define in ascending order of text size
  text11_400,
  text11_400_white,
  text12_400,
  text14_300,
  text16_500,
  text22_500,
}

class AppTextWidget extends StatelessWidget {
  AppTextWidget(
    this.text, {
    Key? key,
    this.style,
    this.fontSize,
    this.fontStyle = FontStyle.normal,
    this.fontFamily = 'Roboto',
    this.fontWeight = FontWeight.normal,
    this.textColor,
    this.letterSpacing = 0.0,
    this.textAlign = TextAlign.start,
    this.textDecoration = TextDecoration.none,
    this.maxLines = 50,
    this.textOverflow = TextOverflow.ellipsis,
    this.decorationColor,
  }) : super(key: key);

  final String? text;
  CustomTextStyles? style;
  double? fontSize;
  FontWeight fontWeight;
  Color? textColor;
  String fontFamily;
  FontStyle fontStyle;
  double letterSpacing;
  TextAlign textAlign;
  TextDecoration textDecoration;
  Color? decorationColor;
  final int maxLines;
  final TextOverflow textOverflow;

  void getStyle(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    switch (style) {
      //define cases in ascending order of text size

      case CustomTextStyles.text11_400:
        fontSize = 11;
        fontWeight = FontWeight.w400;
        textColor ??= AppColors.textPrimaryColor!;
        break;
      case CustomTextStyles.text11_400_white:
        fontSize = 11;
        fontWeight = FontWeight.w400;
        textColor ??= Colors.white;
        break;

      case CustomTextStyles.text12_400:
        fontSize = 12;
        fontWeight = FontWeight.w400;
        break;

      case CustomTextStyles.text14_300:
        fontSize = 14;
        fontWeight = FontWeight.w300;
        break;

      case CustomTextStyles.text16_500:
        fontSize = 16;
        fontWeight = FontWeight.w500;
        break;

      case CustomTextStyles.text22_500:
        fontSize = 22;
        fontWeight = FontWeight.w500;
        textColor ??= Colors.black;
        break;
      default:
        fontSize = 12;
        fontWeight = FontWeight.w500;
        textColor ??= Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    getStyle(context);
    return Text(
      text ?? '',
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverflow,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        color: textColor,
        letterSpacing: letterSpacing,
        decoration: textDecoration,
        decorationColor: decorationColor ?? AppColors.textPrimaryColor,
      ),
    );
  }
}
