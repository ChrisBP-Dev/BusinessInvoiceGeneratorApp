import 'package:business_invoice_generator_app/src/core/commom_widgets/action_button.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class PrimaryActionButton extends StatelessWidget {
  const PrimaryActionButton({
    required this.text,
    this.isLoading = false,
    this.onTap,
    this.color,
    super.key,
  });

  final String text;
  final VoidCallback? onTap;
  final bool isLoading;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final businessColor = color ?? context.colorScheme.primary;
    return ActionButton(
      text: text,
      onTap: onTap,
      color: businessColor,
      isLoading: isLoading,
    );
  }
}
