import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/create_invoice_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/widgets/invoice_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateInvoicePage extends ConsumerWidget {
  const CreateInvoicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      createInvoiceControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    return InvoiceFormPage(
      title: 'Create Invoice',
      isLoading: ref.watch(createInvoiceControllerProvider).isLoading,
      createTap: (formKey, invoice) {
        if (!formKey.currentState!.validate()) return;
        ref
            .read(createInvoiceControllerProvider.notifier)
            .createInvoice(invoice);
      },
    );
  }
}
