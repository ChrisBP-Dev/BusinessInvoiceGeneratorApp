import 'package:business_invoice_generator_app/src/features/business/domain/file_and_path.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_form_controller.dart';
import 'package:business_invoice_generator_app/src/features/pdf/domain/pdf_repository.dart';
import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:business_invoice_generator_app/src/routing/routes/invoice/invoice_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_invoice_controller.g.dart';

@riverpod
class UpdateInvoiceController extends _$UpdateInvoiceController {
  @override
  FutureOr<void> build() {
    // Nothing to build
  }

  Future<void> updateInvoice(Invoice invoice) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      // Obtener el negocio actual
      final business = ref.read(businessControllerProvider).value;
      if (business == null) {
        throw Exception('Business not found');
      }

      // Generar el PDF
      final pdfBytes = await ref.read(pdfRepositoryProvider).generateInvoicePdf(
            invoice,
            business,
          );

      // Subir el PDF a Storage
      final fileName = 'Invoice-${invoice.formattedInvoiceNumber}.pdf';
      final path = 'users/${business.id}/invoices/$fileName';
      final pdfUrl =
          await ref.read(pdfRepositoryProvider).uploadPdf(pdfBytes, path);

      // Actualizar la factura con el link del PDF y los bytes
      final updatedInvoice = invoice.copyWith(
        pdfLink: FileAndPath(
          url: pdfUrl,
          refPath: path,
          localFile: String.fromCharCodes(pdfBytes),
        ),
      );

      await ref.read(invoicesRepositoryProvider).updateInvoice(
            updatedInvoice,
            business.id,
          );
    });

    if (!state.hasError) {
      ref.read(invoiceFormControllerProvider.notifier).resetState();
      ref.read(goRouterProvider).pop();
    }
  }
}
