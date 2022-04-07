import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/utils/app_router.dart';
import 'package:weather_app_test/src/widgets/button_widget.dart';
import 'package:weather_app_test/src/widgets/text_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _showSpacer(),
            _showLogo(),
            _showSpacer(),
            _showAuthButton(context)
          ],
        ),
      ),
    );
  }

  Widget _showLogo() {
    return Flexible(flex: 12, child: Image.asset("assets/logo.png"));
  }

  Widget _showSpacer() {
    return const Spacer(
      flex: 5,
    );
  }

  Widget _showAuthButton(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: AppButtonWidget(
            buttonColor: AppColors.buttonPrimaryColor,
            label: AppLocalizations.of(context)!.sign_in,
            onPressed: () => AppRouter.showLoginScreen(context),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: AppButtonWidget(
              buttonColor: AppColors.buttonSecondaryColor,
              label: AppLocalizations.of(context)!.sign_up,
              onPressed: () => AppRouter.showRegisterScreen(context),
            )),
        Padding(
            padding: const EdgeInsets.all(10),
            child: AppTextButton(
              label: AppLocalizations.of(context)!.maybe_later,
              onPressed: () => AppRouter.showHomeScreen(context),
            )),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
