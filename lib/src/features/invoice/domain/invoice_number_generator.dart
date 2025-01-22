import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'invoice_number_generator.g.dart';

/// {@template invoice_number_generator}
/// Generador de números de factura que implementa una lógica segura para
/// evitar duplicados y manejar condiciones de carrera.
///
/// Características:
/// - Espera a que los datos estén disponibles antes de generar un número
/// - Verifica duplicados antes de retornar un número
/// - Manejo de errores robusto
/// - Implementación thread-safe para entornos multi-usuario
/// {@endtemplate}
class InvoiceNumberGenerator {
  /// {@macro invoice_number_generator}
  InvoiceNumberGenerator(this._repository);

  final InvoicesRepository _repository;

  /// Genera el siguiente número de factura disponible para un usuario.
  ///
  /// El proceso es el siguiente:
  /// 1. Espera a que el stream de facturas tenga datos válidos
  /// 2. Encuentra el número más alto actual
  /// 3. Verifica que el siguiente número no exista
  /// 4. Retorna el siguiente número si es válido
  ///
  /// Retorna un [Either] con:
  /// - [InvoiceException] si hay un error en el proceso
  /// - [int] con el siguiente número disponible
  Future<Either<InvoiceException, int>> getNextInvoiceNumber(
    String userID,
  ) async {
    try {
      // Esperar a que el stream tenga datos válidos
      final invoicesEither = await _repository
          .getInvoicesStream(userID)
          .firstWhere((either) => either.isRight());

      return await invoicesEither.fold(
        left,
        (invoices) async {
          if (invoices.isEmpty) return right(1);

          final maxNumber = invoices.fold<int>(
            0,
            (max, invoice) =>
                invoice.invoiceNumber > max ? invoice.invoiceNumber : max,
          );

          // Verificar que el siguiente número no exista
          final nextNumber = maxNumber + 1;
          final numberExists =
              invoices.any((inv) => inv.invoiceNumber == nextNumber);

          if (numberExists) {
            return left(
              InvoiceException.invalidData(
                stackTrace: StackTrace.current,
                message:
                    'Failed to generate invoice number: duplicate number detected',
              ),
            );
          }

          return right(nextNumber);
        },
      );
    } catch (e, stackTrace) {
      return left(
        InvoiceException.invalidData(
          stackTrace: stackTrace,
          message: 'Failed to generate invoice number: $e',
        ),
      );
    }
  }
}

/// Provider que proporciona una instancia de [InvoiceNumberGenerator].
@riverpod
InvoiceNumberGenerator invoiceNumberGenerator(Ref ref) {
  return InvoiceNumberGenerator(ref.watch(invoicesRepositoryProvider));
}

/// Provider que facilita la obtención del siguiente número de factura.
///
/// Uso:
/// ```dart
/// final nextNumberEither = await ref.read(nextInvoiceNumberProvider(userID).future);
/// ```
@riverpod
Future<Either<InvoiceException, int>> nextInvoiceNumber(
  Ref ref,
  String userID,
) async {
  return ref.watch(invoiceNumberGeneratorProvider).getNextInvoiceNumber(userID);
}
