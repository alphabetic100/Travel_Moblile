import 'package:flutter/material.dart';

class CustomTheme {
  //light Theme
  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.black,
    buttonTheme: const ButtonThemeData(
      focusColor: Colors.blue,
      buttonColor: Colors.blue,
    ),
  );
  //Dark Theme
  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.white,
    buttonTheme: const ButtonThemeData(
      focusColor: Colors.blue,
      buttonColor: Colors.blue,
    ),
  );
}
