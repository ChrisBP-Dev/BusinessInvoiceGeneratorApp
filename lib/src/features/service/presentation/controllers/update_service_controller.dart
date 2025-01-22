import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_validator.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/services_repository.dart';
import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:business_invoice_generator_app/src/routing/routes/admin/admin_app_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_service_controller.g.dart';

/// {@template update_service_controller}
/// Controller for updating services
/// {@endtemplate}
@riverpod
class UpdateServiceController extends _$UpdateServiceController {
  @override
  FutureOr<void> build() {
    // nothing to do
  }

  /// Updates an existing service
  /// Navigates to the services list after successful update
  Future<void> updateService(ServiceModel service) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final currentUser = ref.read(authRepositoryProvider).currentAppUser;
      if (currentUser == null) {
        throw const ServiceException.invalidData(
          message: 'User not authenticated',
        );
      }

      // Validate before updating
      const ServiceValidator().validate(service);

      final result = await ref.read(servicesRepositoryProvider).updateService(
            service,
            currentUser.id,
          );

      return result.fold(
        (error) => throw error,
        (_) {
          // Navigate after successful update
          ref.read(goRouterProvider).goNamed(AdminAppRoute.services.name);
        },
      );
    });
  }

  /// Updates specific fields of a service
  Future<void> updateServiceFields(
    ServiceModel service, {
    String? name,
    double? price,
  }) async {
    final updatedService = service.copyWith(
      name: name ?? service.name,
      price: price ?? service.price,
    );
    await updateService(updatedService);
  }
}
