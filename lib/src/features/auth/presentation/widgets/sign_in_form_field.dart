// lib/src/common_widgets/custom_text_form_field.dart
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_text_form_field.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/title_form_field.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/string_extensions.dart';
import 'package:business_invoice_generator_app/src/core/validators/email_validator.dart';
import 'package:flutter/material.dart';

class SignInFormField extends StatelessWidget {
  const SignInFormField({
    required this.formType,
    required this.controller,
    super.key,
    this.maxLines,
    this.onChanged,
    this.validator,
  });

  final int? maxLines;
  final TextEditingController controller;
  final SignInFormType formType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

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
          validator: validator ?? _defaultValidator,
          keyboardType: formType.keyboardType,
          maxLines: formType.isPassword ? 1 : maxLines,
          obscureText: formType.isPassword,
        ),
        gapH8,
      ],
    );
  }

  String? _defaultValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field cannot be empty';
    }

    return switch (formType) {
      SignInFormType.email => value.validateEmail().fold(
            (failure) => failure.message,
            (_) => null,
          ),
      SignInFormType.password =>
        value.length < 6 ? 'Password must be at least 6 characters' : null,
      SignInFormType.confirmPassword =>
        value.length < 6 ? 'Password must be at least 6 characters' : null,
    };
  }
}

enum SignInFormType {
  email(
    labelText: 'Email',
    keyboardType: TextInputType.emailAddress,
    isPassword: false,
  ),
  password(
    labelText: 'Password',
    keyboardType: TextInputType.text,
    isPassword: true,
  ),
  confirmPassword(
    labelText: 'Confirm Password',
    keyboardType: TextInputType.text,
    isPassword: true,
  );

  const SignInFormType({
    required this.labelText,
    required this.keyboardType,
    required this.isPassword,
  });

  final String labelText;
  final TextInputType keyboardType;
  final bool isPassword;
}
