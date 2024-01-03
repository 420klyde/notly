import 'package:flutter/material.dart';
import 'package:notly/utils/constants/colors.dart';

class NNOutlinedButtonTheme {
  //
  NNOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      fixedSize: const MaterialStatePropertyAll(Size(170, 45)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      backgroundColor: const MaterialStatePropertyAll(green),
    ),
  );

  //custom dark mode icon button theme data
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      fixedSize: const MaterialStatePropertyAll(Size(170, 46)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      backgroundColor: const MaterialStatePropertyAll(green),
    ),
  );
}
