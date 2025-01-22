/// Represents all possible authentication errors
enum AuthErrorType {
  signInEmailAndPasswordError,
  signUpEmailAndPasswordError,
  signInAnonymouslyError,
  signOutError,
  resetPasswordError,
  emailAlreadyInUseError,
  weakPasswordError,
  invalidEmailError,
  userNotFoundError,
  wrongPasswordError,
  userDisabledError,
}

/// Custom exception for authentication errors
class AuthException implements Exception {
  const AuthException(this.message, this.type);

  final String message;
  final AuthErrorType type;

  @override
  String toString() => 'AuthException: $message (${type.name})';
}
