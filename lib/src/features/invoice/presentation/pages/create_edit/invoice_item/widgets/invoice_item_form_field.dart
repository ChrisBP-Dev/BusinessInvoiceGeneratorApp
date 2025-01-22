// lib/src/common_widgets/custom_text_form_field.dart
import 'package:business_invoice_generator_app/src/core/commom_widgets/base_form_field.dart';
import 'package:business_invoice_generator_app/src/core/validators/form_validators.dart';
import 'package:flutter/material.dart';

class InvoiceItemFormField extends StatelessWidget {
  const InvoiceItemFormField({
    required this.formType,
    required this.controller,
    super.key,
    this.maxLines,
    this.onChanged,
  });

  final int? maxLines;
  final TextEditingController controller;
  final InvoiceItemFormType formType;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return BaseFormField(
      controller: controller,
      labelText: formType.labelText,
      keyboardType: formType.keyboardType,
      onChanged: onChanged,
      maxLines: maxLines,
      isRequired: formType.isRequired,
      validator: (value) {
        return switch (formType) {
          InvoiceItemFormType.name ||
          InvoiceItemFormType.description =>
            FormValidators.validateRequired(value),
          InvoiceItemFormType.sqFeet => FormValidators.validateNumber(
              value,
              errorMessage: 'Please enter a valid square feet value',
            ),
          InvoiceItemFormType.price => FormValidators.validatePrice(value),
        };
      },
    );
  }
}

enum InvoiceItemFormType implements BaseFormType {
  name(
    labelText: "Item's Name",
    keyboardType: TextInputType.text,
    isRequired: false,
  ),
  description(
    labelText: 'Description',
    keyboardType: TextInputType.text,
  ),
  sqFeet(
    labelText: 'Square Feet',
    keyboardType: TextInputType.numberWithOptions(decimal: true),
  ),
  price(
    labelText: 'Price',
    keyboardType: TextInputType.numberWithOptions(decimal: true),
  );

  const InvoiceItemFormType({
    required this.labelText,
    required this.keyboardType,
    this.isRequired = true,
  });

  @override
  final String labelText;
  @override
  final bool isRequired;
  @override
  final TextInputType keyboardType;
}
