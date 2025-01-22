import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/double_extensions.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_item.dart';
import 'package:flutter/material.dart';

class InvoiceItemCard extends StatelessWidget {
  const InvoiceItemCard({
    required this.item,
    required this.onEdit,
    required this.onDelete,
    super.key,
  });

  final InvoiceItem item;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    spacing: Sizes.p4,
                    children: [
                      Text(
                        item.service.name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        item.description,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: onEdit,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: onDelete,
                    ),
                  ],
                ),
              ],
            ),
            gapH8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${item.sqFeet} SQ FT x ${item.price.priceFormat}'),
                Text(
                  item.total.priceFormat,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
