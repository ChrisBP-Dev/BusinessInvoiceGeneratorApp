import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension StringX on String {
  /// Format phone number with flexible length
  /// Supports formats: (123) 456-7890 or +1 (123) 456-7890
  String get phoneNumberFormatted {
    // Remove any non-digit characters
    final digitsOnly = replaceAll(RegExp(r'[^\d]'), '');

    if (digitsOnly.length < 10) return this;

    final areaCode =
        digitsOnly.substring(digitsOnly.length - 10, digitsOnly.length - 7);
    final firstPart =
        digitsOnly.substring(digitsOnly.length - 7, digitsOnly.length - 4);
    final secondPart = digitsOnly.substring(digitsOnly.length - 4);

    // If number includes country code
    if (digitsOnly.length > 10) {
      final countryCode = digitsOnly.substring(0, digitsOnly.length - 10);
      return '+$countryCode ($areaCode) $firstPart-$secondPart';
    }

    return '($areaCode) $firstPart-$secondPart';
  }

  /// Convert to Uint8List
  Uint8List get charCode => Uint8List.fromList(codeUnits);

  /// Validate hex color with support for 3, 6, and 8 digit formats
  bool get isValidHexColor {
    if (isEmpty) return false;

    final hexRegExp =
        RegExp(r'^#(?:[0-9a-fA-F]{3}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$');
    return hexRegExp.hasMatch(this);
  }

  /// Convert hex string to color with support for different formats
  Color get colorFromHexColor {
    if (!isValidHexColor) return Colors.transparent;

    var hex = replaceAll('#', '');

    if (hex.length == 3) {
      // Convert 3-digit format to 6-digit
      hex = hex.split('').map((e) => '$e$e').join();
    }

    if (hex.length == 6) {
      // Add full opacity
      hex = 'FF$hex';
    }

    return Color(int.parse(hex, radix: 16));
  }

  /// Capitalize first letter of each word
  String get titleCase {
    if (isEmpty) return this;
    return split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }
}

extension StringOrNull on String? {
  /// Check if string is not null and not empty
  bool get isNotNullAndNotEmpty => this != null && this!.isNotEmpty;

  /// Check if string is null or empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Get string value or empty string if null
  String get orEmpty => this ?? '';
}
