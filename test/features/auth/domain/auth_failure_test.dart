import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_failure.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthFailure', () {
    test('fromAuthException maps invalid email error correctly', () {
      final failure = AuthFailure.fromAuthException(
        const AuthException(
          'Invalid email',
          AuthErrorType.invalidEmailError,
        ),
      );

      expect(failure, const AuthFailure.invalidEmail());
      expect(failure.message, 'Invalid email address');
    });

    test('fromAuthException maps wrong password error correctly', () {
      final failure = AuthFailure.fromAuthException(
        const AuthException(
          'Wrong password',
          AuthErrorType.wrongPasswordError,
        ),
      );

      expect(failure, const AuthFailure.wrongPassword());
      expect(failure.message, 'Incorrect password');
    });

    test('fromAuthException maps user not found error correctly', () {
      final failure = AuthFailure.fromAuthException(
        const AuthException(
          'User not found',
          AuthErrorType.userNotFoundError,
        ),
      );

      expect(failure, const AuthFailure.userNotFound());
      expect(
        failure.message,
        'No account exists with this email',
      );
    });

    test('fromAuthException maps email already in use error correctly', () {
      final failure = AuthFailure.fromAuthException(
        const AuthException(
          'Email already in use',
          AuthErrorType.emailAlreadyInUseError,
        ),
      );

      expect(failure, const AuthFailure.emailAlreadyInUse());
      expect(failure.message, 'Email is already in use');
    });

    test('fromAuthException maps weak password error correctly', () {
      final failure = AuthFailure.fromAuthException(
        const AuthException(
          'Weak password',
          AuthErrorType.weakPasswordError,
        ),
      );

      expect(failure, const AuthFailure.weakPassword());
      expect(failure.message, 'Password is too weak');
    });

    test('fromAuthException maps reset password error correctly', () {
      final failure = AuthFailure.fromAuthException(
        const AuthException(
          'Reset password failed',
          AuthErrorType.resetPasswordError,
        ),
      );

      expect(failure, const AuthFailure.resetPasswordFailed());
      expect(
        failure.message,
        'Failed to send password reset email',
      );
    });

    test('fromAuthException maps server error correctly', () {
      final failure = AuthFailure.fromAuthException(
        const AuthException(
          'Server error',
          AuthErrorType.signInEmailAndPasswordError,
        ),
      );

      expect(failure, const AuthFailure.serverError());
      expect(failure.message, 'Server error');
    });

    test('fromAuthException maps unexpected error correctly', () {
      final failure = AuthFailure.fromAuthException(
        const AuthException(
          'Unknown error',
          AuthErrorType.signOutError,
        ),
      );

      expect(failure, const AuthFailure.serverError());
      expect(failure.message, 'Server error');
    });
  });
}
