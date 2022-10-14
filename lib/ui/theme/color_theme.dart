import 'package:flutter/material.dart';

class AppColorTheme {
  factory AppColorTheme() {
    return const AppColorTheme._(
      light: ColorScheme(
        brightness: Brightness.light,
        primary: Colors.blueGrey,
        onPrimary: Colors.white,
        secondary: Colors.green,
        onSecondary: Colors.white,
        background: Colors.white,
        onBackground: Colors.black,
        surface: Colors.grey,
        onSurface: Colors.black,
        error: Colors.red,
        onError: Colors.white,
      ),
    );
  }

  const AppColorTheme._({
    required this.light,
  });

  final ColorScheme light;
}
