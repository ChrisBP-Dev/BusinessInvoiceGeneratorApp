import 'package:flutter/material.dart';

/// Class that defines the sizes used in the app
class Sizes {
  /// Global padding
  static const double globalPadding = 16;

  /// Padding 4
  static const double p4 = 4;

  /// Padding 8
  static const double p8 = 8;

  /// Padding 12
  static const double p12 = 12;

  /// Padding 14
  static const double p14 = 14;

  /// Padding 16
  static const double p16 = 16;

  /// Padding 20
  static const double p20 = 20;

  /// Padding 24
  static const double p24 = 24;

  /// Padding 32
  static const double p32 = 32;

  /// Padding 48
  static const double p48 = 48;

  /// Padding 64
  static const double p64 = 64;

  /// Icon size
  static const double iconSize = 24;
}

/// Constant gap widths
const gapW8 = SizedBox(width: Sizes.p8);
const gapW20 = SizedBox(width: Sizes.globalPadding);
const gapW64 = SizedBox(width: Sizes.p64);

/// Constant gap heights
const gapH8 = SizedBox(height: Sizes.p8);
const gapH14 = SizedBox(height: Sizes.p14);
const gapH20 = SizedBox(height: Sizes.globalPadding);
const gapH48 = SizedBox(height: Sizes.p48);

// constant A4 Aspect Ratio
const double aspectRatioA4 = 794 / 1123;
// const double aspectRatioA4 = 0.707;
