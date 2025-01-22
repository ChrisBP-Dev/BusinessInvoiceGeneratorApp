import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:business_invoice_generator_app/src/features/auth/presentation/widgets/sign_out_button.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/create_business_controller.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/widgets/business_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateBusinessPage extends ConsumerWidget {
  const CreateBusinessPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      createBusinessControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    return Scaffold(
      body: SafeArea(
        child: BusinessFormPage(
          withBackButton: false,
          title: 'Create Business',
          isLoading: ref.watch(createBusinessControllerProvider).isLoading,
          createTap: (formKey, currentBusiness) {
            if (!formKey.currentState!.validate()) return;
            ref
                .read(createBusinessControllerProvider.notifier)
                .createBusiness(currentBusiness);
          },
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        SizedBox(
          width: 200,
          child: SignOutButton(
            color: context.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
