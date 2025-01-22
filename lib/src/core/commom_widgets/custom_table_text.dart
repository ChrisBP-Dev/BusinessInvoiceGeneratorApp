import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomTableText extends StatelessWidget {
  const CustomTableText({
    required this.text,
    super.key,
    this.color,
    this.fontWeight,
  });
  final String text;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Align(
        child: Text(
          text,
          style: context.bodyMedium?.copyWith(
            color: color,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
