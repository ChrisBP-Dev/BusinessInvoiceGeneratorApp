import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

/// Type for service ID
typedef ServiceID = String;

/// {@template service_model}
/// Model that represents a service in the application.
/// Contains information such as name, price and other service details.
/// {@endtemplate}
@freezed
class ServiceModel with _$ServiceModel {
  /// {@macro service_model}
  const factory ServiceModel({
    /// Unique identifier for the service
    required ServiceID id,

    /// Name of the service
    required String name,

    /// Price of the service (optional)
    double? price,
  }) = _ServiceModel;

  /// Creates a new service with an empty ID
  /// Useful for creation forms
  factory ServiceModel.empty() => const ServiceModel(
        id: '',
        name: '',
      );

  const ServiceModel._();

  /// Creates a [ServiceModel] from a JSON Map
  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);

  /// Path for the Firestore collection
  static const collectionPath = 'services';
}
