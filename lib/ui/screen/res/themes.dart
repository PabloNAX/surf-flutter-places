import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Color(0xfff5f5f5),
  primaryColor: Color(0xFF252849),
  primaryColorLight: Color(0xff3B3E5B),
  accentColor: Color(0xff4CAF50),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    // unselectedItemColor: Colors.white,
  ),
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: Color(0xFF7C7E92),
    labelStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
    ),
    labelColor: Colors.white,
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
    ),
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: Color(0xff3B3E5B),
    ),
  ),
  textTheme: TextTheme(
    subtitle1: TextStyle(
      color: Color(0xFF3B3E5B),
      fontSize: 16,
      height: 1.25,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: TextStyle(
      color: Colors.white,
      fontSize: 14,
      height: 1.25,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      color: Color(0xFF7C7E92),
      fontSize: 14,
      height: 1.28,
      fontWeight: FontWeight.w400,
    ),
    headline5: TextStyle(
      color: Color(0xFF252849),
      fontWeight: FontWeight.w700,
      fontSize: 32.0,
      height: 1.125,
    ),
    headline6: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 24.0,
      color: Color(0xFF252849),
    ),
  ),
  primaryTextTheme: TextTheme(
    subtitle1: TextStyle(
      color: Color(0xFF3B3E5B),
      fontSize: 16,
      height: 1.25,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: TextStyle(
      color: Color(0xFF252849),
      fontSize: 14,
      height: 1.25,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      color: Color(0xff3B3E5B),
      fontSize: 14,
      height: 1.28,
      fontWeight: FontWeight.w400,
    ),
    headline5: TextStyle(
      color: Color(0xFF252849),
      fontWeight: FontWeight.w700,
      fontSize: 32.0,
      height: 1.125,
    ),
    headline6: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 24.0,
      color: Color(0xFF252849),
    ),
  ),
  accentTextTheme: TextTheme(
    bodyText1: TextStyle(
      color: Color(0xff4CAF50),
      fontSize: 14,
      height: 1.28,
      fontWeight: FontWeight.w400,
    ),
  ),
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xff21222C),
  backgroundColor: Color(0xff1A1A20),
  primaryColor: Colors.white,
  primaryColorLight: Color(0xff3B3E5B),
  accentColor: Color(0xff4CAF50),
  tabBarTheme: TabBarTheme(
    labelColor: Color(0xff3B3E5B),
    unselectedLabelColor: Color(0xFF7C7E92),
    labelStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
    ),
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
    ),
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0xff21222C),
    unselectedItemColor: Colors.white,
  ),
  textTheme: TextTheme(
    subtitle1: TextStyle(
      color: Colors.white,
      fontSize: 16,
      height: 1.25,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: TextStyle(
      color: Colors.white,
      fontSize: 14,
      height: 1.25,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      color: Color(0xff7C7E92).withOpacity(0.56),
      fontSize: 14,
      height: 1.28,
      fontWeight: FontWeight.w400,
    ),
    headline5: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 32.0,
      height: 1.125,
    ),
    headline6: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 24.0,
      color: Colors.white,
    ),
  ),
  primaryTextTheme: TextTheme(
    subtitle1: TextStyle(
      color: Color(0xFF3B3E5B),
      fontSize: 16,
      height: 1.25,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: TextStyle(
      color: Color(0xFF7C7E92),
      fontSize: 14,
      height: 1.25,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      color: Colors.white,
      fontSize: 14,
      height: 1.28,
      fontWeight: FontWeight.w400,
    ),
    headline5: TextStyle(
      color: Color(0xFF252849),
      fontWeight: FontWeight.w700,
      fontSize: 32.0,
      height: 1.125,
    ),
    headline6: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 24.0,
      color: Color(0xFF252849),
    ),
  ),
  accentTextTheme: TextTheme(
    bodyText1: TextStyle(
      color: Color(0xff4CAF50),
      fontSize: 14,
      height: 1.28,
      fontWeight: FontWeight.w400,
    ),
  ),
);
