// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$serviceFirestoreServiceHash() =>
    r'ad370f059491fa9814a46f9a2bb471dffc5d7a21';

/// Provider for the Firestore service
///
/// Copied from [serviceFirestoreService].
@ProviderFor(serviceFirestoreService)
final serviceFirestoreServiceProvider =
    AutoDisposeProvider<ServiceFirestoreService>.internal(
  serviceFirestoreService,
  name: r'serviceFirestoreServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$serviceFirestoreServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ServiceFirestoreServiceRef
    = AutoDisposeProviderRef<ServiceFirestoreService>;
String _$firebaseFirestoreHash() => r'963402713bf9b7cc1fb259d619d9b0184d4dcec1';

/// Provider for Firebase Firestore instance
///
/// Copied from [firebaseFirestore].
@ProviderFor(firebaseFirestore)
final firebaseFirestoreProvider =
    AutoDisposeProvider<FirebaseFirestore>.internal(
  firebaseFirestore,
  name: r'firebaseFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirebaseFirestoreRef = AutoDisposeProviderRef<FirebaseFirestore>;
String _$servicesRepositoryHash() =>
    r'04d39e555925dcc93d73d73117e199d2561b55b3';

/// {@template services_repository_provider}
/// Provider for the services repository
/// {@endtemplate}
///
/// Copied from [servicesRepository].
@ProviderFor(servicesRepository)
final servicesRepositoryProvider =
    AutoDisposeProvider<ServicesRepository>.internal(
  servicesRepository,
  name: r'servicesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$servicesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ServicesRepositoryRef = AutoDisposeProviderRef<ServicesRepository>;
String _$getServicesStreamHash() => r'484111943116b225a1575973515ba3d6080d12df';

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

/// Provider to get the stream of services
///
/// Copied from [getServicesStream].
@ProviderFor(getServicesStream)
const getServicesStreamProvider = GetServicesStreamFamily();

/// Provider to get the stream of services
///
/// Copied from [getServicesStream].
class GetServicesStreamFamily
    extends Family<AsyncValue<Either<ServiceException, List<ServiceModel>>>> {
  /// Provider to get the stream of services
  ///
  /// Copied from [getServicesStream].
  const GetServicesStreamFamily();

  /// Provider to get the stream of services
  ///
  /// Copied from [getServicesStream].
  GetServicesStreamProvider call(
    String userID,
  ) {
    return GetServicesStreamProvider(
      userID,
    );
  }

  @override
  GetServicesStreamProvider getProviderOverride(
    covariant GetServicesStreamProvider provider,
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
  String? get name => r'getServicesStreamProvider';
}

/// Provider to get the stream of services
///
/// Copied from [getServicesStream].
class GetServicesStreamProvider extends AutoDisposeStreamProvider<
    Either<ServiceException, List<ServiceModel>>> {
  /// Provider to get the stream of services
  ///
  /// Copied from [getServicesStream].
  GetServicesStreamProvider(
    String userID,
  ) : this._internal(
          (ref) => getServicesStream(
            ref as GetServicesStreamRef,
            userID,
          ),
          from: getServicesStreamProvider,
          name: r'getServicesStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getServicesStreamHash,
          dependencies: GetServicesStreamFamily._dependencies,
          allTransitiveDependencies:
              GetServicesStreamFamily._allTransitiveDependencies,
          userID: userID,
        );

  GetServicesStreamProvider._internal(
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
    Stream<Either<ServiceException, List<ServiceModel>>> Function(
            GetServicesStreamRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetServicesStreamProvider._internal(
        (ref) => create(ref as GetServicesStreamRef),
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
  AutoDisposeStreamProviderElement<Either<ServiceException, List<ServiceModel>>>
      createElement() {
    return _GetServicesStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetServicesStreamProvider && other.userID == userID;
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
mixin GetServicesStreamRef on AutoDisposeStreamProviderRef<
    Either<ServiceException, List<ServiceModel>>> {
  /// The parameter `userID` of this provider.
  String get userID;
}

class _GetServicesStreamProviderElement
    extends AutoDisposeStreamProviderElement<
        Either<ServiceException, List<ServiceModel>>>
    with GetServicesStreamRef {
  _GetServicesStreamProviderElement(super.provider);

  @override
  String get userID => (origin as GetServicesStreamProvider).userID;
}

String _$getServiceByIDHash() => r'6ef3ec88298befecc18e63bb0b81a46d01ab9fa7';

/// Provider to get a service by ID
///
/// Copied from [getServiceByID].
@ProviderFor(getServiceByID)
const getServiceByIDProvider = GetServiceByIDFamily();

/// Provider to get a service by ID
///
/// Copied from [getServiceByID].
class GetServiceByIDFamily
    extends Family<AsyncValue<Either<ServiceException, ServiceModel?>>> {
  /// Provider to get a service by ID
  ///
  /// Copied from [getServiceByID].
  const GetServiceByIDFamily();

  /// Provider to get a service by ID
  ///
  /// Copied from [getServiceByID].
  GetServiceByIDProvider call(
    String userID,
    String id,
  ) {
    return GetServiceByIDProvider(
      userID,
      id,
    );
  }

  @override
  GetServiceByIDProvider getProviderOverride(
    covariant GetServiceByIDProvider provider,
  ) {
    return call(
      provider.userID,
      provider.id,
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
  String? get name => r'getServiceByIDProvider';
}

/// Provider to get a service by ID
///
/// Copied from [getServiceByID].
class GetServiceByIDProvider
    extends AutoDisposeStreamProvider<Either<ServiceException, ServiceModel?>> {
  /// Provider to get a service by ID
  ///
  /// Copied from [getServiceByID].
  GetServiceByIDProvider(
    String userID,
    String id,
  ) : this._internal(
          (ref) => getServiceByID(
            ref as GetServiceByIDRef,
            userID,
            id,
          ),
          from: getServiceByIDProvider,
          name: r'getServiceByIDProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getServiceByIDHash,
          dependencies: GetServiceByIDFamily._dependencies,
          allTransitiveDependencies:
              GetServiceByIDFamily._allTransitiveDependencies,
          userID: userID,
          id: id,
        );

  GetServiceByIDProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userID,
    required this.id,
  }) : super.internal();

  final String userID;
  final String id;

  @override
  Override overrideWith(
    Stream<Either<ServiceException, ServiceModel?>> Function(
            GetServiceByIDRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetServiceByIDProvider._internal(
        (ref) => create(ref as GetServiceByIDRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userID: userID,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Either<ServiceException, ServiceModel?>>
      createElement() {
    return _GetServiceByIDProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetServiceByIDProvider &&
        other.userID == userID &&
        other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userID.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetServiceByIDRef
    on AutoDisposeStreamProviderRef<Either<ServiceException, ServiceModel?>> {
  /// The parameter `userID` of this provider.
  String get userID;

  /// The parameter `id` of this provider.
  String get id;
}

class _GetServiceByIDProviderElement extends AutoDisposeStreamProviderElement<
    Either<ServiceException, ServiceModel?>> with GetServiceByIDRef {
  _GetServiceByIDProviderElement(super.provider);

  @override
  String get userID => (origin as GetServiceByIDProvider).userID;
  @override
  String get id => (origin as GetServiceByIDProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
