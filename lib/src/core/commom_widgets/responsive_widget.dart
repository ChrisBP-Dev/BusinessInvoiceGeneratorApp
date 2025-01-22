import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    required this.mobile,
    required this.desktop,
    this.tablet,
    super.key,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width < Breakpoint.mobile) return mobile;
    if (width < Breakpoint.tablet) return tablet ?? mobile;
    return desktop;
  }
}
