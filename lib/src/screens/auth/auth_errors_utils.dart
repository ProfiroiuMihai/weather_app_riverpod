import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/utils/snackbar_util.dart';

void onCrashedAuth(BuildContext context, String? error) {
  if (error != null) {
    if (error.contains('email-already-in-use')) {
      SnackBarUtil.showSnackBar(
          AppLocalizations.of(context)?.email_already_exists,
          color: AppColors.errorColor);
      return;
    } else if (error.contains('user-not-found')) {
      SnackBarUtil.showSnackBar(
          AppLocalizations.of(context)?.create_new_account,
          color: AppColors.errorColor);
      return;
    } else if (error.contains("wrong-password")) {
      SnackBarUtil.showSnackBar(
          AppLocalizations.of(context)?.incorrect_email_password_text,
          color: AppColors.errorColor);
      return;
    }
  }
  SnackBarUtil.showSnackBar(AppLocalizations.of(context)?.something_went_wrong,
      color: AppColors.errorColor);
}
