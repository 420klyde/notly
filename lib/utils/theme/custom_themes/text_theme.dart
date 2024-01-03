//light mode text theme
import 'package:flutter/material.dart';
import 'package:notly/utils/constants/colors.dart';

//headline 1-6 are obsolete
class NNTextTheme {
  //custom light mode text theme
  static final lightTextTheme = TextTheme(
    headlineLarge:
        const TextStyle().copyWith(fontSize: 25, fontWeight: FontWeight.bold),
    headlineMedium:
        const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.bold),
    //
    titleLarge:
        const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w600),

    //
    labelLarge: const TextStyle()
        .copyWith(fontSize: 13, fontWeight: FontWeight.bold, color: lightGrey),
    labelMedium: const TextStyle()
        .copyWith(fontSize: 16, fontWeight: FontWeight.w400, color: white),
    //
    bodyLarge: const TextStyle().copyWith(fontSize: 14, color: grey),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 14, color: grey, fontWeight: FontWeight.w500),
  );

  //custom dark mode text theme
  static final darkTextTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 25, fontWeight: FontWeight.bold, color: white),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: white),
    //
    titleLarge: const TextStyle()
        .copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: white),
    labelLarge: const TextStyle()
        //
        .copyWith(fontSize: 13, fontWeight: FontWeight.bold, color: faintWhite),
    labelMedium: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: white), //created specially for the add new note button

    //
    bodyLarge: const TextStyle().copyWith(fontSize: 14, color: faintWhite),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 14, color: faintWhite, fontWeight: FontWeight.w300),
  );
}
