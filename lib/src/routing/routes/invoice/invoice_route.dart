import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/create_invoice_from_customer_detail_page.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/create_invoice_page.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/edit_invoice_page.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/invoice_item/create_invoice_item_page.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/invoice_item/edit_invoice_item_page.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/invoice_item/widgets/select_service/select_services_list_page.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/update_invoice_from_customer_detail_page.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/widgets/select_customer/select_customer_list_page.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/details/invoice_details_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:flutter/material.dart';

/// Rutas de facturas
enum InvoiceRoute {
  /// Rutas principales
  invoiceDetails(RouteConstants.invoiceDetailsPath, InvoiceDetailsPage()),
  invoiceCreate(RouteConstants.invoiceCreatePath, CreateInvoicePage()),
  invoiceEdit(RouteConstants.invoiceEditPath, EditInvoicePage()),

  /// Subrutas para crear/editar items
  createItem(RouteConstants.invoiceCreateItemPath, CreateInvoiceItemPage()),
  editItem(RouteConstants.invoiceEditItemPath, EditInvoiceItemPage()),

  /// Subrutas para selección
  selectCustomer(
    RouteConstants.invoiceSelectCustomerPath,
    SelectCustomerListPage(),
  ),
  selectService(
    RouteConstants.invoiceSelectServicePath,
    SelectServicesListPage(),
  ),
  invoiceCreateFromCustomerDetail(
    RouteConstants.invoiceCreateFromCustomerDetailPath,
    CreateInvoiceFromCustomerDetailPage(),
  ),
  invoiceEditFromCustomerDetail(
    RouteConstants.invoiceEditFromCustomerDetailPath,
    UpdateInvoiceFromCustomerDetailPage(),
  );

  const InvoiceRoute(this.path, this.page);

  final String path;
  final Widget page;
}
