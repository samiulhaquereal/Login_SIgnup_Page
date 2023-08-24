import 'package:flutter/material.dart';

import '../../../constands/colors.dart';

class TElevatedButtonTheme{
  TElevatedButtonTheme._();


  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: tWhiteColor,
        backgroundColor: tSecondaryColor,
        side: BorderSide(
          color: tSecondaryColor,
        ),
        padding: EdgeInsets.symmetric(vertical: 10)),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: tSecondaryColor,
        backgroundColor: tWhiteColor,
        side: BorderSide(
          color: tSecondaryColor,
        ),
        padding: EdgeInsets.symmetric(vertical: 10)),
  );
}