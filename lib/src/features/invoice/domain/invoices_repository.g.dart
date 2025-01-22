// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$invoicesRepositoryHash() =>
    r'17d7a2a15697b3a50d69d22a76f9b62871fa9a2c';

/// Provider for the invoices repository
///
/// Copied from [invoicesRepository].
@ProviderFor(invoicesRepository)
final invoicesRepositoryProvider = Provider<InvoicesRepository>.internal(
  invoicesRepository,
  name: r'invoicesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$invoicesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef InvoicesRepositoryRef = ProviderRef<InvoicesRepository>;
String _$getInvoicesStreamHash() => r'1630124300c1287da0006a0a3d62bed178629e47';

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

/// Provider for getting a stream of all invoices
///
/// Copied from [getInvoicesStream].
@ProviderFor(getInvoicesStream)
const getInvoicesStreamProvider = GetInvoicesStreamFamily();

/// Provider for getting a stream of all invoices
///
/// Copied from [getInvoicesStream].
class GetInvoicesStreamFamily
    extends Family<AsyncValue<Either<InvoiceException, List<Invoice>>>> {
  /// Provider for getting a stream of all invoices
  ///
  /// Copied from [getInvoicesStream].
  const GetInvoicesStreamFamily();

  /// Provider for getting a stream of all invoices
  ///
  /// Copied from [getInvoicesStream].
  GetInvoicesStreamProvider call(
    String userID,
  ) {
    return GetInvoicesStreamProvider(
      userID,
    );
  }

  @override
  GetInvoicesStreamProvider getProviderOverride(
    covariant GetInvoicesStreamProvider provider,
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
  String? get name => r'getInvoicesStreamProvider';
}

/// Provider for getting a stream of all invoices
///
/// Copied from [getInvoicesStream].
class GetInvoicesStreamProvider
    extends AutoDisposeStreamProvider<Either<InvoiceException, List<Invoice>>> {
  /// Provider for getting a stream of all invoices
  ///
  /// Copied from [getInvoicesStream].
  GetInvoicesStreamProvider(
    String userID,
  ) : this._internal(
          (ref) => getInvoicesStream(
            ref as GetInvoicesStreamRef,
            userID,
          ),
          from: getInvoicesStreamProvider,
          name: r'getInvoicesStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getInvoicesStreamHash,
          dependencies: GetInvoicesStreamFamily._dependencies,
          allTransitiveDependencies:
              GetInvoicesStreamFamily._allTransitiveDependencies,
          userID: userID,
        );

  GetInvoicesStreamProvider._internal(
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
    Stream<Either<InvoiceException, List<Invoice>>> Function(
            GetInvoicesStreamRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetInvoicesStreamProvider._internal(
        (ref) => create(ref as GetInvoicesStreamRef),
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
  AutoDisposeStreamProviderElement<Either<InvoiceException, List<Invoice>>>
      createElement() {
    return _GetInvoicesStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetInvoicesStreamProvider && other.userID == userID;
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
mixin GetInvoicesStreamRef
    on AutoDisposeStreamProviderRef<Either<InvoiceException, List<Invoice>>> {
  /// The parameter `userID` of this provider.
  String get userID;
}

class _GetInvoicesStreamProviderElement
    extends AutoDisposeStreamProviderElement<
        Either<InvoiceException, List<Invoice>>> with GetInvoicesStreamRef {
  _GetInvoicesStreamProviderElement(super.provider);

  @override
  String get userID => (origin as GetInvoicesStreamProvider).userID;
}

String _$getInvoicesByCustomerIDStreamHash() =>
    r'c11b8ece1b5f123c828bcb88a2679cf203661022';

/// Provider for getting a stream of invoices for a specific customer
///
/// Copied from [getInvoicesByCustomerIDStream].
@ProviderFor(getInvoicesByCustomerIDStream)
const getInvoicesByCustomerIDStreamProvider =
    GetInvoicesByCustomerIDStreamFamily();

/// Provider for getting a stream of invoices for a specific customer
///
/// Copied from [getInvoicesByCustomerIDStream].
class GetInvoicesByCustomerIDStreamFamily
    extends Family<AsyncValue<Either<InvoiceException, List<Invoice>>>> {
  /// Provider for getting a stream of invoices for a specific customer
  ///
  /// Copied from [getInvoicesByCustomerIDStream].
  const GetInvoicesByCustomerIDStreamFamily();

  /// Provider for getting a stream of invoices for a specific customer
  ///
  /// Copied from [getInvoicesByCustomerIDStream].
  GetInvoicesByCustomerIDStreamProvider call(
    String userID,
    String customerID,
  ) {
    return GetInvoicesByCustomerIDStreamProvider(
      userID,
      customerID,
    );
  }

  @override
  GetInvoicesByCustomerIDStreamProvider getProviderOverride(
    covariant GetInvoicesByCustomerIDStreamProvider provider,
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
  String? get name => r'getInvoicesByCustomerIDStreamProvider';
}

/// Provider for getting a stream of invoices for a specific customer
///
/// Copied from [getInvoicesByCustomerIDStream].
class GetInvoicesByCustomerIDStreamProvider
    extends AutoDisposeStreamProvider<Either<InvoiceException, List<Invoice>>> {
  /// Provider for getting a stream of invoices for a specific customer
  ///
  /// Copied from [getInvoicesByCustomerIDStream].
  GetInvoicesByCustomerIDStreamProvider(
    String userID,
    String customerID,
  ) : this._internal(
          (ref) => getInvoicesByCustomerIDStream(
            ref as GetInvoicesByCustomerIDStreamRef,
            userID,
            customerID,
          ),
          from: getInvoicesByCustomerIDStreamProvider,
          name: r'getInvoicesByCustomerIDStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getInvoicesByCustomerIDStreamHash,
          dependencies: GetInvoicesByCustomerIDStreamFamily._dependencies,
          allTransitiveDependencies:
              GetInvoicesByCustomerIDStreamFamily._allTransitiveDependencies,
          userID: userID,
          customerID: customerID,
        );

  GetInvoicesByCustomerIDStreamProvider._internal(
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
    Stream<Either<InvoiceException, List<Invoice>>> Function(
            GetInvoicesByCustomerIDStreamRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetInvoicesByCustomerIDStreamProvider._internal(
        (ref) => create(ref as GetInvoicesByCustomerIDStreamRef),
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
  AutoDisposeStreamProviderElement<Either<InvoiceException, List<Invoice>>>
      createElement() {
    return _GetInvoicesByCustomerIDStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetInvoicesByCustomerIDStreamProvider &&
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
mixin GetInvoicesByCustomerIDStreamRef
    on AutoDisposeStreamProviderRef<Either<InvoiceException, List<Invoice>>> {
  /// The parameter `userID` of this provider.
  String get userID;

  /// The parameter `customerID` of this provider.
  String get customerID;
}

class _GetInvoicesByCustomerIDStreamProviderElement
    extends AutoDisposeStreamProviderElement<
        Either<InvoiceException, List<Invoice>>>
    with GetInvoicesByCustomerIDStreamRef {
  _GetInvoicesByCustomerIDStreamProviderElement(super.provider);

  @override
  String get userID => (origin as GetInvoicesByCustomerIDStreamProvider).userID;
  @override
  String get customerID =>
      (origin as GetInvoicesByCustomerIDStreamProvider).customerID;
}

String _$watchInvoiceByIDHash() => r'4080d740f4d0f30e0e91751c4aa88f60e30d5b73';

/// Provider for getting a stream of a specific invoice
///
/// Copied from [watchInvoiceByID].
@ProviderFor(watchInvoiceByID)
const watchInvoiceByIDProvider = WatchInvoiceByIDFamily();

/// Provider for getting a stream of a specific invoice
///
/// Copied from [watchInvoiceByID].
class WatchInvoiceByIDFamily
    extends Family<AsyncValue<Either<InvoiceException, Invoice?>>> {
  /// Provider for getting a stream of a specific invoice
  ///
  /// Copied from [watchInvoiceByID].
  const WatchInvoiceByIDFamily();

  /// Provider for getting a stream of a specific invoice
  ///
  /// Copied from [watchInvoiceByID].
  WatchInvoiceByIDProvider call(
    String userID,
    String invoiceID,
  ) {
    return WatchInvoiceByIDProvider(
      userID,
      invoiceID,
    );
  }

  @override
  WatchInvoiceByIDProvider getProviderOverride(
    covariant WatchInvoiceByIDProvider provider,
  ) {
    return call(
      provider.userID,
      provider.invoiceID,
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
  String? get name => r'watchInvoiceByIDProvider';
}

/// Provider for getting a stream of a specific invoice
///
/// Copied from [watchInvoiceByID].
class WatchInvoiceByIDProvider
    extends AutoDisposeStreamProvider<Either<InvoiceException, Invoice?>> {
  /// Provider for getting a stream of a specific invoice
  ///
  /// Copied from [watchInvoiceByID].
  WatchInvoiceByIDProvider(
    String userID,
    String invoiceID,
  ) : this._internal(
          (ref) => watchInvoiceByID(
            ref as WatchInvoiceByIDRef,
            userID,
            invoiceID,
          ),
          from: watchInvoiceByIDProvider,
          name: r'watchInvoiceByIDProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchInvoiceByIDHash,
          dependencies: WatchInvoiceByIDFamily._dependencies,
          allTransitiveDependencies:
              WatchInvoiceByIDFamily._allTransitiveDependencies,
          userID: userID,
          invoiceID: invoiceID,
        );

  WatchInvoiceByIDProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userID,
    required this.invoiceID,
  }) : super.internal();

  final String userID;
  final String invoiceID;

  @override
  Override overrideWith(
    Stream<Either<InvoiceException, Invoice?>> Function(
            WatchInvoiceByIDRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchInvoiceByIDProvider._internal(
        (ref) => create(ref as WatchInvoiceByIDRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userID: userID,
        invoiceID: invoiceID,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Either<InvoiceException, Invoice?>>
      createElement() {
    return _WatchInvoiceByIDProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchInvoiceByIDProvider &&
        other.userID == userID &&
        other.invoiceID == invoiceID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userID.hashCode);
    hash = _SystemHash.combine(hash, invoiceID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WatchInvoiceByIDRef
    on AutoDisposeStreamProviderRef<Either<InvoiceException, Invoice?>> {
  /// The parameter `userID` of this provider.
  String get userID;

  /// The parameter `invoiceID` of this provider.
  String get invoiceID;
}

class _WatchInvoiceByIDProviderElement
    extends AutoDisposeStreamProviderElement<Either<InvoiceException, Invoice?>>
    with WatchInvoiceByIDRef {
  _WatchInvoiceByIDProviderElement(super.provider);

  @override
  String get userID => (origin as WatchInvoiceByIDProvider).userID;
  @override
  String get invoiceID => (origin as WatchInvoiceByIDProvider).invoiceID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
