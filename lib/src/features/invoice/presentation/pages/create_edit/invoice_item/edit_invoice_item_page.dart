import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_form_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/invoice_item/widgets/invoice_item_form_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditInvoiceItemPage extends ConsumerWidget {
  const EditInvoiceItemPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = GoRouterState.of(context);
    final itemId = state.pathParameters[RouteConstants.invoiceItemID]!;

    final invoiceItem = ref.watch(invoiceItemByIndexProvider(itemId));

    if (invoiceItem == null) {
      return const SizedBox.shrink();
    }

    return InvoiceItemFormPage(
      title: 'Edit Item',
      invoiceItem: invoiceItem,
      editTap: (formKey, updatedItem) {
        if (formKey.currentState!.validate()) {
          ref
              .read(invoiceFormControllerProvider.notifier)
              .updateInvoiceItem(updatedItem);

          context.pop();
        }
      },
    );
  }
}
