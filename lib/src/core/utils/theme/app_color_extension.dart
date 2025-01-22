import 'package:flutter/material.dart';

extension AppColorX on Color? {
  Color get orDefault => this ?? Colors.blue;

  List<Color> get getColorsList {
    final hslColor = HSLColor.fromColor(orDefault);
    final darkerColor = hslColor.withLightness(hslColor.lightness * 0.7);
    return [orDefault, darkerColor.toColor()];
  }

  Gradient get getLinearGradient => LinearGradient(colors: getColorsList);
}

extension ColorX on Color {
  String toHex({bool includeAlpha = false}) {
    final alpha =
        includeAlpha ? (a * 255).toInt().toRadixString(16).padLeft(2, '0') : '';
    final red = (r * 255).toInt().toRadixString(16).padLeft(2, '0');
    final green = (g * 255).toInt().toRadixString(16).padLeft(2, '0');
    final blue = (b * 255).toInt().toRadixString(16).padLeft(2, '0');
    return '#$alpha$red$green$blue';
  }
}
