import 'package:flutter/material.dart';
import 'package:notly/routes/home_screen.dart';
import 'package:notly/utils/theme/themes.dart';

void main() => runApp(const NotlyApp());

class NotlyApp extends StatelessWidget {
  const NotlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notly : write down beautiful memories',
      debugShowCheckedModeBanner: false,

      //
      theme: NotlyTheme.lightTheme,
      darkTheme: NotlyTheme.darkTheme,
      themeMode: ThemeMode.system,

      home: HomeScreen(),
    );
  }
}
