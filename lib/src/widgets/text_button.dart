import 'package:flutter/material.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';


class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String label;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AppTextWidget(
        label,
        fontStyle:  FontStyle.normal,
      ),
    );
  }
}
