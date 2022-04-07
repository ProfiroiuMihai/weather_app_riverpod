import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';



class LoadingButton extends StatelessWidget {
  const LoadingButton(
      {Key? key,
      required this.controller,
      required this.label,
      required this.onPressed,
      this.buttonColor,
      this.width})
      : super(key: key);
  final RoundedLoadingButtonController controller;
  final String label;
  final VoidCallback onPressed;
  final Color? buttonColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return RoundedLoadingButton(
      height: 50,
      width: width ?? 300,
      color: buttonColor ?? AppColors.buttonPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: AppTextWidget(label, style: CustomTextStyles.text16_500),
      ),
      controller: controller,
      onPressed: onPressed,
    );
  }
}
