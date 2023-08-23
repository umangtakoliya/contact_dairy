import 'package:flutter/material.dart';

class appThemeData {
  static ThemeData Lighttheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.blueGrey,
    appBarTheme: AppBarTheme(),
  );
  static ThemeData Darktheme = ThemeData(
    useMaterial3:true,
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.blueAccent,
    textTheme : TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.cyan,
      )
    )
  );
}