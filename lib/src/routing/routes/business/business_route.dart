import 'package:business_invoice_generator_app/src/features/business/presentation/edit_business_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:flutter/material.dart';

/// Rutas de negocio
enum BusinessRoute {
  /// Edición del negocio
  businessEdit(RouteConstants.businessEditPath, EditBusinessPage());

  const BusinessRoute(this.path, this.page);

  final String path;
  final Widget page;
}
