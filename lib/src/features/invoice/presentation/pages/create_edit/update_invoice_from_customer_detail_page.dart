import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_form_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/update_invoice_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/widgets/invoice_form_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UpdateInvoiceFromCustomerDetailPage extends ConsumerStatefulWidget {
  const UpdateInvoiceFromCustomerDetailPage({super.key});

  @override
  ConsumerState<UpdateInvoiceFromCustomerDetailPage> createState() =>
      _UpdateInvoiceFromCustomerDetailPageState();
}

class _UpdateInvoiceFromCustomerDetailPageState
    extends ConsumerState<UpdateInvoiceFromCustomerDetailPage> {
  late String customerID;
  late String invoiceID;
  bool _initialized = false;
  bool _formInitialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      final state = GoRouterState.of(context);
      customerID = state.pathParameters[RouteConstants.customerID]!;
      invoiceID = state.pathParameters[RouteConstants.invoiceID]!;
      _initialized = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<void>>(
      updateInvoiceControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final business = ref.read(businessControllerProvider).value;
    if (business == null) {
      return const Center(child: Text('Business not found'));
    }

    return AsyncValueWidget(
      value: ref.watch(watchInvoiceByIDProvider(business.id, invoiceID)),
      data: (invoiceEither) => invoiceEither.fold(
        (error) => Center(child: Text(error.toString())),
        (invoice) {
          if (invoice == null) {
            return const Center(child: Text('Invoice not found'));
          }

          // Solo inicializar el formulario la primera vez
          if (!_formInitialized) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ref
                  .read(invoiceFormControllerProvider.notifier)
                  .initForEdit(invoice);
              _formInitialized = true;
            });
          }

          return AsyncValueWidget(
            value:
                ref.watch(watchCustomerByIDProvider(business.id, customerID)),
            data: (customerEither) => customerEither.fold(
              (error) => Center(child: Text(error.toString())),
              (customer) {
                if (customer == null) {
                  return const Center(child: Text('Customer not found'));
                }
                return InvoiceFormPage(
                  title: 'Edit Invoice',
                  invoice: invoice,
                  preselectedCustomer: customer,
                  isLoading:
                      ref.watch(updateInvoiceControllerProvider).isLoading,
                  editTap: (formKey, updatedInvoice) {
                    if (!formKey.currentState!.validate()) return;

                    ref
                        .read(updateInvoiceControllerProvider.notifier)
                        .updateInvoice(updatedInvoice);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
