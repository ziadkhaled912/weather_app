import 'package:flutter/material.dart';

class LightColors {
  static const Color primaryColor = Color(0xff92E3A9);
  static const Color secondaryColor = Color(0xff74C58B);
  static const Color background = Colors.white;
  static const Color error = Color(0xffCF4747);
  static const Color divider = Color(0xffEBEBEB);
  static const Color scaffoldBackgroundColor = Colors.white;
  static const Color surface = Color(0xff92E3A9);
  static const Color onPrimary = Color(0xff92E3A9);
  static const Color onSecondary = Color(0xff74C58B);
  static const Color onSurface = Color(0xff74C58B);
  static const Color onError = Color(0xffFFFFFF);
  static const Color onBackground = Colors.black;
  static const Color cardBG = Color(0xffF4F4F4);
  static const Color textGray = Color(0xff7C7C7C);

  static Color get textFieldFilledColor => const Color(0xffF4F6FC);
}

const lightColorScheme = ColorScheme(
  primary: LightColors.primaryColor,
  secondary: LightColors.secondaryColor,
  error: LightColors.error,
  surface: LightColors.surface,
  onError: LightColors.onError,
  onBackground: LightColors.onBackground,
  background: LightColors.background,
  onPrimary: LightColors.onPrimary,
  onSecondary: LightColors.onSecondary,
  onSurface: LightColors.onSurface,
  brightness: Brightness.light,
);