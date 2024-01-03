import 'package:flutter/material.dart';
import 'package:notly/utils/constants/colors.dart';

class NNIconButtonTheme {
  NNIconButtonTheme._();
  static final _lightIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      fixedSize: const MaterialStatePropertyAll(Size(170, 45)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      backgroundColor: const MaterialStatePropertyAll(green),
    ),
  );

  static get lightIconButton => _lightIconButtonTheme;

  //custom dark mode icon button theme data
  static final _darkIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
        fixedSize: const MaterialStatePropertyAll(Size(170, 46)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
        backgroundColor: const MaterialStatePropertyAll(green)),
  );

  static get darkIconButton => _darkIconButtonTheme;
}
