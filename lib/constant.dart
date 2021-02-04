import 'package:flutter/material.dart';

class ColorPalette {
  static const primaryColor = Color(0xFFE4B374);
  static const primaryDarkColor = Color(0xFF3D2923);
  static const buttonTextColor = Color(0xFFFFEAE5);
  static const hintTextColor = Color(0xFFBB7654);
  static const labelTextColor = Color(0xFF865544);
}

class ThemeText {
  static const TextStyle buttonText = TextStyle(
    color: ColorPalette.buttonTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle headerText = TextStyle(
    fontSize: 20,
    color: ColorPalette.primaryDarkColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle secondaryText = TextStyle(
    fontSize: 16,
    color: ColorPalette.buttonTextColor,
  );
}
