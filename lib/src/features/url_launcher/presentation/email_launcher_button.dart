import 'package:business_invoice_generator_app/src/features/url_launcher/presentation/url_launcher_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmailLauncherButton extends ConsumerWidget {
  const EmailLauncherButton({required this.email, super.key});
  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(Icons.mail),
      onPressed: () {
        ref.read(urlLauncherControllerProvider.notifier).launchEmail(email);
      },
    );
  }
}
