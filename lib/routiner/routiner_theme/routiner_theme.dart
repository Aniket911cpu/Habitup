import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_color.dart';
import 'package:routiner_habit_tracker_app/routiner/routiner_globalclass/routiner_fontstyle.dart';

class RoutinerMythemes {
  static final lightTheme = ThemeData(
    primaryColor: RoutinerColor.black,
    textTheme: const TextTheme(),
    fontFamily: 'RobotoRegular',
    brightness: Brightness.light,
    scaffoldBackgroundColor: RoutinerColor.bgcolor,
    appBarTheme: AppBarTheme(
      iconTheme:  const IconThemeData(color: RoutinerColor.black),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: pregular.copyWith(
        color: RoutinerColor.black,
        fontSize: 16,
      ),
      color: RoutinerColor.transparent,
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: RoutinerColor.white,
    textTheme: const TextTheme(),
    fontFamily: 'RobotoRegular',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: RoutinerColor.white),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: pregular.copyWith(
        color: RoutinerColor.white,
        fontSize: 16,
      ),
      color: RoutinerColor.transparent,
    ),
  );
}