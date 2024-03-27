// Flutter imports:
import 'package:wavemall/utils/styles.dart';
import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    primaryColor: AppStyles.appThemeColor,
    scaffoldBackgroundColor: Colors.white,
    unselectedWidgetColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.all<Color>(AppStyles.appThemeColor),
        backgroundColor:
            MaterialStateProperty.all<Color>(AppStyles.appThemeColor),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        color: AppStyles.appThemeColor,
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xff6A779A),
    ),
    shadowColor: Colors.grey.withOpacity(0.3),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    cardTheme: CardTheme(color: Colors.white),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 18.0,
        fontFamily: 'NRT',
      ),
      displayLarge: TextStyle(
        fontSize: 72.0,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        fontSize: 36.0,
        fontStyle: FontStyle.italic,
      ),
      bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'NRT'),
      titleSmall: TextStyle(
        fontSize: 14.0,
        fontFamily: 'NRT',
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 16.0,
        fontFamily: 'NRT',
        color: Colors.black,
      ),
      labelLarge: TextStyle(
        fontSize: 14.0,
        fontFamily: 'NRT',
        color: Colors.black,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  static final dark = ThemeData.dark().copyWith(
    primaryColor: AppStyles.appThemeColorDark,
    unselectedWidgetColor: Colors.black87,
    scaffoldBackgroundColor: Colors.black54,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.all<Color>(AppStyles.appThemeColorDark),
        backgroundColor:
            MaterialStateProperty.all<Color>(AppStyles.appThemeColorDark),
      ),
    ),
    shadowColor: Colors.transparent,
    cardTheme: CardTheme(color: Colors.black45),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        color: AppStyles.appThemeColorDark,
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xff8E99B7),
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontSize: 14.0,
        fontFamily: 'NRT',
      ),
      titleMedium: TextStyle(
        fontSize: 16.0,
        fontFamily: 'NRT',
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        fontSize: 14.0,
        fontFamily: 'NRT',
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 18.0,
        fontFamily: 'NRT',
        color: Colors.white,
      ),
      displayLarge: TextStyle(
        fontSize: 72.0,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        fontSize: 36.0,
        fontStyle: FontStyle.italic,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        fontFamily: 'NRT',
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
