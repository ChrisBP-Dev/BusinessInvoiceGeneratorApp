import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/double_extensions.dart';
import 'package:flutter/material.dart';

class InvoiceSummaryCard extends StatelessWidget {
  const InvoiceSummaryCard({
    required this.subtotal,
    required this.total,
    super.key,
    this.advancePayment,
    this.onAdvancePaymentTap,
  });

  final double subtotal;
  final double total;
  final double? advancePayment;
  final VoidCallback? onAdvancePaymentTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Subtotal:'),
                Text(subtotal.priceFormat),
              ],
            ),
            const SizedBox(height: Sizes.p8),
            InkWell(
              onTap: onAdvancePaymentTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Advance Payment:'),
                  Row(
                    spacing: Sizes.p4,
                    children: [
                      Text((advancePayment ?? 0).priceFormat),
                      if (onAdvancePaymentTap != null) ...[
                        const Icon(
                          Icons.edit,
                          size: 16,
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  total.priceFormat,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
