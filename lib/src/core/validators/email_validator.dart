import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_validator.freezed.dart';

/// Represents all possible email validation failures
@freezed
class EmailValidationFailure with _$EmailValidationFailure {
  const EmailValidationFailure._();

  /// Email is empty
  const factory EmailValidationFailure.empty() = _Empty;

  /// Email format is invalid
  const factory EmailValidationFailure.invalidFormat() = _InvalidFormat;

  /// Email domain is invalid or not allowed
  const factory EmailValidationFailure.invalidDomain() = _InvalidDomain;

  /// Email length exceeds maximum allowed
  const factory EmailValidationFailure.tooLong() = _TooLong;

  String get message => when(
        empty: () => 'Email cannot be empty',
        invalidFormat: () => 'Invalid email format',
        invalidDomain: () => 'Invalid email domain',
        tooLong: () => 'Email is too long',
      );
}

/// A robust email validator that follows RFC 5322 standards
class EmailValidator {
  const EmailValidator();

  static const int _maxLength = 254; // RFC 5321

  /// Validates an email address and returns Either a failure or the validated email
  Either<EmailValidationFailure, String> validate(String? email) {
    // Check for null or empty
    if (email == null || email.isEmpty) {
      return left(const EmailValidationFailure.empty());
    }

    // Check length
    if (email.length > _maxLength) {
      return left(const EmailValidationFailure.tooLong());
    }

    // Split email into local and domain parts
    final parts = email.split('@');
    if (parts.length != 2) {
      return left(const EmailValidationFailure.invalidFormat());
    }

    final localPart = parts[0];
    final domain = parts[1];

    // Check local part format
    if (!_isValidLocalPart(localPart)) {
      return left(const EmailValidationFailure.invalidFormat());
    }

    // Check if domain is empty (case of 'user@')
    if (domain.isEmpty) {
      return left(const EmailValidationFailure.invalidFormat());
    }

    // Check domain format and validity
    if (!_isValidDomain(domain)) {
      return left(const EmailValidationFailure.invalidDomain());
    }

    // If all checks pass, return normalized email
    return right(email.toLowerCase());
  }

  /// Validates the local part of the email address
  bool _isValidLocalPart(String local) {
    if (local.isEmpty || local.length > 64) return false;

    // Check for consecutive dots
    if (local.contains('..')) return false;

    // Check for leading or trailing dots
    if (local.startsWith('.') || local.endsWith('.')) return false;

    return RegExp(r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+$').hasMatch(local);
  }

  /// Validates if a domain is properly formatted and has valid TLD
  bool _isValidDomain(String domain) {
    if (domain.isEmpty || domain.length > 255) return false;

    // Check for consecutive dots
    if (domain.contains('..')) return false;

    // Check for leading or trailing dots
    if (domain.startsWith('.') || domain.endsWith('.')) return false;

    final parts = domain.split('.');
    if (parts.length < 2) return false;

    // Check each part of the domain
    for (final part in parts) {
      if (part.isEmpty || part.length > 63) return false;
      if (!RegExp(r'^[a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?$').hasMatch(part)) {
        return false;
      }
    }

    // Validate TLD (must be at least 2 characters and all letters)
    final tld = parts.last;
    if (tld.length < 2 || !RegExp(r'^[a-zA-Z]+$').hasMatch(tld)) {
      return false;
    }

    return true;
  }
}

/// Extension methods for easy email validation
extension EmailValidationX on String {
  /// Returns true if the string is a valid email address
  bool get isValidEmail => const EmailValidator().validate(this).isRight();

  /// Validates the email and returns Either a failure or the validated email
  Either<EmailValidationFailure, String> validateEmail() =>
      const EmailValidator().validate(this);
}
