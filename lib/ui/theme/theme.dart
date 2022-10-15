import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'color_theme.dart';
import 'text_theme.dart';

final themeProvider = Provider<AppTheme>((ref) => AppTheme.light());

class AppTheme {
  factory AppTheme.light() {
    const mode = ThemeMode.light;
    final appColors = AppColorTheme().light;
    final themeData = ThemeData.light().copyWith(
      useMaterial3: false,
      textTheme: AppTextTheme().textTheme,
      colorScheme: appColors,
    );
    return AppTheme._(
      mode: mode,
      data: themeData,
      textTheme: AppTextTheme(),
      appColors: appColors,
    );
  }

  AppTheme._({
    required this.mode,
    required this.data,
    required this.textTheme,
    required this.appColors,
  });

  final ThemeMode mode;
  final ThemeData data;
  final AppTextTheme textTheme;
  final ColorScheme appColors;
}
