import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomPlaceholder extends StatelessWidget {
  const CustomPlaceholder({
    required this.viewName,
    this.height,
    super.key,
    this.width,
  });
  final String viewName;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final color = context.theme.colorScheme.primary;
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: color),
        ),
        child: Align(
          child: Text(
            viewName,
            style: TextStyle(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
