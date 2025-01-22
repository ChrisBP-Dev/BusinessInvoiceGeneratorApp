import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_filters.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_filters_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/widgets/invoice_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class InvoicesList extends ConsumerWidget {
  const InvoicesList({
    required this.invoices,
    required this.onTap,
    super.key,
    this.padding,
  });

  final List<Invoice> invoices;
  final EdgeInsets? padding;
  final void Function(InvoiceID invoiceId) onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filters = ref.watch(invoiceFiltersControllerProvider);
    final isDateSorting = filters.sortType == InvoiceSortType.invoiceDate;

    return ResponsiveCenter(
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: Sizes.globalPadding,
            vertical: Sizes.p14,
          ),
      child: SingleChildScrollView(
        child: isDateSorting
            ? _InvoicesGroupedByDate(
                invoices: invoices,
                onTap: onTap,
              )
            : _InvoicesGrid(
                invoices: invoices,
                onTap: onTap,
              ),
      ),
    );
  }
}

class _InvoicesGrid extends StatelessWidget {
  const _InvoicesGrid({
    required this.invoices,
    required this.onTap,
  });

  final List<Invoice> invoices;
  final void Function(InvoiceID invoiceId) onTap;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: Sizes.p4,
      spacing: Sizes.p4,
      children: invoices
          .map(
            (invoice) => InvoiceCard(
              invoice: invoice,
              onTap: () => onTap(invoice.id),
            ),
          )
          .toList(),
    );
  }
}

class _InvoicesGroupedByDate extends StatelessWidget {
  const _InvoicesGroupedByDate({
    required this.invoices,
    required this.onTap,
  });

  final List<Invoice> invoices;
  final void Function(InvoiceID invoiceId) onTap;

  @override
  Widget build(BuildContext context) {
    final groupedInvoices = <DateTime, List<Invoice>>{};
    for (final invoice in invoices) {
      final date = DateTime(
        invoice.invoiceDate.year,
        invoice.invoiceDate.month,
      );
      groupedInvoices.putIfAbsent(date, () => []).add(invoice);
    }

    final dates = groupedInvoices.keys.toList();

    return Column(
      spacing: Sizes.p8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final date in dates) ...[
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(Sizes.p16),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.p16,
              vertical: Sizes.p4,
            ),
            child: Text(
              DateFormat.yMMMM().format(date),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          _InvoicesGrid(
            invoices: groupedInvoices[date]!,
            onTap: onTap,
          ),
          if (date != dates.last) const Divider(height: Sizes.p24),
        ],
      ],
    );
  }
}
