import 'package:business_invoice_generator_app/src/features/auth/domain/auth_failure.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/auth/presentation/controllers/auth_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late ProviderContainer container;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    container = ProviderContainer(
      overrides: [
        authRepositoryProvider.overrideWithValue(mockAuthRepository),
      ],
    );
  });

  AuthController getController() =>
      container.read(authControllerProvider.notifier);

  test('initial state is AsyncData(null)', () {
    expect(container.read(authControllerProvider), const AsyncData<void>(null));
  });

  group('AuthController', () {
    group('signInWithEmailAndPassword', () {
      test(
        'success - updates state to AsyncData(null)',
        () async {
          when(
            () => mockAuthRepository.signInWithEmailAndPassword(
              any(),
              any(),
            ),
          ).thenAnswer((_) async => right(unit));

          await getController().signInWithEmailAndPassword('email', 'password');

          expect(
            container.read(authControllerProvider),
            const AsyncData<void>(null),
          );
        },
      );

      test(
        'failure - updates state to AsyncError',
        () async {
          const failure = AuthFailure.invalidEmail();
          when(
            () => mockAuthRepository.signInWithEmailAndPassword(
              any(),
              any(),
            ),
          ).thenAnswer((_) async => left(failure));

          await getController().signInWithEmailAndPassword('email', 'password');

          expect(
            container.read(authControllerProvider),
            isA<AsyncError>().having(
              (state) => state.error,
              'error',
              failure,
            ),
          );
        },
      );
    });

    // ... resto de las pruebas actualizadas de manera similar
  });
}
