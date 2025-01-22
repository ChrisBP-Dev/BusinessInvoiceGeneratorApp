import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_appbar.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/file_and_path.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart' hide AppBar;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../helpers/firebase_mock.dart';

class MockAuthRepository extends Mock implements AuthRepository {
  AppUser? _currentUser;

  @override
  Stream<AppUser?> authStateChanges() => Stream.value(_currentUser);

  @override
  AppUser? get currentAppUser => _currentUser;

  void setCurrentUser(AppUser? user) {
    _currentUser = user;
  }
}

class MockBusiness extends Mock implements Business {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late ProviderContainer container;

  setUpAll(() async {
    setupFirebaseAuthMocks();
    await Firebase.initializeApp();
  });

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    container = ProviderContainer(
      overrides: [
        authRepositoryProvider.overrideWithValue(mockAuthRepository),
      ],
    );
  });

  tearDown(() {
    try {
      container.read(businessControllerProvider.notifier).state =
          const AsyncData(null);
    } catch (e) {
      // Ignoramos errores si el contenedor ya fue eliminado
    }
    container.dispose();
  });

  Future<void> pumpApp(WidgetTester tester) async {
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: MaterialApp.router(
          routerConfig: container.read(goRouterProvider),
        ),
      ),
    );
    await tester.pump();
  }

  testWidgets('Autenticado con negocio - muestra business', (tester) async {
    // Configurar el estado inicial
    mockAuthRepository.setCurrentUser(
      const AppUser(id: 'test-user-id', email: 'test@example.com'),
    );

    final mockBusiness = MockBusiness();
    when(() => mockBusiness.id).thenReturn('test-id');
    when(() => mockBusiness.companyName).thenReturn('Test Company');
    when(() => mockBusiness.companyLogo).thenReturn(const FileAndPath());
    when(() => mockBusiness.address).thenReturn('Test Address');
    when(() => mockBusiness.email).thenReturn('test@example.com');
    when(() => mockBusiness.phoneNumber).thenReturn('1234567890');
    when(() => mockBusiness.formattedPhoneNumber).thenReturn('(123) 456-7890');

    // Establecer el estado del negocio antes de construir la app
    container.read(businessControllerProvider.notifier).state =
        AsyncData(mockBusiness);

    // Construir la app
    await pumpApp(tester);

    // Dar tiempo para que se procese la navegación inicial
    await tester.pump(const Duration(milliseconds: 100));

    // Verificar que estamos en la ruta correcta
    final router = container.read(goRouterProvider);
    final location = router.routerDelegate.currentConfiguration.uri.path;
    expect(location, '/business');

    // Esperar a que se complete la construcción de la página
    await tester.pump();

    // Verificar el título en el AppBar
    expect(
      find.descendant(
        of: find.byType(CustomAppbar),
        matching: find.text('Business Details'),
      ),
      findsOneWidget,
    );

    // Esperar a que se carguen los detalles
    await tester.pump();

    // Verificar que se muestran los detalles del negocio
    expect(find.text('Test Company'), findsOneWidget);
    expect(find.text('Test Address'), findsOneWidget);
    expect(find.text('(123) 456-7890'), findsOneWidget);
    expect(find.text('test@example.com'), findsOneWidget);
  });
}
