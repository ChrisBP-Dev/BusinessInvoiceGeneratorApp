import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_item_form_controller.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SelectServiceCard extends ConsumerWidget {
  const SelectServiceCard({
    required this.service,
    this.width,
    super.key,
  });
  final ServiceModel service;
  final double? width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: width,
      child: Card(
        shape: _borderRadius(),
        child: ListTile(
          shape: _borderRadius(),
          title: Text(service.name),
          onTap: () {
            ref
                .read(invoiceItemFormControllerProvider.notifier)
                .setService(service);
            context.pop();
          },
        ),
      ),
    );
  }

  RoundedRectangleBorder _borderRadius() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Sizes.p8),
    );
  }
}
