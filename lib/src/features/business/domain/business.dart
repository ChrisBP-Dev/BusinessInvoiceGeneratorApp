import 'package:business_invoice_generator_app/src/core/utils/extensions/string_extensions.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/file_and_path.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'business.freezed.dart';
part 'business.g.dart';

/// Typedef for business ID for better type safety
typedef BusinessId = String;

/// Business model
@freezed
class Business with _$Business {
  // ignore: invalid_annotation_target : to use explicitToJsons
  @JsonSerializable(explicitToJson: true)

  /// Constructor
  const factory Business({
    required BusinessId id,
    @Default(FileAndPath()) FileAndPath companyLogo,
    @Default('Company Name') String companyName,
    @Default('Address for testing') String address,
    @Default('test@test.com') String email,
    @Default('2393883322') String phoneNumber,
    @Default('#4CC8F7') String colorHex,
    String? website,
  }) = _Business;

  const Business._();

  /// Creates a Business from JSON
  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);

  /// Collection path for business
  static const businessPath = 'business';
}

/// Extension methods for Business class
extension BusinessX on Business {
  /// Get color from hex string
  Color get color => colorHex.colorFromHexColor;

  /// Get formatted phone number
  String get formattedPhoneNumber => phoneNumber.phoneNumberFormatted;
}
