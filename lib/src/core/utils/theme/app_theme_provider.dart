import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_provider.g.dart';

@riverpod
class AppTheme extends _$AppTheme {
  @override
  ThemeData build() {
    return ThemeData(
      colorSchemeSeed: Colors.blue,
    );
  }
}
