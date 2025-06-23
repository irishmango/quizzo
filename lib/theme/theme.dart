import 'package:flutter/material.dart';

class AppColors {
  static Color appBlue = const Color.fromRGBO(64, 71, 240, 1);
  static Color appTeal = const Color.fromRGBO(0, 186, 147, 1);
  static Color appGreen = const Color.fromRGBO(16, 163, 86, 1);
  static Color appPink = const Color.fromRGBO(255, 154, 215, 1);
  static Color appRed = const Color.fromRGBO(231, 52, 0, 1);
  static Color appYellow = const Color.fromRGBO(252, 191, 3, 1);
  static Color darkBeige = const Color.fromRGBO(228, 221, 206, 1);
  static Color lightBeige = const Color.fromRGBO(241, 237, 231, 1);
  static Color appBlack = const Color.fromRGBO(29, 29, 29, 1);
}

ThemeData primaryTheme = ThemeData(

  // seed
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.darkBeige),

  // Scaffold color
  scaffoldBackgroundColor: AppColors.lightBeige,

  // app bar theme colors
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.darkBeige,
    foregroundColor: AppColors.appBlack,
    surfaceTintColor: Colors.transparent
  ),


  // Text theme
  fontFamily: "Anaheim",
  
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.appBlack,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 1
    ),
    bodySmall: TextStyle(
      color: AppColors.appBlack,
      fontSize: 14,
    ),
    headlineMedium: TextStyle(
      color: Colors.white,
      fontSize: 36,
      fontWeight: FontWeight.w600,
      letterSpacing: 1
    ),
    headlineSmall: TextStyle(
      color: AppColors.appBlack,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 1
    ),
    titleLarge: TextStyle(
      color: AppColors.appBlack,
      fontSize: 96,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: AppColors.appBlack,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),

    
  ),
);