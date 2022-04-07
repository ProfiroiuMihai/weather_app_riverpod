import 'package:flutter/material.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(body: Center(child: AppTextWidget("Support Screen",style: CustomTextStyles.text22_500,)));
  }

}
