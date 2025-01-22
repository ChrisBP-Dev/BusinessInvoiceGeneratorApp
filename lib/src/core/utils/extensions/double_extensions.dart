import 'package:intl/intl.dart';

extension DoubleX on double {
  static final _currencyFormat = NumberFormat.currency(
    symbol: r'$',
    decimalDigits: 2,
  );

  static final _compactCurrencyFormat = NumberFormat.compactCurrency(
    symbol: r'$',
    decimalDigits: 2,
  );

  static final _percentFormat = NumberFormat.percentPattern();

  /// Format as currency with full format (e.g. $1,234.56)
  String get priceFormat => _currencyFormat.format(this);

  /// Format as compact currency (e.g. $1.2K)
  String get compactPriceFormat => _compactCurrencyFormat.format(this);

  /// Format as percentage with 1 decimal place
  String get toPercentage => _percentFormat.format(this / 100);
}
