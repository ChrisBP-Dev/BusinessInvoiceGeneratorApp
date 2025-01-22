import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_exceptions.freezed.dart';

@freezed
class ServiceException with _$ServiceException implements Exception {
  const factory ServiceException.notFound({
    @Default('Service not found') String message,
    StackTrace? stackTrace,
  }) = ServiceNotFound;

  const factory ServiceException.invalidData({
    @Default('Invalid service data') String message,
    StackTrace? stackTrace,
  }) = ServiceInvalidData;

  const factory ServiceException.unauthorized({
    @Default('Unauthorized to perform this operation') String message,
    StackTrace? stackTrace,
  }) = ServiceUnauthorized;

  const factory ServiceException.createFailed({
    @Default('Failed to create service') String message,
    StackTrace? stackTrace,
  }) = ServiceCreateFailed;

  const factory ServiceException.updateFailed({
    @Default('Failed to update service') String message,
    StackTrace? stackTrace,
  }) = ServiceUpdateFailed;

  const factory ServiceException.deleteFailed({
    @Default('Failed to delete service') String message,
    StackTrace? stackTrace,
  }) = ServiceDeleteFailed;

  const factory ServiceException.listFailed({
    @Default('Failed to fetch services') String message,
    StackTrace? stackTrace,
  }) = ServiceListFailed;
}
