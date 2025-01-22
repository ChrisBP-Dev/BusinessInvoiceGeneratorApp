import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_exceptions.freezed.dart';

@freezed
class CustomerException with _$CustomerException implements Exception {
  const CustomerException._();

  /// Thrown when there is an error creating a customer
  const factory CustomerException.createError({
    required StackTrace stackTrace,
    @Default('Failed to create customer') String? message,
  }) = CustomerCreateError;

  /// Thrown when there is an error updating a customer
  const factory CustomerException.updateError({
    required StackTrace stackTrace,
    @Default('Failed to update customer') String? message,
  }) = CustomerUpdateError;

  /// Thrown when there is an error deleting a customer
  const factory CustomerException.deleteError({
    required StackTrace stackTrace,
    @Default('Failed to delete customer') String? message,
  }) = CustomerDeleteError;

  /// Thrown when there is an error reading a customer
  const factory CustomerException.readError({
    required StackTrace stackTrace,
    @Default('Failed to read customer') String? message,
  }) = CustomerReadError;

  /// Thrown when customer data is invalid
  const factory CustomerException.invalidData({
    required StackTrace stackTrace,
    @Default('Invalid customer data') String? message,
  }) = CustomerInvalidData;
}
