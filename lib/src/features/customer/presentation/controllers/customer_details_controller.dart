import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:business_invoice_generator_app/src/routing/routes/admin/admin_app_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'customer_details_controller.g.dart';

/// {@template customer_details_controller}
/// Controller for managing customer details operations.
///
/// Provides functionality to:
/// - Delete a customer
/// - Handle navigation after deletion
/// {@endtemplate}
@riverpod
class CustomerDetailsController extends _$CustomerDetailsController {
  @override
  FutureOr<void> build() {
    // Controller state is only used for async operations
  }

  /// Deletes a customer and navigates back to the customers list.
  ///
  /// This method will:
  /// 1. Navigate to the customers list first to avoid state errors
  /// 2. Delete the customer from the repository
  /// 3. Handle any errors that occur during deletion
  Future<void> deleteCustomer(Customer customer) async {
    state = const AsyncLoading();
    final repository = ref.read(customersRepositoryProvider);
    final currentUser = ref.read(authRepositoryProvider).currentAppUser;
    if (currentUser == null) {
      state = AsyncValue.error(
        'User not found',
        StackTrace.fromString(''),
      );
      return;
    }

    // Navigate first to avoid state errors
    ref.read(goRouterProvider).goNamed(AdminAppRoute.customers.name);

    state = await AsyncValue.guard(
      () => repository.deleteCustomer(customer, currentUser.id),
    );
  }
}
