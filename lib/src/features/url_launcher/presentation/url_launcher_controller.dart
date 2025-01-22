import 'package:business_invoice_generator_app/src/core/validators/email_validator.dart';
import 'package:business_invoice_generator_app/src/features/url_launcher/domain/url_launcher_repository.dart';
import 'package:mailto/mailto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'url_launcher_controller.g.dart';

@riverpod
class UrlLauncherController extends _$UrlLauncherController {
  @override
  FutureOr<void> build() {
    // nothing to do for now
  }

  Future<void> launchEmail(String email) async {
    final emailValidation = const EmailValidator().validate(email);
    if (emailValidation.isLeft()) {
      state = AsyncValue.error(
        'Invalid email',
        StackTrace.fromString(''),
      );
      return;
    }

    final link = Mailto(
      to: [email],
      cc: [],
    );
    final launcher = ref.read(urlLauncherRepositoryProvider);
    return _launch(() => launcher.launchLink('$link'));
  }

  Future<void> launchPhone(String phoneNumber) async {
    final link = 'tel:+1$phoneNumber';
    final launcher = ref.read(urlLauncherRepositoryProvider);
    return _launch(() => launcher.launchLink(link));
  }

  Future<void> launchMap(String direccion) async {
    final googleMapsUrl =
        'https://www.google.com/maps/search/?api=1&query=$direccion';

    final launcher = ref.read(urlLauncherRepositoryProvider);
    return _launch(() => launcher.launchLink(googleMapsUrl));
  }

  Future<void> _launch(Future<void> Function() launcher) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(launcher);
  }
}
