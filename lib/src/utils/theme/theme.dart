import 'package:flutter/material.dart';
import 'package:login_signup/src/utils/theme/widget_theme/text_theme.dart';


class TAppTheme{

  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.deepPurple,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom())
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
  );
}