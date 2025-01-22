import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'update_customer_controller.g.dart';

/// {@template update_customer_controller}
/// Controller for managing customer update operations.
///
/// Provides functionality to:
/// - Update an existing customer
/// - Handle navigation after successful update
/// - Handle errors during update
/// {@endtemplate}
@riverpod
class UpdateCustomerController extends _$UpdateCustomerController {
  @override
  FutureOr<void> build() {
    // Controller state is only used for async operations
  }

  /// Updates an existing customer.
  ///
  /// This method will:
  /// 1. Update the customer in the repository
  /// 2. Navigate back on success
  /// 3. Handle any errors that occur during update
  Future<void> updateCustomer(Customer customer) async {
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

    state = await AsyncValue.guard(
      () => repository.updateCustomer(customer, currentUser.id),
    );
    if (!state.hasError) {
      ref.read(goRouterProvider).pop();
    }
  }
}
