import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:business_invoice_generator_app/src/features/dashboard/domain/dashboard_stats.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/services_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'dashboard_controller.g.dart';

@riverpod
class DashboardController extends _$DashboardController {
  @override
  Stream<DashboardStats> build() {
    final authRepository = ref.watch(authRepositoryProvider);
    final userID = authRepository.currentAppUser?.id;

    if (userID == null) {
      return Stream.value(
        const DashboardStats(),
      );
    }

    // Get repositories from providers
    final customerRepository = ref.watch(customersRepositoryProvider);
    final serviceRepository = ref.watch(servicesRepositoryProvider);
    final invoiceRepository = ref.watch(invoicesRepositoryProvider);

    // Watch collections changes
    final customersStream = customerRepository.getCustomersStream(userID).map(
          (either) => either.fold(
            (l) => <Customer>[],
            (r) => r,
          ),
        );

    final servicesStream = serviceRepository.getServicesStream(userID).map(
          (either) => either.fold(
            (l) => <ServiceModel>[],
            (r) => r,
          ),
        );

    final invoicesStream = invoiceRepository.getInvoicesStream(userID).map(
          (either) => either.fold(
            (l) => <Invoice>[],
            (r) => r,
          ),
        );

    // Combine streams and map to DashboardStats
    return Rx.combineLatest3<List<Customer>, List<ServiceModel>, List<Invoice>,
        DashboardStats>(
      customersStream,
      servicesStream,
      invoicesStream,
      (customers, services, invoices) => DashboardStats(
        totalCustomers: customers.length,
        totalServices: services.length,
        totalInvoices: invoices.length,
        totalAmount: invoices.fold(
          0,
          (sum, invoice) => sum + invoice.subtotal,
        ),
      ),
    );
  }
}
