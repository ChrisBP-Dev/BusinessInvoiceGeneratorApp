import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/url_launcher/presentation/email_launcher_button.dart';
import 'package:business_invoice_generator_app/src/features/url_launcher/presentation/maps_launcher_button.dart';
import 'package:business_invoice_generator_app/src/features/url_launcher/presentation/phone_launcher_button.dart';
import 'package:business_invoice_generator_app/src/features/url_launcher/presentation/url_launcher_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomerDetailsCard extends ConsumerWidget {
  const CustomerDetailsCard({required this.customer, super.key});
  final Customer customer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      urlLauncherControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                EmailLauncherButton(email: customer.email),
                PhoneLauncherButton(phoneNumber: customer.phoneNumber),
                MapsLauncherButton(address: customer.address),
              ],
            ),
            RowAlignned(
              fieldName: 'Name',
              fieldValue: customer.name,
            ),
            gapH8,
            RowAlignned(
              fieldName: 'Email',
              fieldValue: customer.email,
            ),
            gapH8,
            RowAlignned(
              fieldName: 'Address',
              fieldValue: customer.address,
            ),
            gapH8,
            RowAlignned(
              fieldName: 'Phone Number',
              fieldValue: customer.formattedPhoneNumber,
            ),
          ],
        ),
      ),
    );
  }
}

class RowAlignned extends StatelessWidget {
  const RowAlignned({
    required this.fieldName,
    required this.fieldValue,
    super.key,
  });
  final String fieldName;
  final String fieldValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$fieldName:  ',
          style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Text(
            fieldValue,
            style: context.bodyMedium,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
