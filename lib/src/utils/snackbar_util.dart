import 'package:flutter/material.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/utils/global_values.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';


class SnackBarUtil {
  static showSnackBar(String? message,{Color? color}) {
    final SnackBar _snackBar = SnackBar(
      content: AppTextWidget(
        message,
        style: CustomTextStyles.text14_300,
        textColor: color ?? AppColors.containerColor,
      ),
    );
    ScaffoldMessenger.of(GlobalValues.navKey.currentContext!)
        .showSnackBar(_snackBar);
  }
}
