import 'package:business_invoice_generator_app/src/core/commom_widgets/empty_placeholder_widget.dart';
import 'package:flutter/material.dart';

/// Simple not found screen used for 404 errors (page not found on web)
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const EmptyPlaceholderWidget(
        message: 'pageNotFound404',
      ),
    );
  }
}
