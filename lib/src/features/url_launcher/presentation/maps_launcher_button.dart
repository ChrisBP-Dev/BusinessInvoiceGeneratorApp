import 'package:business_invoice_generator_app/src/features/url_launcher/presentation/url_launcher_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MapsLauncherButton extends ConsumerWidget {
  const MapsLauncherButton({required this.address, super.key});
  final String address;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(Icons.directions),
      onPressed: () {
        ref.read(urlLauncherControllerProvider.notifier).launchMap(address);
      },
    );
  }
}
