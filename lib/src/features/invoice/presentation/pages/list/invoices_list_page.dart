import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/admin_wrap_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_filters_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/invoices_list.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/widgets/invoice_filters_panel.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:business_invoice_generator_app/src/routing/routes/invoice/invoice_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InvoicesListPage extends ConsumerWidget {
  const InvoicesListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final business = ref.read(businessControllerProvider).value;
    if (business == null) {
      return const Center(child: Text('Business not found'));
    }

    return AdminWrapList(
      title: 'Invoices',
      titleButton: 'New Invoice',
      listWidget: Column(
        children: [
          const InvoiceFiltersPanel(),
          AsyncValueWidget(
            value: ref.watch(filteredInvoicesProvider(business.id)),
            data: (invoices) => InvoicesList(
              invoices: invoices,
              onTap: (invoiceId) => context.goNamed(
                InvoiceRoute.invoiceDetails.name,
                pathParameters: {RouteConstants.invoiceID: invoiceId},
              ),
            ),
          ),
        ],
      ),
      onCreateTap: () {
        context.pushNamed(InvoiceRoute.invoiceCreate.name);
      },
    );
  }
}
