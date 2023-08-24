import 'package:flutter/material.dart';

import '../../../constands/colors.dart';

class TOutlinedButtonTheme{

  TOutlinedButtonTheme._();


  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(),
          foregroundColor: tSecondaryColor,
          side: BorderSide(
            color: tSecondaryColor,
          ),
          padding: EdgeInsets.symmetric(vertical: 10))
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(),
          foregroundColor: tWhiteColor,
          side: BorderSide(
            color: tWhiteColor,
          ),
          padding: EdgeInsets.symmetric(vertical: 10))
  );
}