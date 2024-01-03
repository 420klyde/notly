import 'package:flutter/material.dart';
import 'package:notly/utils/constants/colors.dart';
import 'package:notly/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:notly/utils/theme/custom_themes/icon_button_theme.dart';
import 'package:notly/utils/theme/custom_themes/icon_theme.dart';
import 'package:notly/utils/theme/custom_themes/text_theme.dart';
import 'package:notly/utils/theme/custom_themes/outlined_button_theme.dart';

//custom themes
class NotlyTheme {
  //make constructor private to prevent it from being instantiated
  NotlyTheme._();

  //custom light theme
  static final lightTheme = ThemeData(
    appBarTheme: NNAppBarTheme.lightAppBarTheme,
    textTheme: NNTextTheme.lightTextTheme,
    scaffoldBackgroundColor: white,
    iconTheme: NNIconTheme.lightIconTheme,
    iconButtonTheme: NNIconButtonTheme.lightIconButton,
    outlinedButtonTheme: NNOutlinedButtonTheme.lightOutlinedButtonTheme,
    primaryColor: green,
  );

  //custom dark theme
  static final darkTheme = ThemeData(
    appBarTheme: NNAppBarTheme.darkAppBarTheme,
    textTheme: NNTextTheme.darkTextTheme,
    scaffoldBackgroundColor: faintBlack,
    iconTheme: NNIconTheme.darkIconTheme,
    iconButtonTheme: NNIconButtonTheme.darkIconButton,
    outlinedButtonTheme: NNOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
