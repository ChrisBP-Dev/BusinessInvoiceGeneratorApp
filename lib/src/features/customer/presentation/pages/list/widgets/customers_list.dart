import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/widgets/customer_card.dart';
import 'package:flutter/material.dart';

class CustomersList extends StatelessWidget {
  const CustomersList({required this.customers, super.key});
  final List<Customer> customers;

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
            children: customers
                .map(
                  (customer) => CustomerCard(
                    customer: customer,
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
