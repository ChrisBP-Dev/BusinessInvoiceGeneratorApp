import 'package:business_invoice_generator_app/src/features/service/presentation/pages/create_edit/create_service_page.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/pages/create_edit/edit_service_page.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/pages/details/service_details_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:flutter/material.dart';

/// Rutas de servicios
enum ServiceRoute {
  /// Detalles del servicio
  serviceDetails(RouteConstants.serviceDetailsPath, ServiceDetailsPage()),

  /// Crear nuevo servicio
  serviceCreate(RouteConstants.serviceCreatePath, CreateServicePage()),

  /// Editar servicio existente - Reutilizamos CreateServicePage
  serviceEdit(RouteConstants.serviceEditPath, EditServicePage());

  const ServiceRoute(this.path, this.page);

  final String path;
  final Widget page;
}
