import 'package:business_invoice_generator_app/src/core/commom_widgets/primary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:business_invoice_generator_app/src/routing/routes/admin/admin_app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmptyPlaceholderWidget extends StatelessWidget {
  const EmptyPlaceholderWidget({required this.message, super.key});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.globalPadding),
      child: Center(
        child: Column(
          spacing: Sizes.p32,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: context.headlineMedium?.copyWith(
                color: context.theme.colorScheme.error,
              ),
              textAlign: TextAlign.center,
            ),
            PrimaryActionButton(
              onTap: () => context.goNamed(AdminAppRoute.dashboard.name),
              text: 'go Home',
            ),
          ],
        ),
      ),
    );
  }
}
