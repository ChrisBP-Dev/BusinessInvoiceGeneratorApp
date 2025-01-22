import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/services_repository.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/controllers/update_service_controller.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/pages/create_edit/widgets/service_form_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditServicePage extends ConsumerWidget {
  const EditServicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = GoRouterState.of(context);
    final extra = state.pathParameters;
    final serviceID = extra[RouteConstants.serviceID]!;

    ref.listen<AsyncValue<void>>(
      updateServiceControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final business = ref.read(businessControllerProvider).value;
    if (business == null) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    return AsyncValueWidget(
      value: ref.watch(getServiceByIDProvider(business.id, serviceID)),
      data: (result) => result.fold(
        (error) => Center(child: Text(error.message)),
        (service) {
          if (service == null) {
            return const Center(child: Text('Service not found'));
          }
          return ServiceFormPage(
            service: service,
            title: 'Edit Service',
            isLoading: ref.watch(updateServiceControllerProvider).isLoading,
            editTap: (formKey, currentService) {
              if (!formKey.currentState!.validate()) return;
              ref
                  .read(updateServiceControllerProvider.notifier)
                  .updateService(currentService);
            },
          );
        },
      ),
    );
  }
}
