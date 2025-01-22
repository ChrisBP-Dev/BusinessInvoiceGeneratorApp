import 'package:intl/intl.dart';

/// Extensiones para el tipo [double]
extension DoubleX on double {
  /// Formatea el número como precio
  /// Ejemplo: 1234.5 -> $1,234.50
  String get priceFormat {
    final formatter = NumberFormat.currency(
      symbol: r'$',
      decimalDigits: 2,
    );
    return formatter.format(this);
  }

  /// Formatea el número como porcentaje
  /// Ejemplo: 0.15 -> 15%
  String get percentFormat {
    final formatter = NumberFormat.percentPattern();
    return formatter.format(this);
  }
}
