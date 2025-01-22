// lib/src/common_widgets/custom_text_form_field.dart
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_text_form_field.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/title_form_field.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/string_extensions.dart';
import 'package:business_invoice_generator_app/src/core/validators/email_validator.dart';
import 'package:business_invoice_generator_app/src/core/validators/phone_validator.dart';
import 'package:flutter/material.dart';

class BusinessFormField extends StatelessWidget {
  const BusinessFormField({
    required this.formType,
    required this.controller,
    super.key,
    this.maxLines = 1,
    this.onChanged,
  });

  final BusinessFormType formType;
  final TextEditingController controller;
  final int maxLines;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleFormField(title: formType.labelText),
        CustomTextFormField(
          controller: controller,
          labelText: formType.labelText,
          onChanged: onChanged,
          validator: (value) {
            return switch (formType) {
              BusinessFormType.email => value?.validateEmail().fold(
                    (failure) => failure.message,
                    (_) => null,
                  ),
              BusinessFormType.phoneNumber => value?.validatePhone().fold(
                    (failure) => failure.message,
                    (_) => null,
                  ),
              BusinessFormType.address ||
              BusinessFormType.companyName =>
                value.isNotNullAndNotEmpty ? null : 'Cannot be empty',
            };
          },
          keyboardType: formType.keyboardType,
          maxLines: maxLines,
        ),
        gapH8,
      ],
    );
  }
}

enum BusinessFormType {
  companyName(
    labelText: 'Company Name',
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

  const BusinessFormType({
    required this.labelText,
    required this.keyboardType,
  });

  final String labelText;

  final TextInputType keyboardType;
}
