import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_item.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'invoice_item_form_controller.g.dart';
part 'invoice_item_form_controller.freezed.dart';

@freezed
class InvoiceItemFormState with _$InvoiceItemFormState {
  const factory InvoiceItemFormState({
    ServiceModel? service,
    InvoiceItemID? id,
    @Default('') String description,
    @Default(0) int sqFeet,
    @Default(0) double price,
  }) = _InvoiceItemFormState;

  const InvoiceItemFormState._();

  InvoiceItemFormState copyWithService(ServiceModel service) {
    return copyWith(service: service);
  }
}

@riverpod
class InvoiceItemFormController extends _$InvoiceItemFormController {
  @override
  InvoiceItemFormState build() {
    return const InvoiceItemFormState();
  }

  void setService(ServiceModel service) {
    state = state.copyWithService(service);
  }

  void setDescription(String description) {
    state = state.copyWith(description: description);
  }

  void setSqFeet(int sqFeet) {
    state = state.copyWith(sqFeet: sqFeet);
  }

  void setPrice(double price) {
    state = state.copyWith(price: price);
  }

  void setInvoiceItemforUpdate(InvoiceItem invoiceItem) {
    state = state.copyWithService(invoiceItem.service).copyWith(
          id: invoiceItem.id,
          description: invoiceItem.description,
          sqFeet: invoiceItem.sqFeet,
          price: invoiceItem.price,
        );
  }
}
