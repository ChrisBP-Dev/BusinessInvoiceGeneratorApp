import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_failure.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/auth/presentation/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {
  @override
  Stream<AppUser?> authStateChanges() => Stream.value(
        const AppUser(
          id: 'test-user-id',
          email: 'test@example.com',
        ),
      );
}

void main() {
  late MockAuthRepository authRepository;

  setUp(() {
    authRepository = MockAuthRepository();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: ProviderScope(
        overrides: [
          authRepositoryProvider.overrideWithValue(authRepository),
        ],
        child: const SignInPage(),
      ),
    );
  }

  group('SignInPage', () {
    testWidgets('shows error on invalid credentials', (tester) async {
      when(
        () => authRepository.signInWithEmailAndPassword(any(), any()),
      ).thenAnswer(
        (_) async => left(const AuthFailure.invalidEmail()),
      );

      await tester.pumpWidget(createWidgetUnderTest());

      // Enter credentials
      await tester.enterText(
        find.byType(TextFormField).first,
        'test@example.com',
      );
      await tester.enterText(
        find.byType(TextFormField).last,
        'password',
      );

      // Tap sign in button and wait for error dialog
      await tester.tap(find.byKey(const Key('signInButton')));
      await tester.pumpAndSettle();

      // Verify error dialog is shown
      expect(
        find.byType(AlertDialog),
        findsOneWidget,
        reason: 'Error dialog should be shown after invalid credentials',
      );

      // Verify error message is shown in dialog
      expect(
        find.text('Invalid email address'),
        findsOneWidget,
        reason: 'Error message should be shown in dialog',
      );

      // Verify repository was called
      verify(
        () => authRepository.signInWithEmailAndPassword(
          'test@example.com',
          'password',
        ),
      ).called(1);
    });

    testWidgets('shows loading state during authentication', (tester) async {
      when(
        () => authRepository.signInWithEmailAndPassword(any(), any()),
      ).thenAnswer(
        (_) async {
          await Future<void>.delayed(const Duration(milliseconds: 50));
          return right<AuthFailure, Unit>(unit);
        },
      );

      await tester.pumpWidget(createWidgetUnderTest());

      // Enter credentials
      await tester.enterText(
        find.byType(TextFormField).first,
        'test@example.com',
      );
      await tester.enterText(
        find.byType(TextFormField).last,
        'password',
      );

      // Tap sign in button and verify loading state
      await tester.tap(find.byKey(const Key('signInButton')));
      await tester.pump();

      // Find the specific loading indicator in the sign in button
      expect(
        find.descendant(
          of: find.byKey(const Key('signInButton')),
          matching: find.byType(CircularProgressIndicator),
        ),
        findsOneWidget,
      );

      // Wait for authentication to complete
      await tester.pumpAndSettle();

      // Verify repository was called
      verify(
        () => authRepository.signInWithEmailAndPassword(
          'test@example.com',
          'password',
        ),
      ).called(1);
    });

    testWidgets('shows reset password dialog', (tester) async {
      when(
        () => authRepository.resetPassword(any()),
      ).thenAnswer((_) async => right(unit));

      await tester.pumpWidget(createWidgetUnderTest());

      // Tap forgot password button
      await tester.tap(find.byKey(const Key('forgotPasswordButton')));
      await tester.pump();

      // Verify dialog is shown
      expect(
        find.byType(AlertDialog),
        findsOneWidget,
        reason: 'Reset password dialog should be shown',
      );

      // Enter email
      await tester.enterText(
        find.descendant(
          of: find.byType(AlertDialog),
          matching: find.byType(TextFormField),
        ),
        'test@example.com',
      );
      await tester.pump();

      // Tap send button
      await tester.tap(find.text('Enviar'));
      await tester.pump();

      // Verify repository was called
      verify(
        () => authRepository.resetPassword('test@example.com'),
      ).called(1);
    });
  });
}
