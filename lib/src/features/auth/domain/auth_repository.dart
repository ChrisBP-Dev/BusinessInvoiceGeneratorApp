import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_service_provider.dart';
import 'package:business_invoice_generator_app/src/features/auth/data/firebase_auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

/// Repository that handles authentication operations
abstract class AuthRepository {
  /// Returns a stream of auth state changes
  Stream<AppUser?> authStateChanges();

  /// Returns the current user
  AppUser? get currentAppUser;

  /// Signs in with email and password
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
    String email,
    String password,
  );

  /// Signs up with email and password
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword(
    String email,
    String password,
  );

  /// Sends a password reset email
  Future<Either<AuthFailure, Unit>> resetPassword(String email);

  /// Signs in anonymously
  Future<Either<AuthFailure, Unit>> signInAnonymously();

  /// Signs out
  Future<Either<AuthFailure, Unit>> signOut();
}

/// Provider for AuthRepository
final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => FirebaseAuthRepository(ref.watch(authServiceProvider)),
);

/// Provider for auth state changes stream
final authStateChangesProvider = StreamProvider<AppUser?>((ref) {
  return ref.watch(authRepositoryProvider).authStateChanges();
});

/// Provider for current user
final currentAppUserProvider = Provider<AppUser?>((ref) {
  return ref.watch(authRepositoryProvider).currentAppUser;
});
