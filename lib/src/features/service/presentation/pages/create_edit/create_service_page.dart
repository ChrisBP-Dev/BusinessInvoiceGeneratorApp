import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/controllers/create_service_controller.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/pages/create_edit/widgets/service_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateServicePage extends ConsumerWidget {
  const CreateServicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      createServiceControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    return ServiceFormPage(
      title: 'Create Service',
      isLoading: ref.watch(createServiceControllerProvider).isLoading,
      createTap: (formKey, service) {
        if (!formKey.currentState!.validate()) return;
        ref
            .read(createServiceControllerProvider.notifier)
            .createService(service);
      },
    );
  }
}
