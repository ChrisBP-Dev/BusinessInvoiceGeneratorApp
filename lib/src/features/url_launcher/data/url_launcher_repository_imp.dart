import 'dart:developer';

import 'package:business_invoice_generator_app/src/features/url_launcher/domain/url_launcher_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherRepositoryImp implements UrlLauncherRepository {
  @override
  Future<void> launchLink(String link) async {
    final url = Uri.parse(link);
    try {
      if (!(await canLaunchUrl(url))) return;
      final response = await launchUrl(url);
      if (!response) return;
      return;
    } on Exception catch (e, st) {
      log(link, error: e, stackTrace: st);
      return;
    }
  }
}
