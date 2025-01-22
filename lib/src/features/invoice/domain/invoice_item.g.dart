// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceItemImpl _$$InvoiceItemImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceItemImpl(
      id: json['id'] as String,
      service: ServiceModel.fromJson(json['service'] as Map<String, dynamic>),
      sqFeet: (json['sqFeet'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$InvoiceItemImplToJson(_$InvoiceItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service': instance.service.toJson(),
      'sqFeet': instance.sqFeet,
      'price': instance.price,
      'description': instance.description,
    };
