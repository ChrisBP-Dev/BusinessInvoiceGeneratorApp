import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business_repository.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:business_invoice_generator_app/src/routing/routes/admin/admin_app_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'create_business_controller.g.dart';

@riverpod
class CreateBusinessController extends _$CreateBusinessController {
  @override
  Future<void> build() async {
    // nothing to do here
  }

  Future<void> createBusiness(Business business) async {
    state = const AsyncValue.loading();

    final repository = ref.read(businessRepositoryProvider);

    state = await AsyncValue.guard(() async {
      final currentUser = ref.read(authRepositoryProvider).currentAppUser;
      if (currentUser == null) {
        throw Exception('User not found');
      }
      final result = await repository.saveBusiness(
        business.copyWith(id: currentUser.id),
        currentUser.id,
      );

      return result.fold(
        (error) {
          throw Exception(error.message);
        },
        (_) {
          ref.invalidate(businessControllerProvider);
          ref.read(goRouterProvider).goNamed(AdminAppRoute.business.name);
        },
      );
    });
  }
}
