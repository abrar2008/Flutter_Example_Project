import 'package:flutter/material.dart';

const primaryColor = Color(0xff1B5E1F);
const cardColor = Color(0xff000B49);
const secondaryColor = Color(0xffc02232);
const dividerColor = Color(0xfff3f3f9);
const dividerTextColor = Color(0xff4f4f4f);
const dividerIconColor = Color(0xff4f4f4f);
const errorColor = Colors.red;
const whiteColor = Colors.white;
const showcolor = Color(0xff000B49);

ThemeData darkTheme = ThemeData(
    primaryTextTheme: Typography(platform: TargetPlatform.iOS).white,
    // textTheme: Typography(platform: TargetPlatform.iOS).white,
    accentColor: Colors.red,
    brightness: Brightness.dark,

    primaryColor: Color(0xff0BA1AF),
    buttonTheme: ButtonThemeData(
      buttonColor:Color(0xff0BA1AF),
      disabledColor: Colors.grey,
    ));

ThemeData lightTheme = ThemeData(
    primaryTextTheme: Typography(platform: TargetPlatform.iOS).black,
    // textTheme: Typography(platform: TargetPlatform.iOS).black,
    accentColor: Colors.pink,
    brightness: Brightness.light,

    primaryColor: Color(0xff0BA1AF),
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xff0BA1AF),
      disabledColor: Color(0xff6fb2b3),

    )

);

