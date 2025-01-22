import 'package:flutter/foundation.dart';

extension Uint8ListX on Uint8List {
  /// Converts Uint8List to String using character codes.
  ///
  /// This is primarily used for image data conversion in the application,
  /// specifically in the business logo picker functionality.
  String get codeUnitsString => String.fromCharCodes(this);

  /// Check if data represents a valid URL string.
  ///
  /// Returns true if the data can be converted to a valid URL with scheme and authority.
  bool get isValidUrl {
    final url = codeUnitsString;
    if (url.isEmpty) return false;

    try {
      final uri = Uri.parse(url);
      return uri.hasScheme && uri.hasAuthority;
    } on FormatException {
      return false;
    }
  }
}
