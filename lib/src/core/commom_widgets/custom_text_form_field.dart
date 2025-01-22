// lib/src/common_widgets/custom_text_form_field.dart
import 'package:flutter/material.dart';

/// A custom text form field widget with consistent styling
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.labelText,
    this.validator,
    this.keyboardType,
    this.maxLines,
    this.obscureText = false,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool obscureText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      validator: validator,
      keyboardType: keyboardType,
      maxLines: maxLines,
      obscureText: obscureText,
      onChanged: onChanged,
    );
  }
}
