import 'package:business_invoice_generator_app/src/core/commom_widgets/action_button.dart';
import 'package:flutter/material.dart';

class EditActionButton extends StatelessWidget {
  const EditActionButton({
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
      color: const Color.fromARGB(255, 124, 187, 126),
      isLoading: isLoading,
    );
  }
}
