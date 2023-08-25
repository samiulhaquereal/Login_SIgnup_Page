
import 'package:flutter/material.dart';
import 'package:login_signup/src/constands/colors.dart';

class TTextFormFieldTheme{
  TTextFormFieldTheme._();


  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: tSecondaryColor),
      prefixIconColor: tSecondaryColor,
      border: OutlineInputBorder(),
      labelStyle: TextStyle(color: tSecondaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: tSecondaryColor)
      )
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: tSecondaryColor),
      prefixIconColor: Colors.white,
      border: OutlineInputBorder(),
      labelStyle: TextStyle(color: Colors.white),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: Colors.white)
      )
  );

}