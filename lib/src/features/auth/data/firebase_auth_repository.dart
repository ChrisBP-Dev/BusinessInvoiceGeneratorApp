import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_exceptions.dart';
import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_service.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_failure.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

class FirebaseAuthRepository implements AuthRepository {
  FirebaseAuthRepository(this.authService);
  final AuthService authService;

  AppUser? _converter(User? user) {
    if (user == null) return null;
    return AppUser(id: user.uid, email: user.email ?? '');
  }

  @override
  Stream<AppUser?> authStateChanges() => authService.authStateChanges().map(
        _converter,
      );

  @override
  AppUser? get currentAppUser => _converter(authService.currentUser);

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      await authService.signInWithEmailAndPassword(email, password);
      return right(unit);
    } on AuthException catch (e) {
      return left(AuthFailure.fromAuthException(e));
    } on FirebaseAuthException catch (e) {
      return left(
        AuthFailure.fromAuthException(
          AuthException(
            e.message ?? e.toString(),
            AuthErrorType.signInEmailAndPasswordError,
          ),
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      await authService.signUpWithEmailAndPassword(email, password);
      return right(unit);
    } on AuthException catch (e) {
      return left(AuthFailure.fromAuthException(e));
    } on FirebaseAuthException catch (e) {
      return left(
        AuthFailure.fromAuthException(
          AuthException(
            e.message ?? e.toString(),
            AuthErrorType.signUpEmailAndPasswordError,
          ),
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword(String email) async {
    try {
      await authService.resetPassword(email);
      return right(unit);
    } on AuthException catch (e) {
      return left(AuthFailure.fromAuthException(e));
    } on FirebaseAuthException catch (e) {
      return left(
        AuthFailure.fromAuthException(
          AuthException(
            e.message ?? e.toString(),
            AuthErrorType.resetPasswordError,
          ),
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInAnonymously() async {
    try {
      await authService.signInAnonymously();
      return right(unit);
    } on AuthException catch (e) {
      return left(AuthFailure.fromAuthException(e));
    } on FirebaseAuthException catch (e) {
      return left(
        AuthFailure.fromAuthException(
          AuthException(
            e.message ?? e.toString(),
            AuthErrorType.signInAnonymouslyError,
          ),
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await authService.signOut();
      return right(unit);
    } on AuthException catch (e) {
      return left(AuthFailure.fromAuthException(e));
    } on FirebaseAuthException catch (e) {
      return left(
        AuthFailure.fromAuthException(
          AuthException(e.message ?? e.toString(), AuthErrorType.signOutError),
        ),
      );
    }
  }
}
