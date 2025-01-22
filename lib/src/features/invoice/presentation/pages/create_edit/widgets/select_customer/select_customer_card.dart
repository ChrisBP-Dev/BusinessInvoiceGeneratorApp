import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:flutter/material.dart';

class SelectCustomerCard extends StatelessWidget {
  const SelectCustomerCard({
    required this.customer,
    required this.onTap,
    this.width,
    super.key,
  });

  final Customer customer;
  final VoidCallback onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        shape: _borderRadius(),
        child: ListTile(
          shape: _borderRadius(),
          leading: CircleAvatar(
            child: Text(customer.initials.toUpperCase()),
          ),
          title: Text(customer.name),
          subtitle: Text(customer.formattedPhoneNumber),
          onTap: onTap,
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
