import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/widgets/admin_menu_item.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/string_extensions.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:business_invoice_generator_app/src/features/auth/presentation/widgets/sign_out_button.dart';
import 'package:business_invoice_generator_app/src/routing/routes/admin/admin_app_route.dart';
import 'package:flutter/material.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({super.key, this.onPageSelected});
  final VoidCallback? onPageSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: ColoredBox(
        color: context.theme.colorScheme.onSecondaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.globalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              gapH48,
              Text(
                'Admin Panel',
                style: context.headlineSmall
                    ?.copyWith(color: context.theme.colorScheme.onSecondary),
              ),
              Divider(
                color: context.theme.colorScheme.onSecondary,
              ),
              gapH14,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ...AdminAppRoute.shellRoutes.map(
                        (route) => AdminMenuItem(
                          title: route.name.titleCase,
                          path: route.path,
                          onPageSelected: onPageSelected,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SignOutButton(),
              gapH48,
            ],
          ),
        ),
      ),
    );
  }
}
