import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business_repository.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';

import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'update_business_controller.g.dart';

@riverpod
class UpdateBusinessController extends _$UpdateBusinessController {
  @override
  Future<void> build() async {
    // nothing to do here
  }

  Future<void> updateBusiness(Business business) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(businessRepositoryProvider);
      final result = await repository.updateBusiness(business, business.id);
      return result.fold(
        (error) => error,
        (_) async {
          await ref.read(businessControllerProvider.notifier).getBusinesses();

          Future.delayed(const Duration(milliseconds: 700), () {
            ref.read(goRouterProvider).pop();
          });
        },
      );
    });
  }
}
