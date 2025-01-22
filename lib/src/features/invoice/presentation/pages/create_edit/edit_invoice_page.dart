import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/update_invoice_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/widgets/invoice_form_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditInvoicePage extends ConsumerWidget {
  const EditInvoicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      updateInvoiceControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final business = ref.read(businessControllerProvider).value;
    if (business == null) {
      return const Center(child: Text('Business not found'));
    }

    final invoiceId =
        GoRouterState.of(context).pathParameters[RouteConstants.invoiceID]!;

    return AsyncValueWidget(
      value: ref.watch(watchInvoiceByIDProvider(business.id, invoiceId)),
      data: (invoiceEither) => invoiceEither.fold(
        (error) => Center(child: Text(error.toString())),
        (invoice) {
          if (invoice == null) {
            return const Center(child: Text('Invoice not found'));
          }
          return InvoiceFormPage(
            title: 'Edit Invoice',
            invoice: invoice,
            isLoading: ref.watch(updateInvoiceControllerProvider).isLoading,
            editTap: (formKey, updatedInvoice) {
              if (formKey.currentState!.validate()) {
                ref
                    .read(updateInvoiceControllerProvider.notifier)
                    .updateInvoice(updatedInvoice);
              }
            },
          );
        },
      ),
    );
  }
}
