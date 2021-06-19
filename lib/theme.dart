import 'package:flutter/material.dart';

const Color primaryColor = Color(0xff000000);
const Color primaryColorLight = Color(0xff2c2c2c);
const Color primaryColorDark = Color(0xff000000);
const Color accentColor = Color(0xffe21e22);

final theme = ThemeData(
// Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: primaryColor,
  primaryColorLight: primaryColorLight,
  primaryColorDark: primaryColorDark,
  accentColor: accentColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
  ),
);
