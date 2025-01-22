// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessImpl _$$BusinessImplFromJson(Map<String, dynamic> json) =>
    _$BusinessImpl(
      id: json['id'] as String,
      companyLogo: json['companyLogo'] == null
          ? const FileAndPath()
          : FileAndPath.fromJson(json['companyLogo'] as Map<String, dynamic>),
      companyName: json['companyName'] as String? ?? 'Company Name',
      address: json['address'] as String? ?? 'Address for testing',
      email: json['email'] as String? ?? 'test@test.com',
      phoneNumber: json['phoneNumber'] as String? ?? '2393883322',
      colorHex: json['colorHex'] as String? ?? '#4CC8F7',
      website: json['website'] as String?,
    );

Map<String, dynamic> _$$BusinessImplToJson(_$BusinessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyLogo': instance.companyLogo.toJson(),
      'companyName': instance.companyName,
      'address': instance.address,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'colorHex': instance.colorHex,
      'website': instance.website,
    };
