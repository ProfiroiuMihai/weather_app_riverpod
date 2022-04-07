import 'package:flutter/material.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';

class ErrorTextWidget extends StatelessWidget {
  const ErrorTextWidget({
    Key? key,
    required this.error,
  }) : super(key: key);

  final String? error;

  @override
  Widget build(BuildContext context) => AppTextWidget(error);
}