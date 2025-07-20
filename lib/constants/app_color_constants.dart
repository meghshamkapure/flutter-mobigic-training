import 'package:flutter/material.dart';

class AppColors {
  // defines  brand or main theme color of your app which can be for AppBar, background, FAB (Floating Action Button), Buttons, Active elements (e.g. selected tab)
  static const primary = Color(0xFF69C0FF); //

  // defines supporting/accent color used to complement the primary. Used for:Accent buttons, Chips, Progress indicators, Highlighted elements
  static const secondary = Colors.lightGreen;

  static const white = Colors.white;
  static const black = Colors.black;
  static const red = Colors.red;
  static const green = Colors.green;
  static const blue = Colors.blue;
  static const lightBlue = Colors.blue;
  static const yellow = Colors.yellow;
  static const orange = Colors.orange;
  static const purple = Colors.purple;
  static const pink = Colors.pink;
  static const grey = Colors.grey;
  static const brown = Colors.brown;
  static const teal = Colors.teal;

  // defined color for theme that changes with applied theme
  static Color tertiary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors
              .primary // light theme - light blue color
        : AppColors.secondary; // dark theme - vibrant medium blue
  }
}
