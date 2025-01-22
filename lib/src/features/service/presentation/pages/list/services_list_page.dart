import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/admin_wrap_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/services_repository.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/pages/list/widgets/services_lis.dart';
import 'package:business_invoice_generator_app/src/routing/routes/service/service_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ServicesListPage extends ConsumerWidget {
  const ServicesListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final business = ref.watch(businessControllerProvider).value;

    if (business == null) {
      return const Center(
        child: Text('No business found'),
      );
    }

    return AdminWrapList(
      title: 'Services',
      titleButton: 'New Service',
      listWidget: AsyncValueWidget(
        value: ref.watch(getServicesStreamProvider(business.id)),
        data: (result) => result.fold(
          (error) => Center(child: Text(error.message)),
          (services) => ServicesList(services: services),
        ),
      ),
      onCreateTap: () {
        context.pushNamed(ServiceRoute.serviceCreate.name);
      },
    );
  }
}
