import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/controllers/create_customer_controller.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/pages/create_edit/widgets/customer_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateCustomerPage extends ConsumerWidget {
  const CreateCustomerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      createCustomerControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    return CustomerFormPage(
      title: 'Create Customer',
      isLoading: ref.watch(createCustomerControllerProvider).isLoading,
      createTap: (formKey, customer) {
        if (!formKey.currentState!.validate()) return;
        ref
            .read(createCustomerControllerProvider.notifier)
            .createCustomer(customer);
      },
    );
  }
}
