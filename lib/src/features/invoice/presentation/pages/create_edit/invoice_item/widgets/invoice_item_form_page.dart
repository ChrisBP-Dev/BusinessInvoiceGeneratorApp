import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/wrapper_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/alerts/alert_dialogs.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_appbar.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/edit_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/primary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/secondary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/title_form_field.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_item.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/controllers/invoice_item_form_controller.dart';
import 'package:business_invoice_generator_app/src/features/invoice/presentation/pages/create_edit/invoice_item/widgets/invoice_item_form_field.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/widgets/service_card.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:business_invoice_generator_app/src/routing/routes/invoice/invoice_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class InvoiceItemFormPage extends ConsumerStatefulWidget {
  const InvoiceItemFormPage({
    required this.title,
    super.key,
    this.invoiceItem,
    this.createTap,
    this.editTap,
  });
  final String title;
  final InvoiceItem? invoiceItem;
  final void Function(GlobalKey<FormState>, InvoiceItem)? createTap;
  final void Function(GlobalKey<FormState>, InvoiceItem)? editTap;
  @override
  ConsumerState<InvoiceItemFormPage> createState() =>
      _InvoiceItemFormPageState();
}

class _InvoiceItemFormPageState extends ConsumerState<InvoiceItemFormPage> {
  late final TextEditingController _sqFeetController;
  late final TextEditingController _priceController;
  late final TextEditingController _descriptionController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    final formState = ref.read(invoiceItemFormControllerProvider);

    _sqFeetController = TextEditingController(
      text:
          widget.invoiceItem?.sqFeet.toString() ?? formState.sqFeet.toString(),
    );
    _priceController = TextEditingController(
      text: widget.invoiceItem?.price.toString() ?? formState.price.toString(),
    );
    _descriptionController = TextEditingController(
      text: widget.invoiceItem?.description ?? formState.description,
    );

    if (widget.invoiceItem != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .read(invoiceItemFormControllerProvider.notifier)
            .setInvoiceItemforUpdate(widget.invoiceItem!);
      });
    }
  }

  @override
  void dispose() {
    _sqFeetController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // We no longer observe the entire state here
    return WrapperList(
      appBarWidget: CustomAppbar(title: widget.title),
      listWidget: ResponsiveCenter(
        maxContentWidth: Breakpoint.mobile,
        padding: const EdgeInsets.all(Sizes.globalPadding),
        child: Form(
          key: formKey,
          child: Column(
            spacing: Sizes.p8,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _ServiceSelector(),
              InvoiceItemFormField(
                formType: InvoiceItemFormType.description,
                controller: _descriptionController,
                onChanged: ref
                    .read(invoiceItemFormControllerProvider.notifier)
                    .setDescription,
              ),
              Row(
                spacing: Sizes.p14,
                children: [
                  Expanded(
                    child: InvoiceItemFormField(
                      formType: InvoiceItemFormType.sqFeet,
                      controller: _sqFeetController,
                      onChanged: (value) {
                        if (value.isEmpty) {
                          ref
                              .read(invoiceItemFormControllerProvider.notifier)
                              .setSqFeet(0);
                          return;
                        }
                        final parsed = int.tryParse(value);
                        if (parsed != null) {
                          ref
                              .read(invoiceItemFormControllerProvider.notifier)
                              .setSqFeet(parsed);
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: InvoiceItemFormField(
                      formType: InvoiceItemFormType.price,
                      controller: _priceController,
                      onChanged: (value) {
                        if (value.isEmpty) {
                          ref
                              .read(invoiceItemFormControllerProvider.notifier)
                              .setPrice(0);
                          return;
                        }
                        final parsed = double.tryParse(value);
                        if (parsed != null) {
                          ref
                              .read(invoiceItemFormControllerProvider.notifier)
                              .setPrice(parsed);
                        }
                      },
                    ),
                  ),
                ],
              ),
              _SubmitButton(
                formKey: formKey,
                createTap: widget.createTap,
                editTap: widget.editTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Widget for service selection in the item form
class _ServiceSelector extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(invoiceItemFormControllerProvider);
    final state = GoRouterState.of(context);
    final itemId = state.pathParameters[RouteConstants.invoiceItemID];

    /// Navigate to service selection
    void navigateToSelectService() {
      context.pushNamed(
        InvoiceRoute.selectService.name,
        extra: {
          RouteConstants.invoiceItemID: itemId,
        },
      );
    }

    if (formState.service != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleFormField(title: 'Service'),
          ServiceCard(
            service: formState.service!,
            onTap: navigateToSelectService,
          ),
        ],
      );
    }

    return SecondaryActionButton(
      text: 'Select Service',
      onTap: navigateToSelectService,
    );
  }
}

// Widget separado para el botón de envío
class _SubmitButton extends ConsumerWidget {
  const _SubmitButton({
    required this.formKey,
    this.createTap,
    this.editTap,
  });

  final GlobalKey<FormState> formKey;
  final void Function(GlobalKey<FormState>, InvoiceItem)? createTap;
  final void Function(GlobalKey<FormState>, InvoiceItem)? editTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(invoiceItemFormControllerProvider);

    void handleSubmit(
      void Function(GlobalKey<FormState>, InvoiceItem) onSubmit,
    ) {
      if (formState.service == null) {
        showExceptionAlertDialog(
          context: context,
          title: 'Error',
          exception: 'Please select a service',
        );
        return;
      }
      if (formKey.currentState!.validate()) {
        final invoiceItem = InvoiceItem(
          id: formState.id ?? const Uuid().v4(),
          description: formState.description,
          sqFeet: formState.sqFeet,
          price: formState.price,
          service: formState.service!,
        );
        onSubmit(formKey, invoiceItem);
      }
    }

    if (createTap != null) {
      return PrimaryActionButton(
        text: 'Create',
        onTap: () => handleSubmit(createTap!),
      );
    }

    if (editTap != null) {
      return EditActionButton(
        text: 'Save',
        onTap: () => handleSubmit(editTap!),
      );
    }

    return const SizedBox.shrink();
  }
}
