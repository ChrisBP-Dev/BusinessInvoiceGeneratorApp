import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/admin_wrap_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_form_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/widgets/select_customer/select_customers_list.dart';
import 'package:business_invoice_generator_app/src/routing/routes/customer/customer_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SelectCustomerListPage extends ConsumerWidget {
  const SelectCustomerListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final business = ref.read(businessControllerProvider).value;
    if (business == null) {
      return const Center(child: Text('Business not found'));
    }
    return AdminWrapList(
      withBackButton: true,
      title: 'Select Customer',
      titleButton: 'Create Customer',
      listWidget: AsyncValueWidget(
        value: ref.watch(getCustomersStreamProvider(business.id)),
        data: (customersEither) => customersEither.fold(
          (error) => Center(child: Text(error.toString())),
          (customers) => SelectCustomersList(
            customers: customers,
            onCustomerSelected: (customer) {
              ref
                  .read(invoiceFormControllerProvider.notifier)
                  .setCustomer(customer);
              context.pop();
            },
          ),
        ),
      ),
      onCreateTap: () => context.pushNamed(CustomerRoute.customerCreate.name),
    );
  }
}
