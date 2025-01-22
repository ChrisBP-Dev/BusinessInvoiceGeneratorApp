import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_exceptions.dart';
import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_service.dart';
import 'package:business_invoice_generator_app/src/features/auth/data/firebase_auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_failure.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements AuthService {}

class MockUser extends Mock implements firebase_auth.User {}

void main() {
  late MockAuthService authService;
  late FirebaseAuthRepository repository;
  late MockUser mockUser;

  setUp(() {
    authService = MockAuthService();
    repository = FirebaseAuthRepository(authService);
    mockUser = MockUser();

    // Setup default mock user values
    when(() => mockUser.uid).thenReturn('test-uid');
    when(() => mockUser.email).thenReturn('test@example.com');
  });

  group('FirebaseAuthRepository', () {
    group('signInWithEmailAndPassword', () {
      test('returns right(unit) on success', () async {
        when(
          () => authService.signInWithEmailAndPassword(
            any(),
            any(),
          ),
        ).thenAnswer((_) async {});

        final result = await repository.signInWithEmailAndPassword(
          'email@example.com',
          'password',
        );

        expect(result.isRight(), true);
      });

      test('returns left(AuthFailure) on AuthException', () async {
        when(
          () => authService.signInWithEmailAndPassword(
            any(),
            any(),
          ),
        ).thenThrow(
          const AuthException(
            'invalid email',
            AuthErrorType.invalidEmailError,
          ),
        );

        final result = await repository.signInWithEmailAndPassword(
          'invalid-email',
          'password',
        );

        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure, const AuthFailure.invalidEmail()),
          (_) => fail('Should not succeed'),
        );
      });
    });

    group('currentAppUser', () {
      test('returns null when no user is signed in', () {
        when(() => authService.currentUser).thenReturn(null);
        expect(repository.currentAppUser, isNull);
      });

      test('returns AppUser when user is signed in', () {
        when(() => authService.currentUser).thenReturn(mockUser);
        final appUser = repository.currentAppUser;
        expect(appUser?.id, 'test-uid');
        expect(appUser?.email, 'test@example.com');
      });
    });

    // Add more test groups for other methods...
  });
}
