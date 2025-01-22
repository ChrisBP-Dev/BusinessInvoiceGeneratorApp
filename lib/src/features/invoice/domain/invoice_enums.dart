import 'package:flutter/material.dart';

enum InvoiceStatus { pendingPayment, paid }

enum InvoiceSentStatus { draft, sent }

extension InvoiceStatusX on InvoiceStatus {
  String get title {
    return switch (this) {
      InvoiceStatus.pendingPayment => 'PENDING',
      InvoiceStatus.paid => 'PAID'
    };
  }

  Color get color {
    return switch (this) {
      InvoiceStatus.pendingPayment => const Color.fromARGB(255, 237, 175, 167),
      InvoiceStatus.paid => const Color.fromARGB(255, 171, 212, 190)
    };
  }
}

extension InvoiceSentStatusX on InvoiceSentStatus {
  String get title {
    return switch (this) {
      InvoiceSentStatus.draft => 'DRAFT',
      InvoiceSentStatus.sent => 'SENT'
    };
  }

  Color get color {
    return switch (this) {
      InvoiceSentStatus.draft => const Color.fromARGB(255, 205, 193, 219),
      InvoiceSentStatus.sent => const Color.fromARGB(255, 164, 205, 222)
    };
  }
}
