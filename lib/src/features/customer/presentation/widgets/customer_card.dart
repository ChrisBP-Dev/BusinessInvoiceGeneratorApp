import 'package:business_invoice_generator_app/src/core/commom_widgets/secondary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:business_invoice_generator_app/src/routing/routes/customer/customer_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({
    this.customer,
    this.onTap,
    this.width,
    this.isPreselected = false,
    super.key,
  }) : assert(
          isPreselected ? true : (customer != null || onTap != null),
          'onTap is required when there is no customer and not preselected',
        );

  final Customer? customer;
  final VoidCallback? onTap;
  final double? width;
  final bool isPreselected;

  @override
  Widget build(BuildContext context) {
    if (isPreselected && customer == null) {
      return const SizedBox(
        height: 68,
        child: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }

    if (customer == null) {
      return SecondaryActionButton(
        text: 'Select Customer',
        onTap: onTap,
      );
    }

    return SizedBox(
      width: width,
      child: Card(
        shape: _borderRadius(),
        child: ListTile(
          enabled: !isPreselected,
          shape: _borderRadius(),
          leading: CircleAvatar(
            child: Text(customer!.initials.toUpperCase()),
          ),
          title: Text(customer!.name),
          subtitle: Text(customer!.formattedPhoneNumber),
          onTap: isPreselected
              ? null
              : (onTap ??
                  () {
                    context.goNamed(
                      CustomerRoute.customerDetails.name,
                      pathParameters: {
                        RouteConstants.customerID: customer!.id,
                      },
                    );
                  }),
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
