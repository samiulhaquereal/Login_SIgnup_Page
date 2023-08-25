import 'package:flutter/material.dart';
import 'package:login_signup/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:login_signup/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:login_signup/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:login_signup/src/utils/theme/widget_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.deepPurple,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme:TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme:TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );
}
