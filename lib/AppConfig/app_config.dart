import 'package:wavemall/utils/styles.dart';
import 'package:flutter/material.dart';

class AppConfig {
  static const String hostUrl = 'https://wavemalliraq.com';

  static String appName = 'Wavemall';

  static String loginBackgroundImage = 'assets/config/login_bg.png';

  static String splashScreenLogo = 'assets/config/splash_logo.png';

  static String appLogo = 'assets/config/app_logo.png';

  static String appBanner = 'assets/config/app_banner.png';

  static String appBarIcon = 'assets/config/appbar_icon.png';

  static const String assetPath = hostUrl + '/public';

  static Color loginScreenBackgroundGradient1 = AppStyles.appThemeColor;

  static Color loginScreenBackgroundGradient2 = AppStyles.appThemeColor;

  static String appColorScheme = "#002433";

  static String appColorSchemeGradient1 = '#002433';

  static String appColorSchemeGradient2 = '#002433';

  static const String privacyPolicyUrl =
      'https://spn21.spondan.com/wavemall/privacy-policy';

  static bool googleLogin = false;

  static bool facebookLogin = false;

  static bool appleLogin = false;

  static bool isDemo = false;

  static bool isPasswordChange = false;
}
