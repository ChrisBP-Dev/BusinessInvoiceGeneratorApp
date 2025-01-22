import 'package:business_invoice_generator_app/src/core/validators/email_validator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';

void main() {
  const validator = EmailValidator();

  group('EmailValidator', () {
    test('should return empty failure for null or empty email', () {
      expect(
        validator.validate(null),
        equals(
          left<EmailValidationFailure, String>(
            const EmailValidationFailure.empty(),
          ),
        ),
      );

      expect(
        validator.validate(''),
        equals(
          left<EmailValidationFailure, String>(
            const EmailValidationFailure.empty(),
          ),
        ),
      );
    });

    test('should return too long failure for emails exceeding max length', () {
      final longEmail = 'a' * 255 + '@example.com';
      expect(
        validator.validate(longEmail),
        equals(
          left<EmailValidationFailure, String>(
            const EmailValidationFailure.tooLong(),
          ),
        ),
      );
    });

    test('should return invalid format failure for malformed local parts', () {
      final invalidEmails = [
        'plainaddress', // Missing @
        '@missinglocal.com', // Missing local part
        'missingat.com', // Missing @
        'missingdomain@', // Missing domain
        'two@@signs.com', // Multiple @
        'invalid<>chars@domain.com', // Invalid characters
        'spaces in@domain.com', // Spaces in local part
        'double..dots@domain.com', // Consecutive dots
        '.leading.dot@domain.com', // Leading dot
        'trailing.dot.@domain.com', // Trailing dot
      ];

      for (final email in invalidEmails) {
        expect(
          validator.validate(email),
          equals(
            left<EmailValidationFailure, String>(
              const EmailValidationFailure.invalidFormat(),
            ),
          ),
          reason: 'Failed for email: $email',
        );
      }
    });

    test('should return invalid domain failure for invalid domains', () {
      final invalidDomainEmails = [
        'test@domain', // Missing TLD
        'test@.com', // Empty domain part
        'test@domain-.com', // Hyphen at end of part
        'test@domain..com', // Consecutive dots
        'test@.domain.com', // Leading dot
        'test@domain.com.', // Trailing dot
        'test@domain.c', // Single char TLD
        'test@domain.123', // Numeric TLD
        'test@do&main.com', // Invalid characters
      ];

      for (final email in invalidDomainEmails) {
        expect(
          validator.validate(email),
          equals(
            left<EmailValidationFailure, String>(
              const EmailValidationFailure.invalidDomain(),
            ),
          ),
          reason: 'Failed for email: $email',
        );
      }
    });

    test('should return valid email for correct format', () {
      final validEmails = [
        'simple@example.com',
        'very.common@example.com',
        'disposable.style.email.with+symbol@example.com',
        'other.email-with-hyphen@example.com',
        'fully-qualified-domain@example.com',
        'user.name+tag+sorting@example.com',
        'x@example.com',
        'example-indeed@strange-example.com',
        'example@s.example',
        'test@domain.example',
        'test.email@domain.com',
        'test.1234@domain.com',
      ];

      for (final email in validEmails) {
        expect(
          validator.validate(email),
          equals(right<EmailValidationFailure, String>(email.toLowerCase())),
          reason: 'Failed for email: $email',
        );
      }
    });

    test('should convert email to lowercase when valid', () {
      const email = 'Test.Email@Example.COM';
      expect(
        validator.validate(email),
        equals(right<EmailValidationFailure, String>('test.email@example.com')),
      );
    });
  });

  group('EmailValidationFailure', () {
    test('should return correct message for each failure type', () {
      expect(
        const EmailValidationFailure.empty().message,
        equals('Email cannot be empty'),
      );

      expect(
        const EmailValidationFailure.invalidFormat().message,
        equals('Invalid email format'),
      );

      expect(
        const EmailValidationFailure.invalidDomain().message,
        equals('Invalid email domain'),
      );

      expect(
        const EmailValidationFailure.tooLong().message,
        equals('Email is too long'),
      );
    });
  });

  group('EmailValidationX extension', () {
    test('isValidEmail should return correct boolean value', () {
      expect('test@example.com'.isValidEmail, isTrue);
      expect('invalid-email'.isValidEmail, isFalse);
    });

    test('validateEmail should return Either type', () {
      expect(
        'test@example.com'.validateEmail(),
        equals(right<EmailValidationFailure, String>('test@example.com')),
      );

      expect(
        'invalid-email'.validateEmail(),
        equals(
          left<EmailValidationFailure, String>(
            const EmailValidationFailure.invalidFormat(),
          ),
        ),
      );
    });
  });
}
