import 'package:business_invoice_generator_app/src/features/business/presentation/business_details_page.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/pages/list/customers_list_page.dart';
import 'package:business_invoice_generator_app/src/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/list/invoices_list_page.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/pages/list/services_list_page.dart';
import 'package:flutter/material.dart';

/// Rutas principales de la aplicación administrativa
enum AdminAppRoute {
  /// Panel de administración
  dashboard('/dashboard', DashboardPage()),

  /// Detalles del negocio
  business('/business', BusinessDetailsPage()),

  /// Listado de clientes
  customers('/customers', CustomersListPage()),

  /// Listado de servicios
  services('/services', ServicesListPage()),

  /// Listado de facturas
  invoices('/invoices', InvoicesListPage());

  const AdminAppRoute(this.path, this.page);

  final String path;
  final Widget page;

  /// Obtiene todas las rutas principales
  static List<AdminAppRoute> get shellRoutes => values;
}
