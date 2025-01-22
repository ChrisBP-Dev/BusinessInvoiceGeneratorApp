import 'package:business_invoice_generator_app/src/core/commom_widgets/action_button.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class SecondaryActionButton extends StatelessWidget {
  const SecondaryActionButton({
    required this.text,
    this.onTap,
    this.secondaryColor,
    this.isLoading = false,
    super.key,
  });
  final String text;
  final void Function()? onTap;
  final Color? secondaryColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final businessColor = context.colorScheme.primary;
    return ActionButton(
      text: text,
      onTap: onTap,
      secondaryColor: secondaryColor ?? businessColor,
      isLoading: isLoading,
    );
  }
}
