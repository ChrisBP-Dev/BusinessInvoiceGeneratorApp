import 'package:business_invoice_generator_app/src/features/url_launcher/presentation/url_launcher_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhoneLauncherButton extends ConsumerWidget {
  const PhoneLauncherButton({required this.phoneNumber, super.key});
  final String phoneNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(Icons.phone),
      onPressed: () {
        ref
            .read(urlLauncherControllerProvider.notifier)
            .launchPhone(phoneNumber);
      },
    );
  }
}
