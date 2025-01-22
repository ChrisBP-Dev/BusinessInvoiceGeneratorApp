import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

/// Represents all possible authentication failures
@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();

  // * Sign In Failures
  const factory AuthFailure.invalidEmail() = _InvalidEmail;
  const factory AuthFailure.wrongPassword() = _WrongPassword;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.userDisabled() = _UserDisabled;

  // * Sign Up Failures
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.weakPassword() = _WeakPassword;
  const factory AuthFailure.operationNotAllowed() = _OperationNotAllowed;

  // * Reset Password Failures
  const factory AuthFailure.resetPasswordFailed() = _ResetPasswordFailed;

  // * Generic Failures
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.networkError() = _NetworkError;
  const factory AuthFailure.unexpectedError() = _UnexpectedError;

  /// Creates an [AuthFailure] from an [AuthException]
  factory AuthFailure.fromAuthException(AuthException exception) {
    return switch (exception.type) {
      AuthErrorType.invalidEmailError => const AuthFailure.invalidEmail(),
      AuthErrorType.wrongPasswordError => const AuthFailure.wrongPassword(),
      AuthErrorType.userNotFoundError => const AuthFailure.userNotFound(),
      AuthErrorType.userDisabledError => const AuthFailure.userDisabled(),
      AuthErrorType.emailAlreadyInUseError =>
        const AuthFailure.emailAlreadyInUse(),
      AuthErrorType.weakPasswordError => const AuthFailure.weakPassword(),
      AuthErrorType.resetPasswordError =>
        const AuthFailure.resetPasswordFailed(),
      AuthErrorType.signInEmailAndPasswordError ||
      AuthErrorType.signUpEmailAndPasswordError ||
      AuthErrorType.signInAnonymouslyError ||
      AuthErrorType.signOutError =>
        const AuthFailure.serverError(),
    };
  }

  /// Returns the error message in English
  String get message => when(
        invalidEmail: () => 'Invalid email address',
        wrongPassword: () => 'Incorrect password',
        userNotFound: () => 'No account exists with this email',
        userDisabled: () => 'This account has been disabled',
        emailAlreadyInUse: () => 'Email is already in use',
        weakPassword: () => 'Password is too weak',
        operationNotAllowed: () => 'Operation not allowed',
        resetPasswordFailed: () => 'Failed to send password reset email',
        serverError: () => 'Server error',
        networkError: () => 'Network error',
        unexpectedError: () => 'Unexpected error',
      );
}
