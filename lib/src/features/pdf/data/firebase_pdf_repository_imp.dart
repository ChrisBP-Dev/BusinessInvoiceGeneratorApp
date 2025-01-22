import 'package:business_invoice_generator_app/src/core/services/storage_service/storage_service.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/pdf/domain/pdf_repository.dart';
import 'package:business_invoice_generator_app/src/features/pdf/services/pdf_service.dart';
import 'package:flutter/foundation.dart';

class FirebasePdfRepositoryImp implements PdfRepository {
  const FirebasePdfRepositoryImp({
    required this.pdfService,
    required this.storageService,
  });
  final PdfService pdfService;
  final StorageService storageService;

  @override
  Future<Uint8List> generateInvoicePdf(
    Invoice invoice,
    Business business,
  ) async {
    return pdfService.generateInvoicePdf(invoice, business);
  }

  @override
  Future<String> uploadPdf(Uint8List pdfBytes, String path) async {
    try {
      return storageService.uploadPDF(pdfBytes, path);
    } catch (e) {
      throw Exception('Error al subir el PDF: $e');
    }
  }
}
