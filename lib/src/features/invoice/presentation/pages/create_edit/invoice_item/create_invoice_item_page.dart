import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_form_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/invoice_item/widgets/invoice_item_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreateInvoiceItemPage extends ConsumerWidget {
  const CreateInvoiceItemPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InvoiceItemFormPage(
      title: 'Create Item',
      createTap: (formKey, invoiceItem) {
        if (formKey.currentState!.validate()) {
          ref
              .read(invoiceFormControllerProvider.notifier)
              .addInvoiceItem(invoiceItem);

          if (context.mounted) {
            context.pop();
          }
        }
      },
    );
  }
}
