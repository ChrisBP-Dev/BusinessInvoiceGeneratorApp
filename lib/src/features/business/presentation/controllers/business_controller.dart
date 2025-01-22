import 'dart:developer' as dev;
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'business_controller.g.dart';

@Riverpod(keepAlive: true)
class BusinessController extends _$BusinessController {
  Business? _cachedBusiness;

  @override
  AsyncValue<Business?> build() {
    dev.log('🏢 BusinessController - build() called');
    _loadBusiness();
    return const AsyncValue.loading();
  }

  Future<void> _loadBusiness() async {
    dev.log('🏢 BusinessController - _loadBusiness() started');
    final currentUser = ref.read(authRepositoryProvider).currentAppUser;

    if (currentUser == null) {
      state = const AsyncValue.data(null);
      return;
    }

    final result = await ref
        .read(businessRepositoryProvider)
        .getBusinesses(currentUser.id);

    state = await result.fold(
      (error) {
        dev.log('🏢 BusinessController - Error loading businesses: $error');
        return AsyncValue.error(error, StackTrace.current);
      },
      (businesses) {
        dev.log(
          '🏢 BusinessController - Businesses loaded: ${businesses.length}',
        );
        final business = businesses.isEmpty ? null : businesses.first;
        _cachedBusiness = business;
        return AsyncValue.data(business);
      },
    );
  }

  Future<void> getBusinesses() async {
    dev.log('🏢 BusinessController - getBusinesses() called');
    final currentUser = ref.read(authRepositoryProvider).currentAppUser;
    if (currentUser == null) {
      state = const AsyncValue.data(null);
      return;
    }

    state = AsyncValue.data(_cachedBusiness);

    final result = await ref
        .read(businessRepositoryProvider)
        .getBusinesses(currentUser.id);

    state = await result.fold(
      (error) {
        dev.log('🏢 BusinessController - Error loading businesses: $error');
        return AsyncValue.data(_cachedBusiness);
      },
      (businesses) {
        dev.log(
          '🏢 BusinessController - Businesses loaded: ${businesses.length}',
        );
        final business = businesses.isEmpty ? null : businesses.first;
        _cachedBusiness = business;
        return AsyncValue.data(business);
      },
    );
  }
}
