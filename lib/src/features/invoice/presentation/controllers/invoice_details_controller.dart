import 'package:business_invoice_generator_app/src/core/commom_widgets/alerts/alert_dialogs.dart';
import 'package:business_invoice_generator_app/src/core/services/storage_service/storage_service.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/file_and_path.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_enums.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:business_invoice_generator_app/src/features/pdf/services/share_service.dart';
import 'package:business_invoice_generator_app/src/routing/routes/admin/admin_app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'invoice_details_controller.g.dart';

@riverpod
class InvoiceDetailsController extends _$InvoiceDetailsController {
  @override
  FutureOr<void> build() {
    // Nothing to build
  }

  Future<void> togglePaymentStatus(Invoice invoice) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final business = ref.read(businessControllerProvider).value;
      if (business == null) {
        throw Exception('Business not found');
      }

      final newStatus = invoice.status == InvoiceStatus.paid
          ? InvoiceStatus.pendingPayment
          : InvoiceStatus.paid;

      await ref.read(invoicesRepositoryProvider).updateInvoice(
            invoice.copyWith(status: newStatus),
            business.id,
          );
    });
  }

  Future<void> shareInvoice({
    required Invoice invoice,
    required Business business,
    required ShareMethod method,
    required BuildContext context,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final business = ref.read(businessControllerProvider).value;
      if (business == null) {
        throw Exception('Business not found');
      }

      await ref.read(shareServiceProvider).shareInvoice(
            invoice: invoice,
            business: business,
            method: method,
            userID: business.id,
          );
    });

    if (state.hasError && context.mounted) {
      await showExceptionAlertDialog(
        context: context,
        title: 'Share Error',
        exception: state.error,
      );
    }
  }

  Future<void> deleteInvoice(Invoice invoice, BuildContext context) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final business = ref.read(businessControllerProvider).value;
      if (business == null) {
        throw Exception('Business not found');
      }

      // Navegar primero para evitar errores de estado
      if (context.mounted) {
        context.goNamed(AdminAppRoute.invoices.name);
      }

      // Si existe un PDF, eliminarlo
      if (invoice.pdfLink.refPath != null) {
        await ref
            .read(storageServiceProvider)
            .deleteFile(invoice.pdfLink.refPath!);
      }

      // Eliminar la factura
      await ref.read(invoicesRepositoryProvider).deleteInvoice(
            invoice,
            business.id,
          );
    });
  }

  Future<void> toggleSentStatus(Invoice invoice) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final business = ref.read(businessControllerProvider).value;
      if (business == null) {
        throw Exception('Business not found');
      }

      final newStatus = invoice.sentStatus == InvoiceSentStatus.sent
          ? InvoiceSentStatus.draft
          : InvoiceSentStatus.sent;

      await ref.read(invoicesRepositoryProvider).updateInvoice(
            invoice.copyWith(sentStatus: newStatus),
            business.id,
          );
    });
  }
}
