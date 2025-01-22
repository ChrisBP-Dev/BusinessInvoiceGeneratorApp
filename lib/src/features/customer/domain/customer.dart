import 'package:business_invoice_generator_app/src/core/utils/extensions/string_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

/// Type for the customer ID
typedef CustomerID = String;

/// {@template customer}
/// Model that represents a customer in the application.
/// Contains information like name, address, email and phone number.
/// {@endtemplate}
@freezed
class Customer with _$Customer {
  /// {@macro customer}
  const factory Customer({
    /// Unique ID of the customer
    required CustomerID id,

    /// Name of the customer
    required String name,

    /// Address of the customer
    required String address,

    /// Email of the customer
    required String email,

    /// Phone number of the customer
    required String phoneNumber,
  }) = _Customer;

  const Customer._();

  /// Creates a [Customer] from a JSON Map
  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  /// Path for the Firestore collection
  static const String collectionPath = 'customers';
}

extension CustomerX on Customer {
  String get initials {
    if (name.isEmpty) return '';
    final nameParts = name.split(' ');
    return nameParts.length > 1
        ? '${nameParts.first[0]}${nameParts.last[0]}'
        : nameParts.first[0];
  }

  /// Get formatted phone number
  String get formattedPhoneNumber => phoneNumber.phoneNumberFormatted;
}
