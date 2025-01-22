import 'package:business_invoice_generator_app/src/core/commom_widgets/base_form_field.dart';
import 'package:business_invoice_generator_app/src/core/validators/email_validator.dart';
import 'package:business_invoice_generator_app/src/core/validators/form_validators.dart';
import 'package:business_invoice_generator_app/src/core/validators/phone_validator.dart';
import 'package:flutter/material.dart';

class CustomerFormField extends StatelessWidget {
  const CustomerFormField({
    required this.formType,
    required this.controller,
    super.key,
    this.maxLines,
    this.onChanged,
  });

  final int? maxLines;
  final TextEditingController controller;
  final CustomerFormType formType;
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
          CustomerFormType.email => value?.validateEmail().fold(
                (failure) => failure.message,
                (_) => null,
              ),
          CustomerFormType.phoneNumber => value?.validatePhone().fold(
                (failure) => failure.message,
                (_) => null,
              ),
          CustomerFormType.address ||
          CustomerFormType.name =>
            FormValidators.validateRequired(value),
        };
      },
    );
  }
}

enum CustomerFormType implements BaseFormType {
  name(
    labelText: 'Customer Name',
    keyboardType: TextInputType.text,
  ),
  email(
    labelText: 'Email',
    keyboardType: TextInputType.emailAddress,
  ),
  address(
    labelText: 'Address',
    keyboardType: TextInputType.text,
  ),
  phoneNumber(
    labelText: 'Phone Number',
    keyboardType: TextInputType.phone,
  );

  const CustomerFormType({
    required this.labelText,
    required this.keyboardType,
  });

  @override
  final String labelText;
  @override
  final bool isRequired = true;
  @override
  final TextInputType keyboardType;
}
