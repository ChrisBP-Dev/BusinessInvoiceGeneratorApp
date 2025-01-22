import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class TitleFormField extends StatelessWidget {
  const TitleFormField({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title:',
      style: context.bodyMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
