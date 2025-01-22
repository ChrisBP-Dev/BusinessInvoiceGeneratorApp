import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/admin_wrap_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/pages/list/widgets/customers_list.dart';
import 'package:business_invoice_generator_app/src/routing/routes/customer/customer_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomersListPage extends ConsumerWidget {
  const CustomersListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final business = ref.read(businessControllerProvider).value;
    if (business == null) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    return AdminWrapList(
      title: 'Customers',
      titleButton: 'New Customer',
      listWidget: AsyncValueWidget(
        value: ref.watch(getCustomersStreamProvider(business.id)),
        data: (customersEither) {
          return customersEither.fold(
            (error) => Center(child: Text(error.toString())),
            (customers) => CustomersList(customers: customers),
          );
        },
      ),
      onCreateTap: () {
        context.pushNamed(CustomerRoute.customerCreate.name);
      },
    );
  }
}
