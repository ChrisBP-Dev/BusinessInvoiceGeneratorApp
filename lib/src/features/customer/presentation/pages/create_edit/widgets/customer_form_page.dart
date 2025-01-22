import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/wrapper_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_appbar.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/edit_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/primary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/presentation/pages/create_edit/widgets/customer_form_field.dart';
import 'package:flutter/material.dart';

class CustomerFormPage extends StatefulWidget {
  const CustomerFormPage({
    required this.title,
    super.key,
    this.customer,
    this.createTap,
    this.editTap,
    this.isLoading = false,
  });
  final String title;
  final Customer? customer;
  final void Function(GlobalKey<FormState>, Customer)? createTap;
  final void Function(GlobalKey<FormState>, Customer)? editTap;
  final bool isLoading;

  @override
  State<CustomerFormPage> createState() => _CustomerFormPageState();
}

class _CustomerFormPageState extends State<CustomerFormPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _addressController;
  late final TextEditingController _phoneNumberController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.customer?.name);
    _emailController = TextEditingController(text: widget.customer?.email);
    _addressController = TextEditingController(text: widget.customer?.address);
    _phoneNumberController =
        TextEditingController(text: widget.customer?.phoneNumber);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _addressController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  Customer get currentCustomer => Customer(
        id: widget.customer?.id ?? '',
        name: _nameController.text,
        email: _emailController.text,
        address: _addressController.text,
        phoneNumber: _phoneNumberController.text,
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
              CustomerFormField(
                formType: CustomerFormType.name,
                controller: _nameController,
              ),
              CustomerFormField(
                formType: CustomerFormType.email,
                controller: _emailController,
              ),
              CustomerFormField(
                formType: CustomerFormType.address,
                controller: _addressController,
              ),
              CustomerFormField(
                formType: CustomerFormType.phoneNumber,
                controller: _phoneNumberController,
              ),
              gapH20,
              if (widget.createTap != null)
                PrimaryActionButton(
                  text: 'Create Customer',
                  isLoading: widget.isLoading,
                  onTap: () =>
                      widget.createTap!.call(_formKey, currentCustomer),
                ),
              if (widget.editTap != null)
                EditActionButton(
                  text: 'Save',
                  isLoading: widget.isLoading,
                  onTap: () => widget.editTap!.call(_formKey, currentCustomer),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
