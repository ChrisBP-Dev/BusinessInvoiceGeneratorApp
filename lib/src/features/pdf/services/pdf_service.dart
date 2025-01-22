import 'dart:typed_data';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/pdf/services/pdf_generator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'pdf_service.g.dart';

/// Servicio para generar PDFs
class PdfService {
  const PdfService(this._pdfGenerator);
  final PdfGenerator _pdfGenerator;

  /// Genera un PDF para una factura
  Future<Uint8List> generateInvoicePdf(
    Invoice invoice,
    Business business,
  ) async {
    return _pdfGenerator.generateInvoicePdf(invoice, business);
  }
}

@riverpod
PdfService pdfService(Ref ref) {
  return PdfService(PdfGenerator());
}
