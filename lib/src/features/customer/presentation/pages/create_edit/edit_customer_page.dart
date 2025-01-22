import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/controllers/update_customer_controller.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/pages/create_edit/widgets/customer_form_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditCustomerPage extends ConsumerWidget {
  const EditCustomerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = GoRouterState.of(context);
    final extra = state.pathParameters;
    final customerID = extra[RouteConstants.customerID]!;

    ref.listen<AsyncValue<void>>(
      updateCustomerControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final business = ref.read(businessControllerProvider).value;
    if (business == null) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    return AsyncValueWidget(
      value: ref.watch(watchCustomerByIDProvider(business.id, customerID)),
      data: (customerEither) {
        return customerEither.fold(
          (error) => Center(child: Text(error.toString())),
          (customer) {
            if (customer == null) {
              return const Center(child: Text('Customer not found'));
            }
            return CustomerFormPage(
              customer: customer,
              title: 'Edit Customer',
              isLoading: ref.watch(updateCustomerControllerProvider).isLoading,
              editTap: (formKey, currentCustomer) {
                if (!formKey.currentState!.validate()) return;
                ref
                    .read(updateCustomerControllerProvider.notifier)
                    .updateCustomer(currentCustomer);
              },
            );
          },
        );
      },
    );
  }
}
