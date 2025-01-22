// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customerValidatorHash() => r'b595d867662679c33224515271aaeb7a3624b87c';

/// Provider for the customer validator
///
/// Copied from [customerValidator].
@ProviderFor(customerValidator)
final customerValidatorProvider =
    AutoDisposeProvider<CustomerValidator>.internal(
  customerValidator,
  name: r'customerValidatorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customerValidatorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CustomerValidatorRef = AutoDisposeProviderRef<CustomerValidator>;
String _$customersRepositoryHash() =>
    r'2dbe446d7833f6d2458a8caa9616caffcd49b08f';

/// Provider for the customers repository
///
/// Copied from [customersRepository].
@ProviderFor(customersRepository)
final customersRepositoryProvider = Provider<CustomersRepository>.internal(
  customersRepository,
  name: r'customersRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customersRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CustomersRepositoryRef = ProviderRef<CustomersRepository>;
String _$getCustomersStreamHash() =>
    r'9909201ab8b0a2fb334f772e59888106b35cf18f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// Provider for getting a stream of all customers
///
/// Copied from [getCustomersStream].
@ProviderFor(getCustomersStream)
const getCustomersStreamProvider = GetCustomersStreamFamily();

/// Provider for getting a stream of all customers
///
/// Copied from [getCustomersStream].
class GetCustomersStreamFamily
    extends Family<AsyncValue<Either<CustomerException, List<Customer>>>> {
  /// Provider for getting a stream of all customers
  ///
  /// Copied from [getCustomersStream].
  const GetCustomersStreamFamily();

  /// Provider for getting a stream of all customers
  ///
  /// Copied from [getCustomersStream].
  GetCustomersStreamProvider call(
    String userID,
  ) {
    return GetCustomersStreamProvider(
      userID,
    );
  }

  @override
  GetCustomersStreamProvider getProviderOverride(
    covariant GetCustomersStreamProvider provider,
  ) {
    return call(
      provider.userID,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCustomersStreamProvider';
}

/// Provider for getting a stream of all customers
///
/// Copied from [getCustomersStream].
class GetCustomersStreamProvider extends AutoDisposeStreamProvider<
    Either<CustomerException, List<Customer>>> {
  /// Provider for getting a stream of all customers
  ///
  /// Copied from [getCustomersStream].
  GetCustomersStreamProvider(
    String userID,
  ) : this._internal(
          (ref) => getCustomersStream(
            ref as GetCustomersStreamRef,
            userID,
          ),
          from: getCustomersStreamProvider,
          name: r'getCustomersStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCustomersStreamHash,
          dependencies: GetCustomersStreamFamily._dependencies,
          allTransitiveDependencies:
              GetCustomersStreamFamily._allTransitiveDependencies,
          userID: userID,
        );

  GetCustomersStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userID,
  }) : super.internal();

  final String userID;

  @override
  Override overrideWith(
    Stream<Either<CustomerException, List<Customer>>> Function(
            GetCustomersStreamRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCustomersStreamProvider._internal(
        (ref) => create(ref as GetCustomersStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userID: userID,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Either<CustomerException, List<Customer>>>
      createElement() {
    return _GetCustomersStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCustomersStreamProvider && other.userID == userID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetCustomersStreamRef
    on AutoDisposeStreamProviderRef<Either<CustomerException, List<Customer>>> {
  /// The parameter `userID` of this provider.
  String get userID;
}

class _GetCustomersStreamProviderElement
    extends AutoDisposeStreamProviderElement<
        Either<CustomerException, List<Customer>>> with GetCustomersStreamRef {
  _GetCustomersStreamProviderElement(super.provider);

  @override
  String get userID => (origin as GetCustomersStreamProvider).userID;
}

String _$watchCustomerByIDHash() => r'd1ffac1bd3bbb7ab5b7b4a47089b0f728cf6c32b';

/// Provider for getting a stream of a specific customer
///
/// Copied from [watchCustomerByID].
@ProviderFor(watchCustomerByID)
const watchCustomerByIDProvider = WatchCustomerByIDFamily();

/// Provider for getting a stream of a specific customer
///
/// Copied from [watchCustomerByID].
class WatchCustomerByIDFamily
    extends Family<AsyncValue<Either<CustomerException, Customer?>>> {
  /// Provider for getting a stream of a specific customer
  ///
  /// Copied from [watchCustomerByID].
  const WatchCustomerByIDFamily();

  /// Provider for getting a stream of a specific customer
  ///
  /// Copied from [watchCustomerByID].
  WatchCustomerByIDProvider call(
    String userID,
    String customerID,
  ) {
    return WatchCustomerByIDProvider(
      userID,
      customerID,
    );
  }

  @override
  WatchCustomerByIDProvider getProviderOverride(
    covariant WatchCustomerByIDProvider provider,
  ) {
    return call(
      provider.userID,
      provider.customerID,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'watchCustomerByIDProvider';
}

/// Provider for getting a stream of a specific customer
///
/// Copied from [watchCustomerByID].
class WatchCustomerByIDProvider
    extends AutoDisposeStreamProvider<Either<CustomerException, Customer?>> {
  /// Provider for getting a stream of a specific customer
  ///
  /// Copied from [watchCustomerByID].
  WatchCustomerByIDProvider(
    String userID,
    String customerID,
  ) : this._internal(
          (ref) => watchCustomerByID(
            ref as WatchCustomerByIDRef,
            userID,
            customerID,
          ),
          from: watchCustomerByIDProvider,
          name: r'watchCustomerByIDProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchCustomerByIDHash,
          dependencies: WatchCustomerByIDFamily._dependencies,
          allTransitiveDependencies:
              WatchCustomerByIDFamily._allTransitiveDependencies,
          userID: userID,
          customerID: customerID,
        );

  WatchCustomerByIDProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userID,
    required this.customerID,
  }) : super.internal();

  final String userID;
  final String customerID;

  @override
  Override overrideWith(
    Stream<Either<CustomerException, Customer?>> Function(
            WatchCustomerByIDRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchCustomerByIDProvider._internal(
        (ref) => create(ref as WatchCustomerByIDRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userID: userID,
        customerID: customerID,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Either<CustomerException, Customer?>>
      createElement() {
    return _WatchCustomerByIDProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchCustomerByIDProvider &&
        other.userID == userID &&
        other.customerID == customerID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userID.hashCode);
    hash = _SystemHash.combine(hash, customerID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WatchCustomerByIDRef
    on AutoDisposeStreamProviderRef<Either<CustomerException, Customer?>> {
  /// The parameter `userID` of this provider.
  String get userID;

  /// The parameter `customerID` of this provider.
  String get customerID;
}

class _WatchCustomerByIDProviderElement
    extends AutoDisposeStreamProviderElement<
        Either<CustomerException, Customer?>> with WatchCustomerByIDRef {
  _WatchCustomerByIDProviderElement(super.provider);

  @override
  String get userID => (origin as WatchCustomerByIDProvider).userID;
  @override
  String get customerID => (origin as WatchCustomerByIDProvider).customerID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
