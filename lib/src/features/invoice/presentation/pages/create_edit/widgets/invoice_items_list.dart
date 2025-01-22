import 'package:business_invoice_generator_app/src/core/commom_widgets/secondary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_item.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/invoice_item/widgets/invoice_item_card.dart';
import 'package:flutter/material.dart';

class InvoiceItemsList extends StatelessWidget {
  const InvoiceItemsList({
    required this.items,
    required this.onAddItem,
    required this.onEditItem,
    required this.onRemoveItem,
    super.key,
  });

  final List<InvoiceItem> items;
  final VoidCallback onAddItem;
  final void Function(String) onEditItem;
  final void Function(String) onRemoveItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Items'),
            if (items.isEmpty) ...[
              gapH14,
              SecondaryActionButton(
                text: 'Add Item',
                onTap: onAddItem,
              ),
            ] else ...[
              gapH14,
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: items.length,
                separatorBuilder: (context, index) => gapH8,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InvoiceItemCard(
                    item: item,
                    onEdit: () => onEditItem(item.id),
                    onDelete: () => onRemoveItem(item.id),
                  );
                },
              ),
              gapH14,
              SecondaryActionButton(
                text: 'Add Another Item',
                onTap: onAddItem,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
