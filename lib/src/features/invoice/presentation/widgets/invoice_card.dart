import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_chip.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/date_format.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/double_extensions.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InvoiceCard extends ConsumerWidget {
  const InvoiceCard({required this.invoice, required this.onTap, super.key});
  final Invoice invoice;
  final void Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bodyStyle = context.bodyMedium;
    final boldStyle = bodyStyle?.copyWith(fontWeight: FontWeight.bold);

    return InkWell(
      borderRadius: BorderRadius.circular(Sizes.p8),
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: Sizes.p4,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                spacing: Sizes.p8,
                children: [
                  Expanded(
                    child:
                        Text(invoice.formattedInvoiceNumber, style: boldStyle),
                  ),
                  Text(invoice.invoiceDate.dateFormat, style: boldStyle),
                  CustomChip(
                    label: invoice.sentStatus.title,
                    color: invoice.sentStatus.color,
                  ),
                ],
              ),
              Text(invoice.customer.name, style: bodyStyle),
              Row(
                spacing: Sizes.p8,
                children: [
                  const Spacer(),
                  Text(invoice.subtotal.priceFormat, style: boldStyle),
                  CustomChip(
                    label: invoice.status.title,
                    color: invoice.status.color,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
