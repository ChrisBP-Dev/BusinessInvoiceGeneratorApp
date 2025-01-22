class RouteConstants {
  // Base paths
  static const String adminBasePath = '/admin';
  static const String dashboardBasePath = 'dashboard';
  static const String businessBasePath = 'business';
  static const String customersBasePath = 'customers';
  static const String servicesBasePath = 'services';
  static const String invoicesBasePath = 'invoices';

  // Common segments
  static const String createSegment = 'create';
  static const String editSegment = 'edit';
  static const String detailsSegment = 'details';
  static const String selectSegment = 'select';
  static const String itemSegment = 'item';
  static const String serviceSegment = 'service';
  static const String customerSegment = 'customer';

  // Parameters
  static const String invoiceID = 'invoice_id';
  static const String invoiceItemID = 'invoice_item_id';
  static const String customerID = 'customer_id';
  static const String serviceID = 'service_id';
  static const String businessID = 'business_id';

  // Business section paths
  static const String businessEditPath = '$businessBasePath-$editSegment';
  static const String businessDetailsPath = '$businessBasePath-$detailsSegment';

  // Customer section paths
  static const String customerCreatePath = '$customerSegment-$createSegment';
  static const String customerDetailsPath =
      '$customerSegment-$detailsSegment/:$customerID';
  static const String customerEditPath = '$customerSegment-$editSegment';

  // Service section paths
  static const String serviceCreatePath = '$serviceSegment-$createSegment';
  static const String serviceDetailsPath =
      '$serviceSegment-$detailsSegment/:$serviceID';
  static const String serviceEditPath = '$serviceSegment-$editSegment';

  // Invoice paths - Main flows
  static const String invoiceCreatePath = '$invoicesBasePath-$createSegment';
  static const String invoiceEditPath =
      '$invoicesBasePath-$editSegment/:$invoiceID';
  static const String invoiceDetailsPath =
      '$invoicesBasePath-$detailsSegment/:$invoiceID';
  static const String invoiceCreateFromCustomerDetailPath =
      '$invoicesBasePath-$createSegment/:$customerID';
  static const String invoiceEditFromCustomerDetailPath =
      '$invoicesBasePath-$editSegment/:$customerID/:$invoiceID';

  // Invoice paths - Sub flows (estas serán subrutas de create/edit invoice)
  static const String invoiceCreateItemPath = '$itemSegment-$createSegment';
  static const String invoiceEditItemPath =
      '$itemSegment-$editSegment/:$invoiceItemID';
  static const String invoiceSelectCustomerPath =
      '$selectSegment-$customerSegment';
  static const String invoiceSelectServicePath =
      '$selectSegment-$serviceSegment';
}
