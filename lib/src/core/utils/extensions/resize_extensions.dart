import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';

extension DoubleX on double {
  /// Scales a size based on screen width.
  ///
  /// [screenWidth] Current screen width
  /// [minSize] Minimum allowed size
  ///
  /// The current double value is used as the maximum size.
  /// Returns a value between [minSize] and max size,
  /// proportionally calculated based on screen width.
  ///
  /// Example:
  /// ```dart
  /// final fontSize = 24.0.sizeScaled(
  ///   MediaQuery.of(context).size.width,
  ///   minSize: 16.0,
  /// );
  /// ```
  double sizeScaled(
    double screenWidth, {
    required double minSize,
  }) {
    assert(minSize >= 0, 'minSize cannot be negative');
    assert(minSize <= this, 'minSize cannot be greater than max size');

    const minBP = Breakpoint.mobile;
    const maxBP = Breakpoint.desktop;
    final maxSize = this;
    double scaledSize;

    if (screenWidth <= minBP) {
      // For screens smaller than minimum breakpoint
      scaledSize = minSize;
    } else if (screenWidth >= maxBP) {
      // For screens larger than maximum breakpoint
      scaledSize = maxSize;
    } else {
      // For screens between breakpoints
      final proportion = (screenWidth - minBP) / (maxBP - minBP);
      final calculatedResize = minSize + (maxSize - minSize) * proportion;
      scaledSize = calculatedResize.clamp(minSize, maxSize);
    }

    return scaledSize;
  }
}
