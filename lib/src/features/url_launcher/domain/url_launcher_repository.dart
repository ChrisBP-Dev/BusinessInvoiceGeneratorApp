import 'package:business_invoice_generator_app/src/features/url_launcher/data/url_launcher_repository_imp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'url_launcher_repository.g.dart';

mixin UrlLauncherRepository {
  Future<void> launchLink(String link);
}

@riverpod
UrlLauncherRepository urlLauncherRepository(Ref ref) {
  return UrlLauncherRepositoryImp();
}
