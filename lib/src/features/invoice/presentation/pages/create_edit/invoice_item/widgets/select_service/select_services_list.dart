import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/invoice_item/widgets/select_service/select_service_card.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:flutter/material.dart';

class SelectServicesList extends StatelessWidget {
  const SelectServicesList({required this.services, super.key});
  final List<ServiceModel> services;

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.globalPadding,
        vertical: Sizes.p14,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < Breakpoint.tablet;
          final width = isMobile
              ? constraints.maxWidth
              : (constraints.maxWidth / 2) - (Sizes.globalPadding / 2);

          return Wrap(
            runSpacing: Sizes.p4,
            spacing: Sizes.p4,
            children: services
                .map(
                  (service) => SelectServiceCard(
                    service: service,
                    width: width,
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
