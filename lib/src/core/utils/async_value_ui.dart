import 'package:business_invoice_generator_app/src/core/commom_widgets/alerts/alert_dialogs.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_failure.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_exceptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncValueUI on AsyncValue<void> {
  void showAlertDialogOnError(BuildContext context) {
    if (!isLoading && hasError) {
      final message = switch (error) {
        AuthFailure() => (error! as AuthFailure).message,
        BusinessException() => (error! as BusinessException).message,
        ServiceException() => (error! as ServiceException).message,
        CustomerException() => (error! as CustomerException).message,
        InvoiceException() => (error! as InvoiceException).message,
        _ => error.toString(),
      };

      showExceptionAlertDialog(
        context: context,
        title: 'Error',
        exception: message,
      );
    }
  }
}
