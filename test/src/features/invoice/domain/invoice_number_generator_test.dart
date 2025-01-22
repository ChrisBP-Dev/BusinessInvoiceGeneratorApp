import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_number_generator.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockInvoicesRepository extends Mock implements InvoicesRepository {}

// Mock para Customer con datos mínimos requeridos
const mockCustomer = Customer(
  id: 'test-customer-id',
  name: 'Test Customer',
  email: 'test@example.com',
  phoneNumber: '1234567890',
  address: 'Test Address',
);

void main() {
  late MockInvoicesRepository mockRepository;
  late InvoiceNumberGenerator generator;
  const testUserID = 'test-user-id';

  setUp(() {
    mockRepository = MockInvoicesRepository();
    generator = InvoiceNumberGenerator(mockRepository);
  });

  group('getNextInvoiceNumber', () {
    test('returns 1 when there are no invoices', () async {
      // Arrange
      when(() => mockRepository.getInvoicesStream(testUserID)).thenAnswer(
        (_) => Stream.value(right(<Invoice>[])),
      );

      // Act
      final result = await generator.getNextInvoiceNumber(testUserID);

      // Assert
      expect(result, equals(right(1)));
    });

    test('returns next number based on highest invoice number', () async {
      // Arrange
      final invoices = [
        Invoice(
          id: '1',
          invoiceNumber: 1,
          invoiceDate: DateTime.now(),
          customer: mockCustomer,
          items: [],
          createdAt: DateTime.now(),
        ),
        Invoice(
          id: '2',
          invoiceNumber: 3,
          invoiceDate: DateTime.now(),
          customer: mockCustomer,
          items: [],
          createdAt: DateTime.now(),
        ),
      ];

      when(() => mockRepository.getInvoicesStream(testUserID)).thenAnswer(
        (_) => Stream.value(right(invoices)),
      );
      when(() => mockRepository.getInvoiceByID(testUserID, any())).thenAnswer(
        (_) => Future.value(right(null)),
      );

      // Act
      final result = await generator.getNextInvoiceNumber(testUserID);

      // Assert
      expect(result, equals(right(4)));
    });

    test('returns error when duplicate number is detected', () async {
      // Arrange
      final invoices = [
        Invoice(
          id: '1',
          invoiceNumber: 1,
          invoiceDate: DateTime.now(),
          customer: mockCustomer,
          items: [],
          createdAt: DateTime.now(),
        ),
        Invoice(
          id: '2',
          invoiceNumber: 2,
          invoiceDate: DateTime.now(),
          customer: mockCustomer,
          items: [],
          createdAt: DateTime.now(),
        ),
      ];

      when(() => mockRepository.getInvoicesStream(testUserID)).thenAnswer(
        (_) => Stream.value(right(invoices)),
      );
      when(() => mockRepository.getInvoiceByID(testUserID, any())).thenAnswer(
        (_) => Future.value(
          right(
            Invoice(
              id: '3',
              invoiceNumber: 3,
              invoiceDate: DateTime.now(),
              customer: mockCustomer,
              items: [],
              createdAt: DateTime.now(),
            ),
          ),
        ),
      );

      // Act
      final result = await generator.getNextInvoiceNumber(testUserID);

      // Assert
      expect(
        result.fold(
          (error) => error is InvoiceException,
          (_) => false,
        ),
        isTrue,
      );
    });

    test('handles stream error gracefully', () async {
      // Arrange
      when(() => mockRepository.getInvoicesStream(testUserID)).thenAnswer(
        (_) => Stream.value(
          left(
            InvoiceException.invalidData(
              stackTrace: StackTrace.current,
              message: 'Test error',
            ),
          ),
        ),
      );

      // Act
      final result = await generator.getNextInvoiceNumber(testUserID);

      // Assert
      expect(
        result.fold(
          (error) => error is InvoiceException,
          (_) => false,
        ),
        isTrue,
      );
    });

    test('handles unexpected exceptions', () async {
      // Arrange
      when(() => mockRepository.getInvoicesStream(testUserID)).thenThrow(
        Exception('Unexpected error'),
      );

      // Act
      final result = await generator.getNextInvoiceNumber(testUserID);

      // Assert
      expect(
        result.fold(
          (error) => error is InvoiceException,
          (_) => false,
        ),
        isTrue,
      );
    });
  });
}
