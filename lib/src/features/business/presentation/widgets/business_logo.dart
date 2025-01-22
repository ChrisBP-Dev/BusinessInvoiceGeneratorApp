import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_placeholder.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/wrap_network_image.dart';
import 'package:flutter/material.dart';

class BusinessLogo extends StatelessWidget {
  const BusinessLogo({super.key, this.imageUrl});
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return const CustomPlaceholder(
        height: 150,
        viewName: 'Logo',
      );
    }

    return WrapNetworkImage(
      imageUrl: imageUrl ?? '',
      fit: BoxFit.fitHeight,
      height: 150,
    );
  }
}
