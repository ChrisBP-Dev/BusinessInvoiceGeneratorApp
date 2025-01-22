import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/shader_text_effect.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/app_color_extension.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    required this.title,
    this.actions,
    this.withBackButton = true,
    super.key,
  });
  final bool withBackButton;
  final List<Widget>? actions;
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final businessColor = context.colorScheme.primary;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.onSecondary,
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.primary.withValues(alpha: 0.1),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: ResponsiveCenter(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.globalPadding,
          vertical: Sizes.p14,
        ),
        child: Row(
          children: [
            if (withBackButton) ...[
              IconButton(
                onPressed: context.pop,
                icon: const Icon(Icons.arrow_back),
              ),
              gapW8,
            ],
            Expanded(
              child: ShaderTextEffect(
                text: title,
                gradient: businessColor.getLinearGradient,
                style: context.headlineSmall
                    ?.copyWith(overflow: TextOverflow.ellipsis),
              ),
            ),
            if (actions != null && actions!.isNotEmpty) ...actions!,
          ],
        ),
      ),
    );
  }
}
