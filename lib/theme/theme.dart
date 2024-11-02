import 'package:dimla_express/utills/colors.dart';
import 'package:flutter/material.dart';

class CustomTheme{

  static final lightTheme=ThemeData(
    primaryColor: AppColors.primaryColor,
    brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.primaryColor,
      textTheme: const TextTheme(
        displayMedium: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontStyle: FontStyle.italic, // Italic style
        ),
        headlineMedium: TextStyle(
          color: Colors.white,
          fontSize: 50,
          fontStyle: FontStyle.normal, // Normal style
        ), // Light theme color
      ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 23, //20
      ),

    )
  );
  static final darkTheme=ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        displayMedium: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontStyle: FontStyle.italic, // Italic style
        ),
        headlineMedium: TextStyle(
          color: Colors.white,
          fontSize: 50,
          fontStyle: FontStyle.normal, // Normal style
        ),// Light theme color
      ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 23, //20
      ),
    )
  );

}