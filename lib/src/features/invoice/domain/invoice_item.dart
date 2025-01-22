import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_item.freezed.dart';
part 'invoice_item.g.dart';

typedef InvoiceItemID = String;

@freezed
class InvoiceItem with _$InvoiceItem {
  // ignore: invalid_annotation_target :
  @JsonSerializable(explicitToJson: true)
  factory InvoiceItem({
    required InvoiceItemID id,
    required ServiceModel service,
    required int sqFeet,
    required double price,
    required String description,
  }) = _InvoiceItem;

  const InvoiceItem._();

  factory InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemFromJson(json);
}

extension InvoiceItemX on InvoiceItem {
  double get total => sqFeet * price;
}
