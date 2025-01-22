import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
part 'create_customer_controller.g.dart';

/// {@template create_customer_controller}
/// Controller for managing customer creation operations.
///
/// Provides functionality to:
/// - Create a new customer with a unique ID
/// - Handle navigation after successful creation
/// - Handle errors during creation
/// {@endtemplate}
@riverpod
class CreateCustomerController extends _$CreateCustomerController {
  @override
  Future<void> build() async {
    // Controller state is only used for async operations
  }

  /// Creates a new customer with a unique ID.
  ///
  /// This method will:
  /// 1. Generate a unique ID for the customer
  /// 2. Add the customer to the repository
  /// 3. Navigate back on success
  /// 4. Handle any errors that occur during creation
  Future<void> createCustomer(Customer customer) async {
    state = const AsyncLoading();
    final id = const Uuid().v4();
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
      () => repository.addCustomer(customer.copyWith(id: id), currentUser.id),
    );
    if (!state.hasError) {
      ref.read(goRouterProvider).pop();
    }
  }
}
