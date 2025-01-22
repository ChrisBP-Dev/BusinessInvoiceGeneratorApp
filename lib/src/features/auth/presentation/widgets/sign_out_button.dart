import 'package:business_invoice_generator_app/src/core/commom_widgets/secondary_action_button.dart';
import 'package:business_invoice_generator_app/src/features/auth/presentation/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignOutButton extends ConsumerWidget {
  const SignOutButton({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SecondaryActionButton(
      text: ' Sign Out',
      secondaryColor: color ?? Colors.white,
      onTap: () {
        ref.read(authControllerProvider.notifier).signOut();
      },
    );
  }
}
