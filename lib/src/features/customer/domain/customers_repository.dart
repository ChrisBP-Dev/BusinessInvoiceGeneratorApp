import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/customer/data/customer_firestore_service.dart';
import 'package:business_invoice_generator_app/src/features/customer/data/firebase_customer_repository_imp.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer_validator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'customers_repository.g.dart';

/// {@template customers_repository}
/// Repository interface for managing customers
/// {@endtemplate}
abstract class CustomersRepository {
  /// Gets a stream of all customers for a user
  Stream<Either<CustomerException, List<Customer>>> getCustomersStream(
    UserID userID,
  );

  /// Gets a stream of a specific customer
  Stream<Either<CustomerException, Customer?>> watchCustomerByID(
    UserID userID,
    CustomerID customerID,
  );

  /// Creates a new customer
  Future<Either<CustomerException, Unit>> addCustomer(
    Customer customer,
    UserID userID,
  );

  /// Updates an existing customer
  Future<Either<CustomerException, Unit>> updateCustomer(
    Customer customer,
    UserID userID,
  );

  /// Deletes a customer
  Future<Either<CustomerException, Unit>> deleteCustomer(
    Customer customer,
    UserID userID,
  );

  /// Gets a customer by ID
  Future<Either<CustomerException, Customer?>> getCustomerByID(
    UserID userID,
    CustomerID customerID,
  );
}

/// Provider for the customer validator
@riverpod
CustomerValidator customerValidator(Ref ref) {
  return const CustomerValidator();
}

/// Provider for the customers repository
@Riverpod(keepAlive: true)
CustomersRepository customersRepository(Ref ref) {
  return FirebaseCustomerRepositoryImp(
    customerFirestoreService: ref.watch(customerFirestoreServiceProvider),
    validator: ref.watch(customerValidatorProvider),
  );
}

/// Provider for getting a stream of all customers
@riverpod
Stream<Either<CustomerException, List<Customer>>> getCustomersStream(
  Ref ref,
  UserID userID,
) {
  return ref.watch(customersRepositoryProvider).getCustomersStream(userID);
}

/// Provider for getting a stream of a specific customer
@riverpod
Stream<Either<CustomerException, Customer?>> watchCustomerByID(
  Ref ref,
  UserID userID,
  CustomerID customerID,
) {
  return ref
      .watch(customersRepositoryProvider)
      .watchCustomerByID(userID, customerID);
}
