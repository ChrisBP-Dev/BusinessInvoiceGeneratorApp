import 'package:business_invoice_generator_app/src/core/commom_widgets/base_form_field.dart';
import 'package:business_invoice_generator_app/src/core/validators/form_validators.dart';
import 'package:flutter/material.dart';

class ServiceFormField extends StatelessWidget {
  const ServiceFormField({
    required this.formType,
    required this.controller,
    super.key,
    this.maxLines,
    this.onChanged,
  });

  final int? maxLines;
  final TextEditingController controller;
  final ServiceFormType formType;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return BaseFormField(
      controller: controller,
      labelText: formType.labelText,
      keyboardType: formType.keyboardType,
      isRequired: formType.isRequired,
      onChanged: onChanged,
      maxLines: maxLines,
      validator: (value) {
        return switch (formType) {
          ServiceFormType.name => FormValidators.validateRequired(value),
          ServiceFormType.price => FormValidators.validatePrice(value),
        };
      },
    );
  }
}

enum ServiceFormType implements BaseFormType {
  name(
    labelText: 'Service Name',
    keyboardType: TextInputType.text,
  ),
  price(
    labelText: 'Price',
    isRequired: false,
    keyboardType: TextInputType.numberWithOptions(decimal: true),
  );

  const ServiceFormType({
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
