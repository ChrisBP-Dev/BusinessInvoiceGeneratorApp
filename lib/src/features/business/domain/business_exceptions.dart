import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_exceptions.freezed.dart';

@freezed
class BusinessException with _$BusinessException implements Exception {
  const BusinessException._();

  /// Thrown when a business is not found
  const factory BusinessException.notFound({
    required StackTrace stackTrace,
    @Default('Business not found') String message,
  }) = BusinessNotFound;

  /// Thrown when business data is invalid
  const factory BusinessException.invalidData({
    required StackTrace stackTrace,
    @Default('Invalid business data') String message,
  }) = BusinessInvalidData;

  /// Thrown when user is not authorized
  const factory BusinessException.unauthorized({
    required StackTrace stackTrace,
    @Default('Unauthorized to perform this operation') String message,
  }) = BusinessUnauthorized;

  /// Thrown when creating a business fails
  const factory BusinessException.createFailed({
    required StackTrace stackTrace,
    @Default('Failed to create business') String message,
  }) = BusinessCreateFailed;

  /// Thrown when updating a business fails
  const factory BusinessException.updateFailed({
    required StackTrace stackTrace,
    @Default('Failed to update business') String message,
  }) = BusinessUpdateFailed;

  /// Thrown when deleting a business fails
  const factory BusinessException.deleteFailed({
    required StackTrace stackTrace,
    @Default('Failed to delete business') String message,
  }) = BusinessDeleteFailed;
}
