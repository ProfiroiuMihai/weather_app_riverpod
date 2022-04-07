import 'package:flutter/material.dart';



class AppUtils {
  static bool isLightMode(BuildContext context) {
    return Theme
        .of(context)
        .brightness == Brightness.light;
  }

}