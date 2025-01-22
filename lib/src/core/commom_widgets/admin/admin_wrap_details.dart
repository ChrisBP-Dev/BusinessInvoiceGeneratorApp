import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/wrapper_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_appbar.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/delete_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/edit_action_button.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:flutter/material.dart';

class AdminWrapDetails extends StatelessWidget {
  const AdminWrapDetails({
    required this.listWidget,
    required this.onEditTap,
    required this.title,
    this.onDeleteTap,
    this.withBackButton = true,
    super.key,
  });

  final Widget listWidget;
  final String title;
  final bool withBackButton;
  final void Function() onEditTap;
  final void Function()? onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return WrapperList(
      appBarWidget: CustomAppbar(
        withBackButton: withBackButton,
        title: title,
        actions: [
          EditActionButton(text: '✏️', onTap: onEditTap),
          gapW8,
          if (onDeleteTap != null)
            DeleteActionButton(text: '🗑️', onTap: onDeleteTap),
        ],
      ),
      listWidget: listWidget,
    );
  }
}
