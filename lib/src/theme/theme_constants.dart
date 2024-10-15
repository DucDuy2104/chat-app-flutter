import 'package:flutter/material.dart';

import '../constants/shared/colors.dart';
import '../constants/shared/fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: lightTextColor,
      fontWeight:  FontWeight.w500,
      height: 1.5,
      fontFamily: appFont,
      fontSize: 16
    ),
    titleMedium: TextStyle(
      color: lightTextColor,
      fontWeight: FontWeight.w400,
      height:1.5,
      fontFamily: appFont,
      fontSize: 14
    )
  )
);