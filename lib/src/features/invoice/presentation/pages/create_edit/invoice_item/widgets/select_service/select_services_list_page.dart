import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/admin_wrap_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/invoice_item/widgets/select_service/select_services_list.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/services_repository.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:business_invoice_generator_app/src/routing/routes/service/service_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SelectServicesListPage extends ConsumerWidget {
  const SelectServicesListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = GoRouterState.of(context);
    final itemId = state.pathParameters[RouteConstants.invoiceItemID];

    return AdminWrapList(
      withBackButton: true,
      title: 'Select Service',
      titleButton: 'Create Service',
      listWidget: AsyncValueWidget(
        value: ref.watch(authStateChangesProvider),
        data: (currentUser) => AsyncValueWidget(
          value: ref.watch(getServicesStreamProvider(currentUser!.id)),
          data: (result) => result.fold(
            (error) => Center(child: Text(error.message)),
            (services) => SelectServicesList(services: services),
          ),
        ),
      ),
      onCreateTap: () {
        if (itemId != null) {
          context.pushNamed(
            ServiceRoute.serviceCreate.name,
            pathParameters: {RouteConstants.invoiceItemID: itemId},
          );
        } else {
          context.pushNamed(ServiceRoute.serviceCreate.name);
        }
      },
    );
  }
}
