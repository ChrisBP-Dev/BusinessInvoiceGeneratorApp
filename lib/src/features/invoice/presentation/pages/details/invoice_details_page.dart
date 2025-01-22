import 'dart:typed_data';

import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/admin_wrap_details.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/alerts/delete_confirmation_dialog.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_chip.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/primary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/secondary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_enums.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_details_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/details/widgets/invoice_preview.dart';
import 'package:business_invoice_generator_app/src/features/pdf/services/share_service.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:business_invoice_generator_app/src/routing/routes/invoice/invoice_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InvoiceDetailsPage extends ConsumerWidget {
  const InvoiceDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Escuchar cambios en el estado del controlador
    ref.listen<AsyncValue<void>>(
      invoiceDetailsControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    final state = GoRouterState.of(context);
    final extra = state.pathParameters;
    final invoiceID = extra[RouteConstants.invoiceID]!;
    // Obtener customerID desde queryParameters
    final customerID = state.uri.queryParameters[RouteConstants.customerID];
    final isFromCustomerDetail = customerID != null;

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
          return AsyncValueWidget<Business?>(
            value: ref.watch(businessControllerProvider),
            data: (business) {
              if (business == null) {
                return const Center(
                  child: Text('Business information not found'),
                );
              }
              return AdminWrapDetails(
                onEditTap: () {
                  if (isFromCustomerDetail) {
                    context.pushNamed(
                      InvoiceRoute.invoiceEditFromCustomerDetail.name,
                      pathParameters: {
                        RouteConstants.customerID: customerID,
                        RouteConstants.invoiceID: invoiceID,
                      },
                    );
                  } else {
                    context.pushNamed(
                      InvoiceRoute.invoiceEdit.name,
                      pathParameters: {
                        RouteConstants.invoiceID: invoiceID,
                      },
                    );
                  }
                },
                onDeleteTap: () async {
                  final shouldDelete = await showDeleteConfirmationDialog(
                    context: context,
                    title: 'Delete Invoice',
                    content: 'Are you sure you want to delete this invoice?',
                  );

                  if (shouldDelete && context.mounted) {
                    await ref
                        .read(invoiceDetailsControllerProvider.notifier)
                        .deleteInvoice(invoice, context);
                  }
                },
                title: 'Invoice Details',
                listWidget: ResponsiveCenter(
                  maxContentWidth: Breakpoint.tablet,
                  padding: const EdgeInsets.all(Sizes.globalPadding),
                  child: Column(
                    spacing: Sizes.globalPadding,
                    children: [
                      if (invoice.pdfLink.localFile != null)
                        InvoicePreview(
                          key: ValueKey(invoice.pdfLink.localFile),
                          pdfBytes: Uint8List.fromList(
                            invoice.pdfLink.localFile!.codeUnits,
                          ),
                        ),
                      Row(
                        spacing: Sizes.globalPadding,
                        children: [
                          Expanded(
                            child: SecondaryActionButton(
                              text: 'Send Email',
                              onTap: () {
                                ref
                                    .read(
                                      invoiceDetailsControllerProvider.notifier,
                                    )
                                    .shareInvoice(
                                      invoice: invoice,
                                      business: business,
                                      method: ShareMethod.email,
                                      context: context,
                                    );
                              },
                            ),
                          ),
                          Expanded(
                            child: SecondaryActionButton(
                              text: 'Send Whatsapp',
                              onTap: () {
                                ref
                                    .read(
                                      invoiceDetailsControllerProvider.notifier,
                                    )
                                    .shareInvoice(
                                      invoice: invoice,
                                      business: business,
                                      method: ShareMethod.whatsapp,
                                      context: context,
                                    );
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: Sizes.p14,
                        children: [
                          Expanded(
                            child: Row(
                              spacing: Sizes.p14,
                              children: [
                                const Text('Sent Status:'),
                                CustomChip(
                                  label: invoice.sentStatus.name,
                                  color: invoice.sentStatus.color,
                                ),
                              ],
                            ),
                          ),
                          PrimaryActionButton(
                            text: invoice.sentStatus == InvoiceSentStatus.sent
                                ? 'Mark as Draft'
                                : 'Mark as Sent',
                            onTap: () {
                              ref
                                  .read(
                                    invoiceDetailsControllerProvider.notifier,
                                  )
                                  .toggleSentStatus(invoice);
                            },
                            color: invoice.sentStatus == InvoiceSentStatus.sent
                                ? InvoiceSentStatus.draft.color
                                : InvoiceSentStatus.sent.color,
                          ),
                        ],
                      ),
                      Row(
                        spacing: Sizes.p14,
                        children: [
                          Expanded(
                            child: Row(
                              spacing: Sizes.p14,
                              children: [
                                const Text('Payment Status:'),
                                CustomChip(
                                  label: invoice.status.name,
                                  color: invoice.status.color,
                                ),
                              ],
                            ),
                          ),
                          PrimaryActionButton(
                            text: invoice.isPaid
                                ? 'Mark as Unpaid'
                                : 'Mark as Paid',
                            onTap: () {
                              ref
                                  .read(
                                    invoiceDetailsControllerProvider.notifier,
                                  )
                                  .togglePaymentStatus(invoice);
                            },
                            color: invoice.isPaid
                                ? InvoiceStatus.pendingPayment.color
                                : InvoiceStatus.paid.color,
                          ),
                        ],
                      ),
                      gapH48,
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
