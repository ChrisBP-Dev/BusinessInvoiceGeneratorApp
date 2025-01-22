import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_exceptions.dart';
import 'package:business_invoice_generator_app/src/core/validators/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// Service that handles authentication with Firebase Auth
class AuthService {
  const AuthService({
    required FirebaseAuth auth,
  }) : _auth = auth;

  final FirebaseAuth _auth;

  /// Returns the current user
  User? get currentUser => _auth.currentUser;

  /// Returns a stream of auth state changes
  Stream<User?> authStateChanges() => _auth.authStateChanges();

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    // Validate email format
    const EmailValidator().validate(email).fold(
          (failure) => throw AuthException(
            failure.message,
            AuthErrorType.invalidEmailError,
          ),
          (_) => null,
        );

    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e, st) {
      final errorType = switch (e.code) {
        'user-not-found' => AuthErrorType.userNotFoundError,
        'wrong-password' => AuthErrorType.wrongPasswordError,
        'invalid-email' => AuthErrorType.invalidEmailError,
        'user-disabled' => AuthErrorType.userDisabledError,
        _ => AuthErrorType.signInEmailAndPasswordError,
      };
      Error.throwWithStackTrace(
        AuthException(e.message ?? '$e', errorType),
        st,
      );
    }
  }

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    // Validate email format
    const EmailValidator().validate(email).fold(
          (failure) => throw AuthException(
            failure.message,
            AuthErrorType.invalidEmailError,
          ),
          (_) => null,
        );

    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e, st) {
      final errorType = switch (e.code) {
        'email-already-in-use' => AuthErrorType.emailAlreadyInUseError,
        'weak-password' => AuthErrorType.weakPasswordError,
        'invalid-email' => AuthErrorType.invalidEmailError,
        _ => AuthErrorType.signUpEmailAndPasswordError,
      };
      Error.throwWithStackTrace(
        AuthException(e.message ?? '$e', errorType),
        st,
      );
    }
  }

  Future<void> resetPassword(String email) async {
    // Validate email format
    const EmailValidator().validate(email).fold(
          (failure) => throw AuthException(
            failure.message,
            AuthErrorType.invalidEmailError,
          ),
          (_) => null,
        );

    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e, st) {
      final errorType = switch (e.code) {
        'user-not-found' => AuthErrorType.userNotFoundError,
        'invalid-email' => AuthErrorType.invalidEmailError,
        _ => AuthErrorType.resetPasswordError,
      };
      Error.throwWithStackTrace(
        AuthException(e.message ?? '$e', errorType),
        st,
      );
    }
  }

  Future<void> signInAnonymously() async {
    try {
      await _auth.signInAnonymously();
    } on FirebaseAuthException catch (e, st) {
      Error.throwWithStackTrace(
        AuthException(
          e.message ?? '$e',
          AuthErrorType.signInAnonymouslyError,
        ),
        st,
      );
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e, st) {
      Error.throwWithStackTrace(
        AuthException(
          e.message ?? '$e',
          AuthErrorType.signOutError,
        ),
        st,
      );
    }
  }
}
