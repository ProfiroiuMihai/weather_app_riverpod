class AssetUtils {
  static String getSvgImagePath(String iconName, {bool isIcon = true}) {
    return isIcon
        ? 'assets/icons/svg/$iconName.svg'
        : 'assets/images/svg/$iconName.svg';
  }

  static String getPngImagePath(String iconName, {bool isIcon = true}) {
    return isIcon
        ? 'assets/icons/$iconName.png'
        : 'assets/images/$iconName.png';
  }

  static String getBottomNavbarIconPath(String iconName) {
    return 'assets/icons/svg/bottom_navbar/$iconName.svg';
  }
}
