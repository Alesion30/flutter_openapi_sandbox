import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'font_size.dart';

class AppTextTheme {
  factory AppTextTheme() {
    final normalRegular = GoogleFonts.notoSans(
      textStyle: const TextStyle(fontWeight: FontWeight.w400),
    );
    return AppTextTheme._(
      textTheme: GoogleFonts.notoSansTextTheme(),
      h10: const TextStyle(fontSize: FontSize.pt10).merge(normalRegular),
      h20: const TextStyle(fontSize: FontSize.pt12).merge(normalRegular),
      h30: const TextStyle(fontSize: FontSize.pt14).merge(normalRegular),
      h40: const TextStyle(fontSize: FontSize.pt16).merge(normalRegular),
      h50: const TextStyle(fontSize: FontSize.pt20).merge(normalRegular),
      h60: const TextStyle(fontSize: FontSize.pt24).merge(normalRegular),
      h70: const TextStyle(fontSize: FontSize.pt32).merge(normalRegular),
      h80: const TextStyle(fontSize: FontSize.pt40).merge(normalRegular),
      h90: const TextStyle(fontSize: FontSize.pt48).merge(normalRegular),
      h100: const TextStyle(fontSize: FontSize.pt60).merge(normalRegular),
    );
  }

  const AppTextTheme._({
    required this.textTheme,
    required this.h10,
    required this.h20,
    required this.h30,
    required this.h40,
    required this.h50,
    required this.h60,
    required this.h70,
    required this.h80,
    required this.h90,
    required this.h100,
  });

  final TextTheme textTheme;
  final TextStyle h10;
  final TextStyle h20;
  final TextStyle h30;
  final TextStyle h40;
  final TextStyle h50;
  final TextStyle h60;
  final TextStyle h70;
  final TextStyle h80;
  final TextStyle h90;
  final TextStyle h100;
}
