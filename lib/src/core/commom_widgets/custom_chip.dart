import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({required this.label, required this.color, super.key});
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(Sizes.p14),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.p4,
          horizontal: Sizes.p8,
        ),
        child: Text(
          label,
          style: context.bodySmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
