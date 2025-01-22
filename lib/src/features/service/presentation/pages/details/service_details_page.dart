import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/admin_wrap_details.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/alerts/delete_confirmation_dialog.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/services_repository.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/controllers/service_details_controller.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/widgets/service_details_card.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:business_invoice_generator_app/src/routing/routes/service/service_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ServiceDetailsPage extends ConsumerWidget {
  const ServiceDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = GoRouterState.of(context);
    final serviceID = state.pathParameters[RouteConstants.serviceID]!;
    final business = ref.read(businessControllerProvider).value;
    if (business == null) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    ref.listen(
      serviceDetailsControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    return AsyncValueWidget(
      value: ref.watch(getServiceByIDProvider(business.id, serviceID)),
      data: (result) => result.fold(
        (error) => Center(child: Text(error.message)),
        (service) {
          if (service == null) {
            return const Center(child: Text('Service not found'));
          }
          return AsyncValueWidget(
            value: ref.watch(serviceDetailsControllerProvider),
            data: (_) {
              return AdminWrapDetails(
                onEditTap: () {
                  context.pushNamed(
                    ServiceRoute.serviceEdit.name,
                    pathParameters: {RouteConstants.serviceID: service.id},
                  );
                },
                onDeleteTap: () async {
                  final shouldDelete = await showDeleteConfirmationDialog(
                    context: context,
                    title: 'Delete Service',
                    content: 'Are you sure you want to delete this service?',
                  );

                  if (shouldDelete && context.mounted) {
                    await ref
                        .read(serviceDetailsControllerProvider.notifier)
                        .deleteService(service);
                  }
                },
                title: 'Service Details',
                listWidget: ResponsiveCenter(
                  padding: const EdgeInsets.all(Sizes.globalPadding),
                  child: ServiceDetailsCard(service: service),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
