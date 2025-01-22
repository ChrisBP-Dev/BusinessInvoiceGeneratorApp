import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/create_invoice_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/widgets/invoice_form_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreateInvoiceFromCustomerDetailPage extends ConsumerWidget {
  const CreateInvoiceFromCustomerDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      createInvoiceControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final customerID =
        GoRouterState.of(context).pathParameters[RouteConstants.customerID]!;

    final business = ref.read(businessControllerProvider).value;
    if (business == null) {
      return const Center(child: Text('Business not found'));
    }

    return AsyncValueWidget(
      value: ref.watch(watchCustomerByIDProvider(business.id, customerID)),
      data: (customerEither) => customerEither.fold(
        (error) => Center(child: Text(error.toString())),
        (customer) {
          if (customer == null) {
            return const Center(child: Text('Customer not found'));
          }
          return InvoiceFormPage(
            title: 'Create Invoice',
            preselectedCustomer: customer,
            isLoading: ref.watch(createInvoiceControllerProvider).isLoading,
            createTap: (formKey, invoice) {
              if (!formKey.currentState!.validate()) return;

              ref
                  .read(createInvoiceControllerProvider.notifier)
                  .createInvoice(invoice);
            },
          );
        },
      ),
    );
  }
}
