import 'package:flutter/material.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
    this.buttonColor,
  }) : super(key: key);
  final String label;
  final VoidCallback onPressed;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: SizedBox(
        height: 50,
        child: MaterialButton(
          minWidth: double.infinity,
          elevation: 0,
          onPressed: onPressed,
          color: buttonColor ?? AppColors.buttonPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: AppTextWidget(label, style: CustomTextStyles.text16_500,textColor: Colors.white,),
          ),
        ),
      ),
    );
  }
}
