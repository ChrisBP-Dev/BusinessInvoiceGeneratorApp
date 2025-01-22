import 'package:business_invoice_generator_app/src/core/services/firestore_service/firestore_exception.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/customer/data/customer_firestore_service.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer_validator.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:fpdart/fpdart.dart';

class FirebaseCustomerRepositoryImp implements CustomersRepository {
  const FirebaseCustomerRepositoryImp({
    required this.customerFirestoreService,
    CustomerValidator? validator,
  }) : _validator = validator ?? const CustomerValidator();

  final CustomerFirestoreService customerFirestoreService;
  final CustomerValidator _validator;

  @override
  Stream<Either<CustomerException, List<Customer>>> getCustomersStream(
    UserID userID,
  ) async* {
    try {
      await for (final customers
          in customerFirestoreService.getCustomersStream(userID)) {
        yield right(customers);
      }
    } on FirestoreException catch (e) {
      yield left(
        CustomerException.readError(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<CustomerException, Unit>> addCustomer(
    Customer customer,
    UserID userID,
  ) async {
    try {
      _validator.validate(customer);
      await customerFirestoreService.createCustomer(customer, userID);
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        CustomerException.createError(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<CustomerException, Unit>> updateCustomer(
    Customer customer,
    UserID userID,
  ) async {
    try {
      _validator.validate(customer);
      await customerFirestoreService.updateCustomer(customer, userID);
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        CustomerException.updateError(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<CustomerException, Unit>> deleteCustomer(
    Customer customer,
    UserID userID,
  ) async {
    try {
      await customerFirestoreService.deleteCustomer(customer, userID);
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        CustomerException.deleteError(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<CustomerException, Customer?>> getCustomerByID(
    UserID userID,
    CustomerID customerID,
  ) async {
    try {
      final customer =
          await customerFirestoreService.getCustomerByID(userID, customerID);
      return right(customer);
    } on FirestoreException catch (e) {
      return left(
        CustomerException.readError(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Stream<Either<CustomerException, Customer?>> watchCustomerByID(
    UserID userID,
    CustomerID customerID,
  ) async* {
    try {
      await for (final customer
          in customerFirestoreService.watchCustomerByID(userID, customerID)) {
        yield right(customer);
      }
    } on FirestoreException catch (e) {
      yield left(
        CustomerException.readError(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }
}
