import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/admin_wrap_details.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/alerts/delete_confirmation_dialog.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/primary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customers_repository.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/controllers/customer_details_controller.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/pages/details/widgets/customer_details_card.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_filters_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/invoices_list.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/widgets/invoice_filters_panel.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:business_invoice_generator_app/src/routing/routes/customer/customer_route.dart';
import 'package:business_invoice_generator_app/src/routing/routes/invoice/invoice_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomerDetailsPage extends ConsumerWidget {
  const CustomerDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = GoRouterState.of(context);
    final extra = state.pathParameters;
    final customerID = extra[RouteConstants.customerID]!;

    ref.listen<AsyncValue<void>>(
      customerDetailsControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final businessState = ref.watch(businessControllerProvider);

    return businessState.when(
      data: (business) {
        if (business == null) {
          return const Center(child: Text('Business not found'));
        }

        return AsyncValueWidget(
          value: ref.watch(watchCustomerByIDProvider(business.id, customerID)),
          data: (customerEither) {
            return customerEither.fold(
              (error) => Center(child: Text(error.toString())),
              (customer) {
                if (customer == null) {
                  return const Center(child: Text('Customer not found'));
                }

                return AdminWrapDetails(
                  title: 'Customer Details',
                  onEditTap: () {
                    context.pushNamed(
                      CustomerRoute.customerEdit.name,
                      pathParameters: {
                        RouteConstants.customerID: customerID,
                      },
                    );
                  },
                  onDeleteTap: () async {
                    final shouldDelete = await showDeleteConfirmationDialog(
                      context: context,
                      title: 'Delete Customer',
                      content: 'Are you sure you want to delete this customer?',
                    );

                    if (shouldDelete && context.mounted) {
                      await ref
                          .read(customerDetailsControllerProvider.notifier)
                          .deleteCustomer(customer);
                    }
                  },
                  listWidget: ResponsiveCenter(
                    padding: const EdgeInsets.all(Sizes.globalPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomerDetailsCard(customer: customer),
                        const Divider(),
                        Text(
                          'Invoices',
                          style: context.headlineSmall,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            PrimaryActionButton(
                              text: 'Create Invoice',
                              onTap: () {
                                context.pushNamed(
                                  InvoiceRoute
                                      .invoiceCreateFromCustomerDetail.name,
                                  pathParameters: {
                                    RouteConstants.customerID: customer.id,
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                        const InvoiceFiltersPanel(),
                        AsyncValueWidget(
                          value: ref.watch(
                            filteredCustomerInvoicesProvider(
                              business.id,
                              customer.id,
                            ),
                          ),
                          data: (invoices) => InvoicesList(
                            padding: EdgeInsets.zero,
                            invoices: invoices,
                            onTap: (invoiceId) => context.pushNamed(
                              InvoiceRoute.invoiceDetails.name,
                              pathParameters: {
                                RouteConstants.invoiceID: invoiceId,
                              },
                              queryParameters: {
                                RouteConstants.customerID: customerID,
                              },
                            ),
                          ),
                        ),
                        gapH20,
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      error: (error, stack) => Center(child: Text(error.toString())),
    );
  }
}
