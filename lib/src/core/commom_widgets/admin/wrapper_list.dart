import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:flutter/material.dart';

class WrapperList extends StatelessWidget {
  const WrapperList({
    required this.appBarWidget,
    required this.listWidget,
    super.key,
  });

  final Widget appBarWidget;
  final Widget listWidget;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        PinnedHeaderSliver(
          child: appBarWidget,
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed([
            gapH20,
            listWidget,
            gapH20,
          ]),
        ),
      ],
    );
  }
}
