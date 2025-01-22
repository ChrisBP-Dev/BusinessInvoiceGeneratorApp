import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/update_business_controller.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/widgets/business_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditBusinessPage extends ConsumerWidget {
  const EditBusinessPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      updateBusinessControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    return AsyncValueWidget(
      value: ref.watch(businessControllerProvider),
      data: (business) {
        if (business == null) {
          return const Center(child: Text('No business found'));
        }
        return BusinessFormPage(
          business: business,
          title: 'Edit Business',
          isLoading: ref.watch(updateBusinessControllerProvider).isLoading,
          editTap: (formKey, currentBusiness) {
            if (!formKey.currentState!.validate()) return;
            ref
                .read(updateBusinessControllerProvider.notifier)
                .updateBusiness(currentBusiness);
          },
        );
      },
    );
  }
}
