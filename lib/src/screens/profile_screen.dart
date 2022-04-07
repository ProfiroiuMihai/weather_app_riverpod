import 'package:flutter/material.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: AppTextWidget("Profile Screen",style: CustomTextStyles.text22_500,)));
  }
}
