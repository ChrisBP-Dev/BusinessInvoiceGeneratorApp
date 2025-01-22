import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider for Firebase Auth instance
final firebaseAuthProvider = Provider<FirebaseAuth>(
  (ref) => FirebaseAuth.instance,
);

/// Provider for AuthService
final authServiceProvider = Provider<AuthService>(
  (ref) => AuthService(auth: ref.watch(firebaseAuthProvider)),
);
