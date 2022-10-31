import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightThemeColors();

  late ThemeData theme;
  LightTheme() {
    theme = ThemeData(
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
        appBarTheme: AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15)))),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.green),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(
          onPrimary: Colors.purple,
          onSecondary: _lightColor._walledGarden,
        )),
        colorScheme: const ColorScheme.light(),
        checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateProperty.all(Colors.green),
            side: const BorderSide(color: Colors.red)),
        textTheme: ThemeData.light().textTheme.copyWith(
                subtitle1: TextStyle(
              fontSize: 20,
              color: _lightColor._textColor,
            )));
  }
}

class _LightThemeColors {
  final Color _textColor = Color.fromARGB(255, 0, 0, 0);
  final Color _walledGarden = Color.fromARGB(255, 27, 211, 61);
}
