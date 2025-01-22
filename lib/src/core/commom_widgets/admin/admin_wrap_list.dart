import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/wrapper_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_appbar.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/primary_action_button.dart';
import 'package:flutter/material.dart';

class AdminWrapList extends StatelessWidget {
  const AdminWrapList({
    required this.title,
    required this.listWidget,
    required this.onCreateTap,
    required this.titleButton,
    this.withBackButton = false,
    super.key,
  });

  final String title;
  final String titleButton;
  final Widget listWidget;
  final bool withBackButton;
  final void Function() onCreateTap;

  @override
  Widget build(BuildContext context) {
    return WrapperList(
      appBarWidget: CustomAppbar(
        title: title,
        withBackButton: withBackButton,
        actions: [
          PrimaryActionButton(
            text: titleButton,
            onTap: onCreateTap,
          ),
        ],
      ),
      listWidget: listWidget,
    );
  }
}
