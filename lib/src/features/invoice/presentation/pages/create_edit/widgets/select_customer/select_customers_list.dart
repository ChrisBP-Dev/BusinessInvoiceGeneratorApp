import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/widgets/select_customer/select_customer_card.dart';
import 'package:flutter/material.dart';

class SelectCustomersList extends StatelessWidget {
  const SelectCustomersList({
    required this.customers,
    required this.onCustomerSelected,
    super.key,
  });

  final List<Customer> customers;
  final void Function(Customer) onCustomerSelected;

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
                  (customer) => SelectCustomerCard(
                    customer: customer,
                    width: width,
                    onTap: () => onCustomerSelected(customer),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
