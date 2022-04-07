import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tuple/tuple.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/screens/auth/auth_errors_utils.dart';
import 'package:weather_app_test/src/state_notifiers/authentication/sign_in_notifier.dart';
import 'package:weather_app_test/src/utils/app_router.dart';
import 'package:weather_app_test/src/utils/form_utils.dart';
import 'package:weather_app_test/src/widgets/loading_button_widget.dart';
import 'package:weather_app_test/src/widgets/text_button.dart';
import 'package:weather_app_test/src/widgets/text_input_field_widget.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';

class SignInScreen extends ConsumerWidget {
  SignInScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();

  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();

  final RoundedLoadingButtonController _buttonController =
      RoundedLoadingButtonController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _listenToProvider(BuildContext context, WidgetRef ref) {
    ref.listen(signInProvider, (previous, next) {
      final SignInState signInState = next as SignInState;
      if (signInState is SignInStateError) {
        _buttonController.stop();
        onCrashedAuth(context, signInState.message);
      }
      if (signInState is SignInStateSuccess) {
        _buttonController.success();
        AppRouter.showHomeScreen(context);
      }
    });
  }

  Future<void> signIn(BuildContext context, WidgetRef ref) async {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      ref
          .read(signInProvider.notifier)
          .signIn(Tuple2(_emailController.text, _passwordController.text));
    } else {
      _buttonController.stop();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenToProvider(context, ref);
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            color: AppColors.dividerColor,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              AppRouter.pop(context);
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextWidget(
              AppLocalizations.of(context)!.sign_in,
              style: CustomTextStyles.text22_500,
            ),
            Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 5),
                    child: AppTextWidget(
                      AppLocalizations.of(context)!.email,
                      style: CustomTextStyles.text16_500,
                    ),
                  ),
                  TextInputFieldWidget(
                      hintText: AppLocalizations.of(context)!.email,
                      validator: FormUtils.validateEmail,
                      inputAction: TextInputAction.done,
                      inputType: TextInputType.text,
                      focusNode: _emailFocusNode,
                      controller: _emailController,
                      onFieldSubmitted: (string) {
                        _emailFocusNode.unfocus();
                        return '$string';
                      }),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,bottom: 5),
                        child: AppTextWidget(
                          AppLocalizations.of(context)!.password,
                          style: CustomTextStyles.text16_500,
                        ),
                      ),
                  TextInputFieldWidget(
                      hintText: AppLocalizations.of(context)!.password,
                      validator: FormUtils.validatePassword,
                      inputAction: TextInputAction.done,
                      inputType: TextInputType.text,
                      focusNode: _passwordFocusNode,
                      controller: _passwordController,
                      onFieldSubmitted: (string) {
                        _emailFocusNode.unfocus();
                        return '$string';
                      }),
                ])),
            Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: LoadingButton(
                  controller: _buttonController,
                  label: AppLocalizations.of(context)!.sign_in,
                  onPressed: () => signIn(context, ref),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppTextButton(
                  label: AppLocalizations.of(context)!.i_do_not_have_account,
                  onPressed: ()=>AppRouter.showRegisterScreen(context),
                ),
                AppTextButton(
                  label: AppLocalizations.of(context)!.i_forget_password,
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
