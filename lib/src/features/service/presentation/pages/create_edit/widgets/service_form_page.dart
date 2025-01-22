import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/wrapper_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_appbar.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/edit_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/primary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:business_invoice_generator_app/src/features/service/presentation/pages/create_edit/widgets/service_form_field.dart';
import 'package:flutter/material.dart';

class ServiceFormPage extends StatefulWidget {
  const ServiceFormPage({
    required this.title,
    super.key,
    this.service,
    this.createTap,
    this.editTap,
    this.isLoading = false,
  });
  final String title;
  final ServiceModel? service;
  final void Function(GlobalKey<FormState>, ServiceModel)? createTap;
  final void Function(GlobalKey<FormState>, ServiceModel)? editTap;
  final bool isLoading;

  @override
  State<ServiceFormPage> createState() => _ServiceFormPageState();
}

class _ServiceFormPageState extends State<ServiceFormPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _priceController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.service?.name);
    _priceController = TextEditingController(
      text: widget.service?.price?.toString() ?? '',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  ServiceModel get currentService => ServiceModel(
        id: widget.service?.id ?? '',
        name: _nameController.text,
        price: double.tryParse(_priceController.text) ?? 0,
      );

  @override
  Widget build(BuildContext context) {
    return WrapperList(
      appBarWidget: CustomAppbar(title: widget.title),
      listWidget: ResponsiveCenter(
        maxContentWidth: Breakpoint.mobile,
        padding: const EdgeInsets.all(Sizes.globalPadding),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              ServiceFormField(
                formType: ServiceFormType.name,
                controller: _nameController,
              ),
              ServiceFormField(
                formType: ServiceFormType.price,
                controller: _priceController,
              ),
              gapH20,
              if (widget.createTap != null)
                PrimaryActionButton(
                  text: 'Create Service',
                  isLoading: widget.isLoading,
                  onTap: () => widget.createTap!.call(_formKey, currentService),
                ),
              if (widget.editTap != null)
                EditActionButton(
                  text: 'Save',
                  isLoading: widget.isLoading,
                  onTap: () => widget.editTap!.call(_formKey, currentService),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
