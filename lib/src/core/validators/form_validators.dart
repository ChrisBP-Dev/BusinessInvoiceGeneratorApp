/// A collection of common form validation functions
class FormValidators {
  const FormValidators._();

  /// Validates if a numeric value is valid, positive and non-zero
  static String? validateNumber(
    String? value, {
    String? errorMessage,
    bool allowZero = false,
    bool allowNegative = false,
  }) {
    if (value == null || value.isEmpty) {
      return 'This field cannot be empty';
    }

    final number = double.tryParse(value);
    if (number == null) {
      return errorMessage ?? 'Please enter a valid number';
    }

    if (!allowZero && number == 0) {
      return 'The value cannot be zero';
    }

    if (!allowNegative && number < 0) {
      return 'The value cannot be negative';
    }

    return null;
  }

  /// Validates if a price value is valid
  static String? validatePrice(String? value) {
    return validateNumber(
      value,
      errorMessage: 'Please enter a valid price',
    );
  }

  /// Validates if a required field is not empty
  static String? validateRequired(String? value) {
    return value?.trim().isEmpty ?? true ? 'This field is required' : null;
  }
}
