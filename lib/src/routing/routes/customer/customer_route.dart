import 'package:business_invoice_generator_app/src/features/customer/presentation/pages/create_edit/create_customer_page.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/pages/create_edit/edit_customer_page.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/pages/details/customer_details_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:flutter/material.dart';

/// Rutas de clientes
enum CustomerRoute {
  /// Detalles del cliente
  customerDetails(RouteConstants.customerDetailsPath, CustomerDetailsPage()),

  /// Crear nuevo cliente
  customerCreate(RouteConstants.customerCreatePath, CreateCustomerPage()),

  /// Editar cliente existente - Reutilizamos CreateCustomerPage
  customerEdit(RouteConstants.customerEditPath, EditCustomerPage());

  const CustomerRoute(this.path, this.page);

  final String path;
  final Widget page;
}
