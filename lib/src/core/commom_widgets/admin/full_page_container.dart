import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/admin_drawer.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_widget.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/bool_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FullPageContainer extends ConsumerStatefulWidget {
  const FullPageContainer({
    required this.page,
    super.key,
  });
  final Widget page;

  @override
  ConsumerState<FullPageContainer> createState() => _FullPageContainerState();
}

class _FullPageContainerState extends ConsumerState<FullPageContainer> {
  bool isAdmin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: isAdmin.whenOrNull(isTrue: AdminDrawer.new),
      body: SafeArea(
        child: isAdmin.when(
          isTrue: () => ResponsiveWidget(
            mobile: widget.page,
            desktop: Row(
              children: [
                AdminDrawer(
                  onPageSelected: () => setState(() {}),
                ),
                Expanded(child: widget.page),
              ],
            ),
          ),
          isFalse: () => widget.page,
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (isAdmin) ...[
            ResponsiveWidget(
              mobile: Builder(
                builder: (context) {
                  return FloatingActionButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    child: const Icon(Icons.menu),
                  );
                },
              ),
              desktop: const SizedBox.shrink(),
            ),
            gapH14,
          ],
        ],
      ),
    );
  }
}
