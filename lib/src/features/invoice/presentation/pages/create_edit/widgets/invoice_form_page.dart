import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/wrapper_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/alerts/alert_dialogs.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_appbar.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_text_form_field.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/edit_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/primary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/widgets/customer_card.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_validator.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_form_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/widgets/invoice_items_list.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/widgets/invoice_number_date_card.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/widgets/invoice_summary_card.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:business_invoice_generator_app/src/routing/routes/invoice/invoice_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class InvoiceFormPage extends ConsumerStatefulWidget {
  const InvoiceFormPage({
    required this.title,
    super.key,
    this.invoice,
    this.preselectedCustomer,
    this.createTap,
    this.editTap,
    this.isLoading = false,
  });

  final String title;
  final Invoice? invoice;
  final Customer? preselectedCustomer;
  final void Function(GlobalKey<FormState>, Invoice)? createTap;
  final void Function(GlobalKey<FormState>, Invoice)? editTap;
  final bool isLoading;

  @override
  ConsumerState<InvoiceFormPage> createState() => _InvoiceFormPageState();
}

class _InvoiceFormPageState extends ConsumerState<InvoiceFormPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _notesController;
  late final TextEditingController _jobNameController;
  bool _showNotes = false;
  bool _showJobName = false;

  @override
  void initState() {
    super.initState();
    final formState = ref.read(invoiceFormControllerProvider);

    _notesController = TextEditingController(
      text: widget.invoice?.notes ?? formState.notes,
    );
    _jobNameController = TextEditingController(
      text: widget.invoice?.jobName ?? formState.jobName,
    );

    // Initialize visibility of optional fields
    _showNotes = widget.invoice?.notes.isNotEmpty ?? false;
    _showJobName = widget.invoice?.jobName?.isNotEmpty ?? false;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // If it's an existing invoice, load all its data
      if (widget.invoice != null) {
        ref
            .read(invoiceFormControllerProvider.notifier)
            .initForEdit(widget.invoice!);
      } else {
        // If it's a new invoice, initialize the number
        ref.read(invoiceFormControllerProvider.notifier).initForCreate();
        // If there's a preselected customer, set it
        if (widget.preselectedCustomer != null) {
          ref
              .read(invoiceFormControllerProvider.notifier)
              .setCustomer(widget.preselectedCustomer!);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(invoiceFormControllerProvider);
    final controller = ref.read(invoiceFormControllerProvider.notifier);

    return PopScope(
      canPop: false,
      child: WrapperList(
        appBarWidget: CustomAppbar(
          title: widget.title,
        ),
        listWidget: Form(
          key: _formKey,
          child: ResponsiveCenter(
            maxContentWidth: Breakpoint.mobile,
            padding: const EdgeInsets.all(Sizes.globalPadding),
            child: Column(
              spacing: Sizes.p14,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InvoiceNumberDateCard(
                  invoiceNumber: formState.formattedInvoiceNumber,
                  invoiceDate: formState.invoiceDate,
                  onDateChanged: controller.setInvoiceDate,
                ),
                CustomerCard(
                  customer: formState.customer,
                  isPreselected: widget.preselectedCustomer != null,
                  onTap: widget.preselectedCustomer == null
                      ? () =>
                          context.pushNamed(InvoiceRoute.selectCustomer.name)
                      : null,
                ),
                InvoiceItemsList(
                  items: formState.items,
                  onAddItem: () =>
                      context.pushNamed(InvoiceRoute.createItem.name),
                  onEditItem: (itemId) => context.pushNamed(
                    InvoiceRoute.editItem.name,
                    pathParameters: {RouteConstants.invoiceItemID: itemId},
                  ),
                  onRemoveItem: controller.removeInvoiceItem,
                ),
                InvoiceSummaryCard(
                  subtotal: formState.subtotal,
                  total: formState.total,
                  advancePayment: formState.advancePayment,
                  onAdvancePaymentTap: formState.total > 0
                      ? () => _showAdvancePaymentDialog(
                            context,
                            controller,
                            formState.advancePayment,
                          )
                      : null,
                ),
                SwitchListTile.adaptive(
                  title: const Text('Add Job Name'),
                  value: _showJobName,
                  onChanged: (value) {
                    setState(() => _showJobName = value);
                    if (!value) {
                      _jobNameController.clear();
                      controller.setJobName(null);
                    }
                  },
                ),
                if (_showJobName) ...[
                  CustomTextFormField(
                    controller: _jobNameController,
                    labelText: 'Job Name',
                    onChanged: controller.setJobName,
                  ),
                ],
                SwitchListTile.adaptive(
                  title: const Text('Add Notes'),
                  value: _showNotes,
                  onChanged: (value) {
                    setState(() => _showNotes = value);
                    if (!value) {
                      _notesController.clear();
                      controller.setNotes(null);
                    }
                  },
                ),
                if (_showNotes) ...[
                  CustomTextFormField(
                    controller: _notesController,
                    labelText: 'Notes',
                    maxLines: 3,
                    onChanged: controller.setNotes,
                  ),
                ],
                _SubmitButton(
                  formKey: _formKey,
                  formState: formState,
                  invoice: widget.invoice,
                  createTap: widget.createTap,
                  editTap: widget.editTap,
                  isLoading: widget.isLoading,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showAdvancePaymentDialog(
    BuildContext context,
    InvoiceFormController controller,
    double? currentValue,
  ) async {
    final advanceController = TextEditingController(
      text: currentValue?.toString() ?? '',
    );
    final formKey = GlobalKey<FormState>();
    final formState = ref.read(invoiceFormControllerProvider);

    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Advance Payment'),
          content: Form(
            key: formKey,
            child: CustomTextFormField(
              controller: advanceController,
              labelText: 'Amount',
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return null;
                }

                final amount = double.tryParse(value);
                if (amount == null) {
                  return 'Please enter a valid number';
                }

                try {
                  const InvoiceValidator().validateAdvancePayment(
                    amount,
                    formState.subtotal,
                  );
                  return null; // Valid
                } on InvoiceException catch (e) {
                  return e.message;
                }
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  final value = advanceController.text;
                  if (value.isEmpty) {
                    controller.setAdvancePayment(null);
                  } else {
                    final amount = double.parse(value);
                    controller.setAdvancePayment(amount);
                  }
                  Navigator.pop(context);
                }
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton({
    required this.formKey,
    required this.formState,
    required this.invoice,
    this.createTap,
    this.editTap,
    this.isLoading = false,
  });

  final GlobalKey<FormState> formKey;
  final InvoiceFormState formState;
  final Invoice? invoice;
  final void Function(GlobalKey<FormState>, Invoice)? createTap;
  final void Function(GlobalKey<FormState>, Invoice)? editTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void handleSubmit(
      void Function(GlobalKey<FormState>, Invoice) onSubmit,
    ) {
      if (formKey.currentState!.validate()) {
        if (formState.customer == null) {
          showExceptionAlertDialog(
            context: context,
            title: 'Customer Required',
            exception: 'Please select a customer for the invoice',
          );
          return;
        }

        if (formState.items.isEmpty) {
          showExceptionAlertDialog(
            context: context,
            title: 'Item Required',
            exception: 'Add at least one item to the invoice',
          );
          return;
        }

        final newInvoice = Invoice(
          id: invoice?.id ?? const Uuid().v4(),
          customer: formState.customer!,
          items: formState.items,
          notes: formState.notes.isEmpty ? '' : formState.notes,
          jobName: formState.jobName.isEmpty ? null : formState.jobName,
          advancePayment: formState.advancePayment,
          invoiceDate: formState.invoiceDate,
          invoiceNumber: invoice?.invoiceNumber ?? formState.invoiceNumber,
          createdAt: invoice?.createdAt ?? DateTime.now(),
        );

        onSubmit(formKey, newInvoice);
      }
    }

    if (invoice != null && editTap != null) {
      return EditActionButton(
        text: 'Save Changes',
        isLoading: isLoading,
        onTap: () => handleSubmit(editTap!),
      );
    }

    if (createTap != null) {
      return PrimaryActionButton(
        text: 'Create Invoice',
        isLoading: isLoading,
        onTap: () => handleSubmit(createTap!),
      );
    }

    return const SizedBox.shrink();
  }
}
