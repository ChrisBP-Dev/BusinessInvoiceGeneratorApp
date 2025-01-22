import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/services_repository.dart';
import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:business_invoice_generator_app/src/routing/routes/admin/admin_app_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_details_controller.g.dart';

/// {@template service_details_controller}
/// Controller for the service details page
/// {@endtemplate}
@riverpod
class ServiceDetailsController extends _$ServiceDetailsController {
  @override
  FutureOr<void> build() {
    // nothing to do
  }

  /// Deletes a service
  /// Navigates to the services list after successful deletion
  Future<void> deleteService(ServiceModel service) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final currentUser = ref.read(authRepositoryProvider).currentAppUser;
      if (currentUser == null) {
        throw const ServiceException.invalidData(
          message: 'User not authenticated',
        );
      }

      final result = await ref.read(servicesRepositoryProvider).deleteService(
            service,
            currentUser.id,
          );

      return result.fold(
        (error) => throw error,
        (_) {
          // Navigate after successful deletion
          ref.read(goRouterProvider).goNamed(AdminAppRoute.services.name);
        },
      );
    });
  }

  /// Searches services by name
  Future<List<ServiceModel>> searchServices(String query) async {
    final currentUser = ref.read(authRepositoryProvider).currentAppUser;
    if (currentUser == null) {
      throw const ServiceException.invalidData(
        message: 'User not authenticated',
      );
    }

    final result =
        await ref.read(servicesRepositoryProvider).searchServicesByName(
              currentUser.id,
              query,
            );

    return result.fold(
      (error) => throw error,
      (services) => services,
    );
  }
}
