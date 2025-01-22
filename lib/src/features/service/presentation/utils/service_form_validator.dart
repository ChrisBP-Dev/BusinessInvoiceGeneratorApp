class ServiceFormValidator {
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter a valid Service Name';
    }
    return null;
  }

  static String? validatePrice(String? value) {
    if (value == null ||
        double.tryParse(value) == null ||
        double.parse(value) < 0) {
      return 'Please enter a valid Price';
    }
    return null;
  }
}
