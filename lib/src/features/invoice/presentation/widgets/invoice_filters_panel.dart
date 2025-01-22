import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/secondary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_filters.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_filters_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InvoiceFiltersPanel extends ConsumerStatefulWidget {
  const InvoiceFiltersPanel({super.key});

  @override
  ConsumerState<InvoiceFiltersPanel> createState() =>
      _InvoiceFiltersPanelState();
}

class _InvoiceFiltersPanelState extends ConsumerState<InvoiceFiltersPanel>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final filters = ref.watch(invoiceFiltersControllerProvider);
    final hasActiveFilters = filters != const InvoiceFilters();

    return ResponsiveCenter(
      padding: const EdgeInsets.all(Sizes.globalPadding),
      child: Column(
        spacing: Sizes.p16,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: FilledButton.tonalIcon(
              style: FilledButton.styleFrom(
                backgroundColor: hasActiveFilters
                    ? context.colorScheme.primaryContainer
                    : null,
              ),
              onPressed: _toggleExpanded,
              icon: Icon(_isExpanded ? Icons.expand_less : Icons.filter_list),
              label: Text(hasActiveFilters ? 'Filters Active' : 'Filters'),
            ),
          ),
          SizeTransition(
            sizeFactor: _controller,
            axisAlignment: -1,
            child: Container(
              padding: const EdgeInsets.all(
                Sizes.globalPadding,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Sizes.globalPadding),
                border: Border(
                  top: BorderSide(
                    color: context.colorScheme.outlineVariant,
                  ),
                ),
              ),
              child: const InvoiceFiltersContent(),
            ),
          ),
        ],
      ),
    );
  }
}

class InvoiceFiltersContent extends ConsumerWidget {
  const InvoiceFiltersContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filters = ref.watch(invoiceFiltersControllerProvider);
    final controller = ref.read(invoiceFiltersControllerProvider.notifier);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const _SectionTitle(title: 'Sort by'),
        _SortOptions(
          filters: filters,
          controller: controller,
        ),
        const Divider(height: Sizes.p32),
        const _SectionTitle(title: 'Time Period'),
        _TimeFilterOptions(
          filters: filters,
          controller: controller,
        ),
        const Divider(height: Sizes.p32),
        const _SectionTitle(title: 'Status'),
        _StatusFilterOptions(
          filters: filters,
          controller: controller,
        ),
        const SizedBox(height: Sizes.p24),
        SecondaryActionButton(
          onTap: controller.resetFilters,
          text: 'Reset Filters',
        ),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.p8),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _SortOptions extends StatelessWidget {
  const _SortOptions({
    required this.filters,
    required this.controller,
  });

  final InvoiceFilters filters;
  final InvoiceFiltersController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          spacing: Sizes.p8,
          runSpacing: Sizes.p8,
          children: [
            _SortChip(
              label: 'Created Date',
              selected: filters.sortType == InvoiceSortType.createdAt,
              onSelected: () =>
                  controller.updateSortType(InvoiceSortType.createdAt),
            ),
            _SortChip(
              label: 'Invoice Date',
              selected: filters.sortType == InvoiceSortType.invoiceDate,
              onSelected: () =>
                  controller.updateSortType(InvoiceSortType.invoiceDate),
            ),
            _SortChip(
              label: 'Total Amount',
              selected: filters.sortType == InvoiceSortType.totalAmount,
              onSelected: () =>
                  controller.updateSortType(InvoiceSortType.totalAmount),
            ),
            _SortChip(
              label: 'Payment Status',
              selected: filters.sortType == InvoiceSortType.paymentStatus,
              onSelected: () =>
                  controller.updateSortType(InvoiceSortType.paymentStatus),
            ),
            _SortChip(
              label: 'Sent Status',
              selected: filters.sortType == InvoiceSortType.sentStatus,
              onSelected: () =>
                  controller.updateSortType(InvoiceSortType.sentStatus),
            ),
          ],
        ),
        const SizedBox(height: Sizes.p8),
        Row(
          children: [
            const Text('Order:'),
            const SizedBox(width: Sizes.p8),
            TextButton.icon(
              onPressed: controller.toggleSortDirection,
              icon: Icon(
                filters.sortAscending
                    ? Icons.arrow_upward
                    : Icons.arrow_downward,
              ),
              label: Text(filters.sortAscending ? 'Ascending' : 'Descending'),
            ),
          ],
        ),
      ],
    );
  }
}

class _SortChip extends StatelessWidget {
  const _SortChip({
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  final String label;
  final bool selected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: (value) {
        if (value) onSelected();
      },
    );
  }
}

class _TimeFilterOptions extends StatelessWidget {
  const _TimeFilterOptions({
    required this.filters,
    required this.controller,
  });

  final InvoiceFilters filters;
  final InvoiceFiltersController controller;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: Sizes.p8,
      runSpacing: Sizes.p8,
      children: [
        _TimeFilterChip(
          label: 'All Time',
          selected: filters.timeFilter == InvoiceTimeFilter.allTime,
          onSelected: () =>
              controller.updateTimeFilter(InvoiceTimeFilter.allTime),
        ),
        _TimeFilterChip(
          label: 'This Month',
          selected: filters.timeFilter == InvoiceTimeFilter.thisMonth,
          onSelected: () =>
              controller.updateTimeFilter(InvoiceTimeFilter.thisMonth),
        ),
        _TimeFilterChip(
          label: 'Last Month',
          selected: filters.timeFilter == InvoiceTimeFilter.lastMonth,
          onSelected: () =>
              controller.updateTimeFilter(InvoiceTimeFilter.lastMonth),
        ),
        _TimeFilterChip(
          label: 'This Year',
          selected: filters.timeFilter == InvoiceTimeFilter.thisYear,
          onSelected: () =>
              controller.updateTimeFilter(InvoiceTimeFilter.thisYear),
        ),
        _TimeFilterChip(
          label: 'Last Year',
          selected: filters.timeFilter == InvoiceTimeFilter.lastYear,
          onSelected: () =>
              controller.updateTimeFilter(InvoiceTimeFilter.lastYear),
        ),
      ],
    );
  }
}

class _TimeFilterChip extends StatelessWidget {
  const _TimeFilterChip({
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  final String label;
  final bool selected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: (value) {
        if (value) onSelected();
      },
    );
  }
}

class _StatusFilterOptions extends StatelessWidget {
  const _StatusFilterOptions({
    required this.filters,
    required this.controller,
  });

  final InvoiceFilters filters;
  final InvoiceFiltersController controller;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: Sizes.p8,
      runSpacing: Sizes.p8,
      children: [
        _StatusFilterChip(
          label: 'Paid',
          selected: filters.isPaid == true,
          onSelected: (selected) =>
              controller.togglePaymentStatus(selected ? true : null),
        ),
        _StatusFilterChip(
          label: 'Unpaid',
          selected: filters.isPaid == false,
          onSelected: (selected) =>
              controller.togglePaymentStatus(selected ? false : null),
        ),
        _StatusFilterChip(
          label: 'Sent',
          selected: filters.isSent == true,
          onSelected: (selected) =>
              controller.toggleSentStatus(selected ? true : null),
        ),
        _StatusFilterChip(
          label: 'Draft',
          selected: filters.isSent == false,
          onSelected: (selected) =>
              controller.toggleSentStatus(selected ? false : null),
        ),
      ],
    );
  }
}

class _StatusFilterChip extends StatelessWidget {
  const _StatusFilterChip({
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  final String label;
  final bool selected;
  final void Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: onSelected,
    );
  }
}
