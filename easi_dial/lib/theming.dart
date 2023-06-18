import 'package:flutter/material.dart';

var primaryColor = const Color(0xFF337900);
var primaryColorDark = const Color(0xFF318B00);

var lightThemeData = ThemeData(
  primaryColor: primaryColor,
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  indicatorColor: primaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  cardTheme: CardTheme(
    elevation: 1,
    shadowColor: primaryColor,
    surfaceTintColor: primaryColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: primaryColor)),
  ),
  drawerTheme: DrawerThemeData(surfaceTintColor: primaryColor),
  popupMenuTheme: PopupMenuThemeData(surfaceTintColor: primaryColor),
  dialogTheme: DialogTheme(surfaceTintColor: primaryColor),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      surfaceTintColor: MaterialStateProperty.resolveWith((states) {
        return primaryColor;
      }),
      textStyle: MaterialStateProperty.resolveWith((states) {
        return TextStyle(color: primaryColor);
      }),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith((states) {
        return TextStyle(color: primaryColor);
      }),
      iconColor: MaterialStateProperty.resolveWith((states) {
        return primaryColor;
      }),
    ),
  ),
);

var darkThemeData = ThemeData(
  primaryColor: primaryColorDark,
  useMaterial3: true,
  brightness: Brightness.dark,
  indicatorColor: primaryColorDark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  cardTheme: CardTheme(
    elevation: 1,
    shadowColor: primaryColorDark,
    surfaceTintColor: primaryColorDark,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: primaryColorDark)),
  ),
  drawerTheme: DrawerThemeData(surfaceTintColor: primaryColorDark),
  popupMenuTheme: PopupMenuThemeData(surfaceTintColor: primaryColorDark),
  dialogTheme: DialogTheme(surfaceTintColor: primaryColorDark),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      surfaceTintColor: MaterialStateProperty.resolveWith((states) {
        return primaryColorDark;
      }),
      textStyle: MaterialStateProperty.resolveWith((states) {
        return TextStyle(color: primaryColorDark);
      }),
    ),
  ),
);
