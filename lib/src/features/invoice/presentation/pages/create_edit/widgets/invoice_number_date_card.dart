import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:flutter/material.dart';

class InvoiceNumberDateCard extends StatefulWidget {
  const InvoiceNumberDateCard({
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.onDateChanged,
    super.key,
  });

  final String invoiceNumber;
  final DateTime invoiceDate;
  final void Function(DateTime) onDateChanged;

  @override
  State<InvoiceNumberDateCard> createState() => _InvoiceNumberDateCardState();
}

class _InvoiceNumberDateCardState extends State<InvoiceNumberDateCard> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.invoiceDate;
  }

  Future<void> _pickDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
      widget.onDateChanged(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p14),
        child: Column(
          spacing: Sizes.p8,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Invoice Number:'),
                Text(widget.invoiceNumber),
              ],
            ),
            InkWell(
              onTap: () => _pickDate(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Invoice Date:'),
                  Row(
                    spacing: Sizes.p4,
                    children: [
                      Text(selectedDate.toString().split(' ')[0]),
                      const Icon(
                        Icons.calendar_today,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
