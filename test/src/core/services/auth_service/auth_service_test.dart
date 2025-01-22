import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_exceptions.dart';
import 'package:business_invoice_generator_app/src/core/services/auth_service/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUserCredential extends Mock implements UserCredential {}

void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late AuthService authService;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    authService = AuthService(auth: mockFirebaseAuth);
  });

  group('AuthService', () {
    const email = 'test@example.com';
    const password = 'password123';
    const invalidEmail = 'invalid-email';

    test('signInWithEmailAndPassword validates email format', () async {
      expect(
        () => authService.signInWithEmailAndPassword(invalidEmail, password),
        throwsA(
          isA<AuthException>().having(
            (e) => e.type,
            'type',
            AuthErrorType.invalidEmailError,
          ),
        ),
      );

      verifyNever(
        () => mockFirebaseAuth.signInWithEmailAndPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      );
    });

    test('signInWithEmailAndPassword succeeds with valid credentials',
        () async {
      when(
        () => mockFirebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).thenAnswer((_) async => MockUserCredential());

      await authService.signInWithEmailAndPassword(email, password);

      verify(
        () => mockFirebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).called(1);
    });

    test('signUpWithEmailAndPassword validates email format', () async {
      expect(
        () => authService.signUpWithEmailAndPassword(invalidEmail, password),
        throwsA(
          isA<AuthException>().having(
            (e) => e.type,
            'type',
            AuthErrorType.invalidEmailError,
          ),
        ),
      );

      verifyNever(
        () => mockFirebaseAuth.createUserWithEmailAndPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      );
    });

    test('signUpWithEmailAndPassword succeeds with valid credentials',
        () async {
      when(
        () => mockFirebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).thenAnswer((_) async => MockUserCredential());

      await authService.signUpWithEmailAndPassword(email, password);

      verify(
        () => mockFirebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).called(1);
    });

    test('resetPassword validates email format', () async {
      expect(
        () => authService.resetPassword(invalidEmail),
        throwsA(
          isA<AuthException>().having(
            (e) => e.type,
            'type',
            AuthErrorType.invalidEmailError,
          ),
        ),
      );

      verifyNever(
        () => mockFirebaseAuth.sendPasswordResetEmail(
          email: any(named: 'email'),
        ),
      );
    });

    test('resetPassword succeeds with valid email', () async {
      when(
        () => mockFirebaseAuth.sendPasswordResetEmail(email: email),
      ).thenAnswer((_) async {});

      await authService.resetPassword(email);

      verify(
        () => mockFirebaseAuth.sendPasswordResetEmail(email: email),
      ).called(1);
    });

    test('signInAnonymously succeeds', () async {
      when(
        () => mockFirebaseAuth.signInAnonymously(),
      ).thenAnswer((_) async => MockUserCredential());

      await authService.signInAnonymously();

      verify(() => mockFirebaseAuth.signInAnonymously()).called(1);
    });

    test('signOut succeeds', () async {
      when(
        () => mockFirebaseAuth.signOut(),
      ).thenAnswer((_) async {});

      await authService.signOut();

      verify(() => mockFirebaseAuth.signOut()).called(1);
    });
  });
}
