import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    fontFamily: 'Nunito Sans',
    primaryColor: primaryColor,
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: primaryColor,
        ),
    scaffoldBackgroundColor: white,
  );

  static const Color primaryColor = Color(0xff53b175);
  static const Color primaryColor1 = Color(0xffb0dabf);

  static const Color white = Color(0xffffffff);
  //static const Color statusWhite70 = Color(0xfffcfcb2);

  static const Color textColor1 = Color(0xffffffff);
  static const Color textColor2 = Color(0xfffcfcfc);
  static const Color textColor3 = Color(0xfffff9ff);
  static const Color textColor4 = Color(0xff030303);
  static const Color textColor5 = Color(0xff828282);
  static const Color textColor6 = Color(0xff181725);
  static const Color textColor7 = Color(0xff7c7c7c);
  static const Color textColor8 = Color(0xffe2e2e2);
  static const Color textColor9 = Color(0xff717171);

  static const Color buttonBlue = Color(0xff5383ec);

  static const TextStyle extraLargeBold = TextStyle(
    fontFamily: 'Nunito Sans',
    fontSize: 48,
    fontWeight: FontWeight.w900,
    height: 0.6,
  );

  static const TextStyle displayLargeMedium = TextStyle();
}
