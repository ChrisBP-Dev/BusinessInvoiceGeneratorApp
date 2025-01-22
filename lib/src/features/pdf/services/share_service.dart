import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_enums.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:business_invoice_generator_app/src/features/url_launcher/domain/url_launcher_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mailto/mailto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

part 'share_service.g.dart';

/// Custom exception for sharing related errors
class ShareException implements Exception {
  const ShareException._(this.message);

  /// Creates an exception for when the invoice has no PDF
  const ShareException.noPdf()
      : message = 'Invoice does not have an associated PDF';

  /// Creates an exception for when the customer has no phone number
  const ShareException.noPhoneNumber()
      : message = 'Customer does not have a registered phone number';

  /// Creates an exception for when the URL launch fails
  const ShareException.urlLaunchFailed() : message = 'Failed to launch URL';

  /// The error message
  final String message;

  @override
  String toString() => message;
}

/// Available sharing methods
enum ShareMethod {
  /// Share via email
  email,

  /// Share via WhatsApp
  whatsapp,

  /// Share via general link
  general,
}

/// Service for sharing invoices
class ShareService {
  const ShareService(
    this._invoicesRepository,
    this._urlLauncherRepository,
  );
  final InvoicesRepository _invoicesRepository;
  final UrlLauncherRepository _urlLauncherRepository;

  /// Share an invoice using the specified method
  Future<void> shareInvoice({
    required Invoice invoice,
    required Business business,
    required ShareMethod method,
    required String userID,
  }) async {
    try {
      if (invoice.pdfLink.url == null) {
        throw const ShareException.noPdf();
      }

      // Update sent status
      final updatedInvoice = invoice.copyWith(
        sentStatus: InvoiceSentStatus.sent,
      );

      // Update in Firestore and launch share method in parallel
      await Future.wait([
        _invoicesRepository.updateInvoice(updatedInvoice, userID),
        _launchShareMethod(
          method: method,
          invoice: invoice,
          business: business,
          pdfUrl: invoice.pdfLink.url!,
        ),
      ]);
    } catch (e) {
      if (e is ShareException) rethrow;
      throw ShareException._('Failed to share invoice: $e');
    }
  }

  /// Launch the appropriate sharing method
  Future<void> _launchShareMethod({
    required ShareMethod method,
    required Invoice invoice,
    required Business business,
    required String pdfUrl,
  }) async {
    try {
      switch (method) {
        case ShareMethod.email:
          await _launchEmail(
            invoice: invoice,
            business: business,
            pdfUrl: pdfUrl,
          );
        case ShareMethod.whatsapp:
          await _launchWhatsApp(
            invoice: invoice,
            business: business,
            pdfUrl: pdfUrl,
          );
        case ShareMethod.general:
          await _launchGeneralLink(pdfUrl);
      }
    } catch (e) {
      if (e is ShareException) rethrow;
      throw const ShareException.urlLaunchFailed();
    }
  }

  /// Launch email client with invoice details
  Future<void> _launchEmail({
    required Invoice invoice,
    required Business business,
    required String pdfUrl,
  }) async {
    final subject =
        'Invoice #${invoice.formattedInvoiceNumber} - ${business.companyName}';
    final body = _generateMessageBody(
      customerName: invoice.customer.name,
      invoiceNumber: invoice.formattedInvoiceNumber,
      pdfUrl: pdfUrl,
      businessName: business.companyName,
    );

    final mailtoLink = Mailto(
      to: [invoice.customer.email],
      subject: subject,
      body: body,
    );

    await _urlLauncherRepository.launchLink(mailtoLink.toString());
  }

  /// Launch WhatsApp with invoice details
  Future<void> _launchWhatsApp({
    required Invoice invoice,
    required Business business,
    required String pdfUrl,
  }) async {
    if (invoice.customer.phoneNumber.isEmpty) {
      throw const ShareException.noPhoneNumber();
    }

    final message = _generateMessageBody(
      customerName: invoice.customer.name,
      invoiceNumber: invoice.formattedInvoiceNumber,
      pdfUrl: pdfUrl,
      businessName: business.companyName,
    );

    final link = WhatsAppUnilink(
      phoneNumber: invoice.customer.phoneNumber,
      text: message,
    );

    await _urlLauncherRepository.launchLink(link.toString());
  }

  /// Launch general link to PDF
  Future<void> _launchGeneralLink(String pdfUrl) async {
    await _urlLauncherRepository.launchLink(pdfUrl);
  }

  /// Generate message body for email or WhatsApp
  String _generateMessageBody({
    required String customerName,
    required String invoiceNumber,
    required String pdfUrl,
    required String businessName,
  }) {
    return '''
Hello $customerName,

I'm sending you the invoice #$invoiceNumber from $businessName.
You can download it from the following link:

$pdfUrl''';
  }
}

@riverpod
ShareService shareService(Ref ref) {
  return ShareService(
    ref.watch(invoicesRepositoryProvider),
    ref.watch(urlLauncherRepositoryProvider),
  );
}
