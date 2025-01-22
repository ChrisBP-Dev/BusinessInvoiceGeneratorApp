import 'package:business_invoice_generator_app/src/core/commom_widgets/action_button.dart';
import 'package:flutter/material.dart';

class DeleteActionButton extends StatelessWidget {
  const DeleteActionButton({
    required this.text,
    this.isLoading = false,
    this.onTap,
    super.key,
  });
  final String text;
  final VoidCallback? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ActionButton(
      text: text,
      onTap: onTap,
      color: Colors.red,
      isLoading: isLoading,
    );
  }
}
