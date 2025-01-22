extension SequentialNumberFormatX on int {
  static String _formatNumber({required String prefix, required int number}) {
    const totalFormattedLength = 6;
    final length = number.toString().length;
    final padding = totalFormattedLength - length;
    return '$prefix${number.toString().padLeft(padding, '0')}';
  }

  String get formatInvoiceNumber {
    return _formatNumber(prefix: 'INV-', number: this);
  }
}
