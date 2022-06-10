import 'package:flutter/material.dart';
import 'package:weather_app_test/src/utils/app_utils.dart';

class AppColors {
  AppColors._internal();

  static final AppColors _singleton = AppColors._internal();

  factory AppColors() {
    return _singleton;
  }

  ///a method to initialize the color values based on brightness (light, dark)
  static void loadColors(BuildContext context) {
    // if (AppUtils.isLightMode(context)) {
    //   _loadLightThemeColors();
    // } else {
       _loadDarkThemeColors();
    // }
  }

  ///All color names used in the app
  //text colors
  static Color? textPrimaryColor;
  static Color? textSecondaryColor;
  static Color? linkTextColor;
  static Color? hintTextColor;

  //button colors
  static Color? buttonPrimaryColor;
  static Color? buttonPrimaryDisabledColor;
  static Color? buttonSecondaryColor;
  static Color? buttonSecondaryDisabledColor;

  //other app colors
  static Color? appPrimaryColor;
  static Color? scaffoldBackgroundColor;
  static Color? successColor;
  static Color? errorColor;
  static Color? containerColor;
  static Color? dividerColor;

  ///Light Theme Colors, add _l prefix for light colors
  //text colors for light theme
  static const Color _lTextPrimaryColor = Color(0xFF222831);
  static const Color _lTextSecondaryColor = Color(0xFF83839C);
  static const Color _lLinkTextColor = Color(0xFF2E7FDF);
  static const Color _lHintTextColor = Color(0xFFC6C7CA);

  //button colors for light theme
  static const Color _lButtonPrimaryColor = Color(0xFF4cd964);
  static const Color _lButtonPrimaryDisabledColor = Color(0xFFBBCEFF);
  static const Color _lButtonSecondaryColor = Color(0xFF006fff);
  static const Color _lButtonSecondaryDisabledColor = Color(0xFFBBCEFF);

  //other app colors for light theme
  static const Color _lAppPrimaryColor = Color(0xFF6086E7);

  // static const Color
  static const Color _lScaffoldBgColor = Color(0xFFFFFFFF);
  static const Color _lSuccessColor = Color(0xFF5BD151);
  static const Color _lErrorColor = Color(0xFFF06C6C);
  static const Color _lContainerColor = Color(0xFFFFFFFF);
  static const Color _lDividerColor = Color(0xFF83839C);

  ///
  ///Dark Theme Colors, add _d prefix for dark colors
  //Dark theme Colors are to be defined, using light theme colors for now!!
  //text colors for dark theme
  static const Color _dTextPrimaryColor = Color(0xFFFFFFFF);
  static const Color _dTextSecondaryColor = Color(0xFF83839C);
  static const Color _dLinkTextColor = Color(0xFF2E7FDF);
  static const Color _dHintTextColor = Color(0xFFC6C7CA);

  //button colors for dark theme
  static const Color _dButtonPrimaryColor = Color(0xFF6086E7);
  static const Color _dButtonPrimaryDisabledColor = Color(0xFFBBCEFF);

  //other app colors for dark theme
  static const Color _dAppPrimaryColor = Color(0xFF6086E7);

  // static const Color _dScaffoldBgColor = Color(0xFFE8EBF2);
  static const Color _dScaffoldBgColor = Color(0xFFF5F7FA);
  static const Color _dSuccessColor = Color(0xFF5BD151);
  static const Color _dErrorColor = Color(0xFFF06C6C);
  static const Color _dContainerColor = Color(0xFFFFFFFF);
  static const Color _dDividerColor = Color(0xFFE8EBF2);

  ///

  static void _loadLightThemeColors() {
    textPrimaryColor = _lTextPrimaryColor;
    textSecondaryColor = _lTextSecondaryColor;
    linkTextColor = _lLinkTextColor;
    buttonPrimaryColor = _lButtonPrimaryColor;
    buttonPrimaryDisabledColor = _lButtonPrimaryDisabledColor;
    buttonSecondaryColor = _lButtonSecondaryColor;
    buttonSecondaryDisabledColor = _lButtonPrimaryDisabledColor;
    appPrimaryColor = _lAppPrimaryColor;
    scaffoldBackgroundColor = _lScaffoldBgColor;
    successColor = _lSuccessColor;
    errorColor = _lErrorColor;
    containerColor = _lContainerColor;
    dividerColor = _lDividerColor;
    hintTextColor = _lHintTextColor;
  }

  static void _loadDarkThemeColors() {
    //dark theme is not implemented in the app, so using light colors for now.
    textPrimaryColor = _dTextPrimaryColor;
    textSecondaryColor = _dTextSecondaryColor;
    linkTextColor = _dLinkTextColor;
    buttonPrimaryColor = _dButtonPrimaryColor;
    buttonPrimaryDisabledColor = _dButtonPrimaryDisabledColor;
    buttonSecondaryColor = _dButtonPrimaryColor;
    buttonSecondaryDisabledColor = _dButtonPrimaryDisabledColor;
    appPrimaryColor = _dAppPrimaryColor;
    scaffoldBackgroundColor = _dScaffoldBgColor;
    successColor = _dSuccessColor;
    errorColor = _dErrorColor;
    containerColor = _dContainerColor;
    dividerColor = _dDividerColor;
    hintTextColor = _dHintTextColor;
  }
}
