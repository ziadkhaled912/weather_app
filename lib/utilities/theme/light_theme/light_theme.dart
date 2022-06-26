import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gam3ity/core/constants/locales.dart';
import 'package:gam3ity/utilities/theme/light_theme/light_colors.dart';

class Gam3ityLightTheme {
  ThemeData lightTheme({
    required Locale locale,
  }) {
    return ThemeData(
      fontFamily: locale == englishLocale? 'Poppins' : 'Inter',
      primaryColor: LightColors.primaryColor,
      accentColor: LightColors.secondaryColor,
      indicatorColor: lightColorScheme.secondary,
      colorScheme: lightColorScheme,
      scaffoldBackgroundColor: LightColors.scaffoldBackgroundColor,
      platform: TargetPlatform.iOS,
      backgroundColor: LightColors.background,
      errorColor: LightColors.error,
      canvasColor: Colors.white,
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: lightColorScheme.secondary,
        labelStyle: TextStyle(
          color: lightColorScheme.secondary,
          fontWeight: FontWeight.bold,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          backgroundColor: lightColorScheme.secondary,
          textStyle: TextStyle(color: lightColorScheme.primary),
          side: BorderSide(width: 5.0, color: lightColorScheme.secondary),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          primary: lightColorScheme.secondary,
          onPrimary: lightColorScheme.primary,
          textStyle: TextStyle(
            color: lightColorScheme.primary,
          ),
        ),
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      // primaryColorBrightness: Brightness.light,
      // buttonColor: lightColorScheme.secondary,
      // inputDecorationTheme: unAutherizedInputDecorationTheme,
      textTheme: TextTheme(
        headline1: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: LightColors.onBackground,
        ),
        headline2: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: LightColors.onBackground,
        ),
        headline3: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: LightColors.onBackground,
        ),
        headline4: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: LightColors.onBackground,
        ),
        headline5: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: LightColors.onBackground,
        ),
        headline6: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: LightColors.onBackground,
        ),
        bodyText1: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: LightColors.onBackground,
        ),
        bodyText2: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: LightColors.onBackground,
        ),
        subtitle2: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.normal,
          color: LightColors.onBackground,
        ),
        subtitle1: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: LightColors.onBackground,
        ),
        caption: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: LightColors.onBackground,
        ),
        button: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: lightColorScheme.onSecondary,
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: LightColors.secondaryColor,
        selectionColor: LightColors.secondaryColor,
        selectionHandleColor: LightColors.secondaryColor,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      cupertinoOverrideTheme: const CupertinoThemeData(
        primaryColor: LightColors.primaryColor,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: lightColorScheme.background,
        titleTextStyle: TextStyle(color: lightColorScheme.onBackground),
        contentTextStyle: TextStyle(color: lightColorScheme.onBackground),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: lightColorScheme.onBackground,
        ),
        elevation: 0,
        centerTitle: true,
        color: lightColorScheme.primary,
        actionsIconTheme: IconThemeData(
          color: lightColorScheme.onBackground,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: LightColors.divider,
        thickness: 1.5,
      ),
      cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightColorScheme.secondary,
        elevation: 3,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 12,
        backgroundColor: lightColorScheme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 5.0,
        backgroundColor: lightColorScheme.primary,
        selectedItemColor: lightColorScheme.secondary,
        // unselectedItemColor: lightColorScheme.hintColor.withOpacity(0.09),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      buttonTheme: ButtonThemeData(
        height: 56,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        buttonColor: LightColors.secondaryColor,
      ),
    );
  }
}
