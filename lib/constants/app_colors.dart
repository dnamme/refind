import 'package:flutter/material.dart';

class AppColors {
  static const Color PRIMARY = Color(0xFF6EDBA9);
  static const Color PRIMARY87 = Color(0xFF82EFBC);

  static const Color SECONDARY = Color(0xFF006D43); // darker
  static const Color SECONDARY60 = Color(0xFF3CA26F);
  static const Color SECONDARY70 = Color(0xFF5ABE88);

  static const Color TERTIARY = Color(0xFF63FEAD); // lighter

  static const Color SURFACE = Color(0xFFF8FAF6);
  static const Color ON_SURFACE = Color(0xFF404943);

  static const Color DARK_GRAY = Color(0xFF1C1C1D);

  static const LinearGradient GRADIENT_BLACK = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0x00BAEAFF),
      Color(0x3C000000),
    ],
  );

  static const LinearGradient GRADIENT_PRIMARY_TO_BOTTOM = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF8BF8C4),
      Color(0xFF63FEAD),
    ],
  );

  static const LinearGradient GRADIENT_SEAFOAM_TO_BOTTOM = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF4DDCA0),
      Color(0xFF28B5DF),
    ],
  );
}
