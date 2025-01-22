// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String,
      invoiceNumber: (json['invoiceNumber'] as num).toInt(),
      invoiceDate: DateTime.parse(json['invoiceDate'] as String),
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      notes: json['notes'] as String? ?? '',
      jobName: json['jobName'] as String?,
      advancePayment: (json['advancePayment'] as num?)?.toDouble(),
      sentStatus:
          $enumDecodeNullable(_$InvoiceSentStatusEnumMap, json['sentStatus']) ??
              InvoiceSentStatus.draft,
      status: $enumDecodeNullable(_$InvoiceStatusEnumMap, json['status']) ??
          InvoiceStatus.pendingPayment,
      pdfLink: json['pdfLink'] == null
          ? const FileAndPath()
          : FileAndPath.fromJson(json['pdfLink'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoiceNumber': instance.invoiceNumber,
      'invoiceDate': instance.invoiceDate.toIso8601String(),
      'customer': instance.customer.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'notes': instance.notes,
      'jobName': instance.jobName,
      'advancePayment': instance.advancePayment,
      'sentStatus': _$InvoiceSentStatusEnumMap[instance.sentStatus],
      'status': _$InvoiceStatusEnumMap[instance.status],
      'pdfLink': instance.pdfLink.toJson(),
    };

const _$InvoiceSentStatusEnumMap = {
  InvoiceSentStatus.draft: 'draft',
  InvoiceSentStatus.sent: 'sent',
};

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.pendingPayment: 'pendingPayment',
  InvoiceStatus.paid: 'paid',
};
