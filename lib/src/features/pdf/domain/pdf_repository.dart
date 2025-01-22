import 'dart:typed_data';
import 'package:business_invoice_generator_app/src/core/services/storage_service/storage_service.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/pdf/data/firebase_pdf_repository_imp.dart';
import 'package:business_invoice_generator_app/src/features/pdf/services/pdf_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pdf_repository.g.dart';

/// Repositorio para generar y manejar PDFs
abstract class PdfRepository {
  /// Genera un PDF para una factura
  Future<Uint8List> generateInvoicePdf(Invoice invoice, Business business);

  /// Sube el PDF de una factura a Firebase Storage
  Future<String> uploadPdf(Uint8List pdfBytes, String path);
}

@riverpod
PdfRepository pdfRepository(Ref ref) {
  return FirebasePdfRepositoryImp(
    pdfService: ref.watch(pdfServiceProvider),
    storageService: ref.watch(storageServiceProvider),
  );
}

@riverpod
Future<Uint8List> generateInvoicePdf(
  Ref ref,
  Invoice invoice,
  Business business,
) async {
  return ref.watch(pdfRepositoryProvider).generateInvoicePdf(invoice, business);
}

@riverpod
Future<String> uploadPdf(
  Ref ref,
  Uint8List pdfBytes,
  String path,
) {
  return ref.watch(pdfRepositoryProvider).uploadPdf(pdfBytes, path);
}
