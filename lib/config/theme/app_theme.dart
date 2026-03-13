import 'package:flutter/material.dart';

class AppTheme {
  ThemeData theme() => ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff474E93), brightness: Brightness.dark),
    brightness: Brightness.dark,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
