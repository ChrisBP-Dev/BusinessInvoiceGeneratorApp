import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_text_form_field.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/title_form_field.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:flutter/material.dart';

/// Base class for form field types that defines common properties
abstract class BaseFormType {
  const BaseFormType({
    required this.labelText,
    required this.keyboardType,
    this.isRequired = true,
  });

  final String labelText;
  final TextInputType keyboardType;
  final bool isRequired;
}

/// A base form field widget that provides common structure and behavior
/// for all form fields in the application.
class BaseFormField extends StatelessWidget {
  const BaseFormField({
    required this.controller,
    required this.labelText,
    required this.keyboardType,
    super.key,
    this.validator,
    this.onChanged,
    this.maxLines,
    this.isRequired = true,
  });

  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final int? maxLines;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleFormField(title: labelText),
        CustomTextFormField(
          controller: controller,
          labelText: labelText,
          onChanged: onChanged,
          validator: validator ?? _defaultValidator,
          keyboardType: keyboardType,
          maxLines: maxLines,
        ),
        gapH8,
      ],
    );
  }

  String? _defaultValidator(String? value) {
    if (!isRequired) return null;
    return value?.trim().isEmpty ?? true
        ? 'Este campo no puede estar vacío'
        : null;
  }
}
