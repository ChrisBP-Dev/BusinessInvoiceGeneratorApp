import 'dart:typed_data';
import 'package:business_invoice_generator_app/src/core/utils/date_format.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/double_extensions.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_item.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfGenerator {
  PdfGenerator();

  Future<Uint8List> generateInvoicePdf(
    Invoice invoice,
    Business business,
  ) async {
    final pdf = pw.Document();

    pw.ImageProvider? logoImage;
    if (business.companyLogo.url != null) {
      logoImage = await networkImage(business.companyLogo.url!);
    }

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        build: (context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    flex: 2,
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        if (logoImage != null) pw.Image(logoImage, height: 50),
                        if (logoImage == null)
                          pw.Container(
                            height: 50,
                            width: 100,
                            color: PdfColors.grey300,
                            child: pw.Center(
                              child: pw.Text(
                                'LOGO',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        pw.SizedBox(height: 8),
                        pw.Text(
                          business.companyName,
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        pw.Text(business.address),
                        pw.Text(business.phoneNumber),
                        pw.Text(business.email),
                      ],
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Text(
                          'INVOICE',
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        pw.SizedBox(height: 38),
                        pw.Text('Invoice #: ${invoice.formattedInvoiceNumber}'),
                        pw.Text('DATE: ${invoice.invoiceDate.dateFormat}'),
                      ],
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              // Información del cliente
              pw.Text(
                'Client Name: ${invoice.customer.name}',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.Text('Address: ${invoice.customer.address}'),
              pw.Text('Phone: ${invoice.customer.formattedPhoneNumber}'),
              if (invoice.jobName != null)
                pw.Text('Job Name: ${invoice.jobName}'),
              pw.SizedBox(height: 20),
              // Tabla de ítems
              pw.Table(
                border: pw.TableBorder.all(color: PdfColors.grey),
                columnWidths: {
                  0: const pw.FixedColumnWidth(80),
                  1: const pw.FlexColumnWidth(),
                  2: const pw.FixedColumnWidth(45),
                  3: const pw.FixedColumnWidth(70),
                  4: const pw.FixedColumnWidth(80),
                },
                children: [
                  pw.TableRow(
                    decoration: pw.BoxDecoration(
                      color: colorFromHex(business.colorHex),
                    ),
                    children: [
                      _buildHeaderCell('ITEM'),
                      _buildHeaderCell('DESCRIPTION'),
                      _buildHeaderCell('SQ. F.'),
                      _buildHeaderCell('PRICE'),
                      _buildHeaderCell('TOTAL'),
                    ],
                  ),
                  ...invoice.items.map(
                    (item) => pw.TableRow(
                      children: [
                        _buildCell(text: item.service.name),
                        _buildCell(
                          text: item.description,
                          textAlign: pw.TextAlign.left,
                        ),
                        _buildCell(text: '${item.sqFeet}'),
                        _buildCell(text: item.price.priceFormat),
                        _buildCell(text: item.total.priceFormat),
                      ],
                    ),
                  ),
                ],
              ),
              // Totales con sombreado y borde
              pw.Container(
                decoration: pw.BoxDecoration(
                  border: pw.Border.all(color: PdfColors.grey),
                  color: PdfColors.grey100,
                ),
                child: pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Expanded(
                      flex: 9,
                      child: pw.Container(
                        padding: const pw.EdgeInsets.all(8),
                        child: pw.Text(
                          'Notes: ${invoice.notes}',
                          style: const pw.TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                    pw.SizedBox(width: 10),
                    pw.Expanded(
                      flex: 4,
                      child: pw.Container(
                        padding: const pw.EdgeInsets.all(8),
                        decoration: pw.BoxDecoration(
                          border: pw.Border.all(color: PdfColors.grey),
                        ),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.end,
                          children: [
                            _buildTotalRow(
                              'SUB-TOTAL',
                              invoice.subtotal.priceFormat,
                            ),
                            if (invoice.advancePayment != null)
                              _buildTotalRow(
                                'ADVANCE',
                                '- ${invoice.advancePayment!.priceFormat}',
                                color: PdfColors.red,
                              ),
                            pw.Divider(),
                            _buildTotalRow(
                              'TOTAL',
                              invoice.total.priceFormat,
                              isBold: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Spacer(),
              pw.Divider(),
              pw.Center(
                child: pw.Text(
                  'Thank you for your business!',
                  style: const pw.TextStyle(fontSize: 12),
                ),
              ),
            ],
          );
        },
      ),
    );

    return pdf.save();
  }
}

// Función para construir celdas de encabezado
pw.Widget _buildHeaderCell(String text) {
  return pw.Padding(
    padding: const pw.EdgeInsets.all(8),
    child: pw.Text(
      text,
      textAlign: pw.TextAlign.center,
      style: pw.TextStyle(
        fontWeight: pw.FontWeight.bold,
        fontSize: 10,
      ),
    ),
  );
}

// Función para construir celdas de contenido
pw.Widget _buildCell({required String text, pw.TextAlign? textAlign}) {
  return pw.Padding(
    padding: const pw.EdgeInsets.all(8),
    child: pw.Text(
      text,
      textAlign: textAlign ?? pw.TextAlign.center,
      style: const pw.TextStyle(fontSize: 10),
    ),
  );
}

// Función para construir filas de totales
pw.Widget _buildTotalRow(
  String label,
  String value, {
  PdfColor? color,
  bool isBold = false,
}) {
  return pw.Padding(
    padding: const pw.EdgeInsets.only(bottom: 4),
    child: pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Text(
          label,
          style: pw.TextStyle(
            color: color,
            fontWeight: isBold ? pw.FontWeight.bold : pw.FontWeight.normal,
          ),
        ),
        pw.Text(
          value,
          style: pw.TextStyle(
            color: color ?? PdfColors.black,
            fontWeight: isBold ? pw.FontWeight.bold : pw.FontWeight.normal,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}

PdfColor colorFromHex(String hexColor) {
  final hex = hexColor.replaceFirst('#', '');
  if (hex.length == 6) {
    return PdfColor.fromInt(int.parse('FF$hex', radix: 16)).shade(.04);
  }
  if (hex.length == 8) {
    return PdfColor.fromInt(int.parse(hex, radix: 16)).shade(.04);
  }
  return PdfColors.grey200;
}
