import 'package:flutter/material.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/providers/app_language_provider.dart';
import 'package:weather_app_test/src/providers/theme_provider.dart';
import 'package:weather_app_test/src/widgets/button_widget.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppTextWidget("Profile Screen",style: CustomTextStyles.text22_500,),
        AppButtonWidget(label: "Change theme",
            buttonColor: AppColors.buttonPrimaryColor,
            onPressed: (){
          context.read<ThemeNotifier>().toggleTheme();
          // context.read<ThemeNotifier>().getTheme();
        }),
        Container(height:100,width: 100,color: AppColors.textPrimaryColor,),
        Container(height:100,width: 100,color: Theme.of(context).primaryColor,)

      ],
    )));
  }
}
