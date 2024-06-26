import 'package:flutter/material.dart';
import 'package:internship/Utils/Themes/Appbartheme.dart';
import 'package:internship/Utils/Themes/elevatedbuttontheme.dart';
import 'package:internship/Utils/Themes/texttheme.dart';

class AppTheme {
  AppTheme._();
  //creating object of themedata class for light theme//
  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor:Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme:texttheme.lighttheme,
    elevatedButtonTheme:elevatedbuttontheme.lightelevatedbuttontheme,
    appBarTheme:appbartheme.lightappbar,
   
  );
   static ThemeData darktheme = ThemeData(
     useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor:Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme:texttheme.darktheme,
    elevatedButtonTheme:elevatedbuttontheme.darkelevatedbuttontheme,
    appBarTheme:appbartheme.darkappbar,
   );
}
