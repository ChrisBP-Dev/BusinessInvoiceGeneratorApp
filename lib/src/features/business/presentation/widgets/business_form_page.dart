import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/wrapper_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_appbar.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/edit_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/primary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/app_color_extension.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/file_and_path.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/widgets/business_color_picker.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/widgets/business_form_field.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/widgets/image_business_picker.dart';
import 'package:flutter/material.dart';

class BusinessFormPage extends StatefulWidget {
  const BusinessFormPage({
    required this.title,
    super.key,
    this.business,
    this.editTap,
    this.createTap,
    this.withBackButton = true,
    this.isLoading = false,
  });

  final String title;
  final Business? business;
  final void Function(GlobalKey<FormState>, Business)? editTap;
  final bool isLoading;
  final void Function(GlobalKey<FormState>, Business)? createTap;
  final bool withBackButton;

  @override
  State<BusinessFormPage> createState() => _BusinessFormPageState();
}

class _BusinessFormPageState extends State<BusinessFormPage> {
  final _formKey = GlobalKey<FormState>();
  late FileAndPath _image;
  late final TextEditingController _companyNameController;
  late final TextEditingController _addressController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneNumberController;
  late final TextEditingController _colorHexController;

  @override
  void initState() {
    _image = widget.business?.companyLogo ?? const FileAndPath();
    _companyNameController = TextEditingController(
      text: widget.business?.companyName,
    );
    _emailController = TextEditingController(
      text: widget.business?.email,
    );
    _addressController = TextEditingController(
      text: widget.business?.address,
    );
    _phoneNumberController = TextEditingController(
      text: widget.business?.phoneNumber,
    );
    _colorHexController = TextEditingController(
      text: widget.business?.colorHex ?? '#4CC8F7',
    );
    super.initState();
  }

  @override
  void dispose() {
    _companyNameController.dispose();
    _addressController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _colorHexController.dispose();
    super.dispose();
  }

  Business get currentBusiness => Business(
        id: widget.business?.id ?? '',
        companyLogo: _image,
        companyName: _companyNameController.text,
        address: _addressController.text,
        email: _emailController.text,
        phoneNumber: _phoneNumberController.text,
        colorHex: _colorHexController.text,
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: WrapperList(
        appBarWidget: CustomAppbar(
          title: widget.title,
          withBackButton: widget.withBackButton,
        ),
        listWidget: ResponsiveCenter(
          maxContentWidth: Breakpoint.mobile,
          padding: const EdgeInsets.all(Sizes.globalPadding),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                ImageBusinessPicker(
                  image: _image,
                  newImage: (image) => setState(() {
                    _image = image == null
                        ? const FileAndPath()
                        : _image.copyWith(localFile: image);
                  }),
                ),
                gapH20,
                BusinessColorPicker(
                  initialColor: _colorHexController.text,
                  onColorChanged: (value) {
                    setState(() {
                      _colorHexController.text =
                          value.toHex(includeAlpha: true);
                    });
                  },
                ),
                gapH20,
                BusinessFormField(
                  formType: BusinessFormType.companyName,
                  controller: _companyNameController,
                ),
                BusinessFormField(
                  formType: BusinessFormType.email,
                  controller: _emailController,
                ),
                BusinessFormField(
                  formType: BusinessFormType.address,
                  controller: _addressController,
                ),
                BusinessFormField(
                  formType: BusinessFormType.phoneNumber,
                  controller: _phoneNumberController,
                ),
                gapH20,
                if (widget.createTap != null)
                  PrimaryActionButton(
                    text: 'Create Business',
                    isLoading: widget.isLoading,
                    onTap: () =>
                        widget.createTap!.call(_formKey, currentBusiness),
                  ),
                if (widget.editTap != null)
                  EditActionButton(
                    text: 'Save',
                    isLoading: widget.isLoading,
                    onTap: () =>
                        widget.editTap!.call(_formKey, currentBusiness),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
