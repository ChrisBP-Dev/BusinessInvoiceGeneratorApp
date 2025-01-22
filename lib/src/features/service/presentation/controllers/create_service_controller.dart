import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_validator.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/services_repository.dart';
import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:business_invoice_generator_app/src/routing/routes/admin/admin_app_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'create_service_controller.g.dart';

/// {@template create_service_controller}
/// Controller for creating services
/// {@endtemplate}
@riverpod
class CreateServiceController extends _$CreateServiceController {
  @override
  FutureOr<void> build() {
    // nothing to do
  }

  /// Creates a new service
  /// Navigates to the services list after successful creation
  Future<void> createService(ServiceModel service) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final business = ref.read(businessControllerProvider).value;
      if (business == null) {
        throw const ServiceException.invalidData(
          message: 'Business not found',
        );
      }

      // Generate a new ID
      final id = const Uuid().v4();
      final newService = service.copyWith(id: id);

      // Validate before saving
      const ServiceValidator().validate(newService);

      final result = await ref.read(servicesRepositoryProvider).createService(
            newService,
            business.id,
          );

      return result.fold(
        (error) => throw error,
        (_) {
          // Navigate after successful creation
          ref.read(goRouterProvider).pop();
        },
      );
    });
  }

  /// Creates an empty service for the form
  ServiceModel createEmptyService() {
    return ServiceModel.empty();
  }
}
