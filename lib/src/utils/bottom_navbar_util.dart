import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';

class BottomNavbarUtil {
  static BottomNavigationBar getBottomNavbar(
      int currentIndex, Function(int) onChange) {
    return BottomNavigationBar(
      elevation: 50,
      items: getNavbarItems(currentIndex),
      type: BottomNavigationBarType.fixed,
      onTap: onChange,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: AppColors.textPrimaryColor,
      selectedItemColor: AppColors.appPrimaryColor,
      selectedIconTheme: const IconThemeData(size: 24),
      unselectedIconTheme: const IconThemeData(size: 24),
    );
  }

  static List<BottomNavigationBarItem> getNavbarItems(int currentIndex) {
    return [
      BottomNavigationBarItem(icon: profileIcon(currentIndex), label: ""),
      BottomNavigationBarItem(icon: homeIcon(currentIndex), label: ""),
      BottomNavigationBarItem(icon: supportIcon(currentIndex), label: ""),
    ];
  }

  static Widget profileIcon(int currentIndex) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
      child: FaIcon(
        FontAwesomeIcons.user,
        color: currentIndex == 0
            ? AppColors.appPrimaryColor
            : AppColors.textPrimaryColor,
      ),
    );
  }

  static Widget homeIcon(int currentIndex) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
      child: FaIcon(
        FontAwesomeIcons.houseCrack,
        color: currentIndex == 1
            ? AppColors.appPrimaryColor
            : AppColors.textPrimaryColor,
      ),
    );
  }

  static Widget supportIcon(int currentIndex) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
      child: FaIcon(
        FontAwesomeIcons.message,
        color: currentIndex == 2
            ? AppColors.appPrimaryColor
            : AppColors.textPrimaryColor,
      ),
    );
  }
}
