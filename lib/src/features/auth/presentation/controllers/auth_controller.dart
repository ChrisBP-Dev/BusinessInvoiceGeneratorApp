import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Controller that handles authentication state and operations
class AuthController extends StateNotifier<AsyncValue<void>> {
  AuthController({
    required AuthRepository authRepository,
    required Ref ref,
  })  : _authRepository = authRepository,
        _ref = ref,
        super(const AsyncValue.data(null));

  final AuthRepository _authRepository;
  final Ref _ref;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = await _authRepository.signInWithEmailAndPassword(
        email,
        password,
      );
      return result.fold(
        (failure) => throw Exception(failure.message),
        (_) {
          _ref.invalidate(businessControllerProvider);
          return null;
        },
      );
    });
  }

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = await _authRepository.signUpWithEmailAndPassword(
        email,
        password,
      );
      return result.fold(
        (failure) => throw Exception(failure.message),
        (_) {
          _ref.invalidate(businessControllerProvider);
          return null;
        },
      );
    });
  }

  Future<void> resetPassword(String email) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = await _authRepository.resetPassword(email);
      return result.fold(
        (failure) => throw Exception(failure.message),
        (_) => null,
      );
    });
  }

  Future<void> signInAnonymously() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = await _authRepository.signInAnonymously();
      return result.fold(
        (failure) => throw Exception(failure.message),
        (_) => null,
      );
    });
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = await _authRepository.signOut();
      return result.fold(
        (failure) => throw Exception(failure.message),
        (_) => null,
      );
    });
  }
}

/// Provider that creates and manages the [AuthController]
final authControllerProvider =
    StateNotifierProvider<AuthController, AsyncValue<void>>(
  (ref) => AuthController(
    authRepository: ref.watch(authRepositoryProvider),
    ref: ref,
  ),
);
