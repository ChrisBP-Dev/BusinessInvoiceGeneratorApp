// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_number_generator.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$invoiceNumberGeneratorHash() =>
    r'47bc7340106aca778f28ae8fea8ec4f3247514d3';

/// Provider que proporciona una instancia de [InvoiceNumberGenerator].
///
/// Copied from [invoiceNumberGenerator].
@ProviderFor(invoiceNumberGenerator)
final invoiceNumberGeneratorProvider =
    AutoDisposeProvider<InvoiceNumberGenerator>.internal(
  invoiceNumberGenerator,
  name: r'invoiceNumberGeneratorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$invoiceNumberGeneratorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef InvoiceNumberGeneratorRef
    = AutoDisposeProviderRef<InvoiceNumberGenerator>;
String _$nextInvoiceNumberHash() => r'7fe8bf6652061b5481b569bf062223ed5c41b3c6';

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

/// Provider que facilita la obtención del siguiente número de factura.
///
/// Uso:
/// ```dart
/// final nextNumberEither = await ref.read(nextInvoiceNumberProvider(userID).future);
/// ```
///
/// Copied from [nextInvoiceNumber].
@ProviderFor(nextInvoiceNumber)
const nextInvoiceNumberProvider = NextInvoiceNumberFamily();

/// Provider que facilita la obtención del siguiente número de factura.
///
/// Uso:
/// ```dart
/// final nextNumberEither = await ref.read(nextInvoiceNumberProvider(userID).future);
/// ```
///
/// Copied from [nextInvoiceNumber].
class NextInvoiceNumberFamily
    extends Family<AsyncValue<Either<InvoiceException, int>>> {
  /// Provider que facilita la obtención del siguiente número de factura.
  ///
  /// Uso:
  /// ```dart
  /// final nextNumberEither = await ref.read(nextInvoiceNumberProvider(userID).future);
  /// ```
  ///
  /// Copied from [nextInvoiceNumber].
  const NextInvoiceNumberFamily();

  /// Provider que facilita la obtención del siguiente número de factura.
  ///
  /// Uso:
  /// ```dart
  /// final nextNumberEither = await ref.read(nextInvoiceNumberProvider(userID).future);
  /// ```
  ///
  /// Copied from [nextInvoiceNumber].
  NextInvoiceNumberProvider call(
    String userID,
  ) {
    return NextInvoiceNumberProvider(
      userID,
    );
  }

  @override
  NextInvoiceNumberProvider getProviderOverride(
    covariant NextInvoiceNumberProvider provider,
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
  String? get name => r'nextInvoiceNumberProvider';
}

/// Provider que facilita la obtención del siguiente número de factura.
///
/// Uso:
/// ```dart
/// final nextNumberEither = await ref.read(nextInvoiceNumberProvider(userID).future);
/// ```
///
/// Copied from [nextInvoiceNumber].
class NextInvoiceNumberProvider
    extends AutoDisposeFutureProvider<Either<InvoiceException, int>> {
  /// Provider que facilita la obtención del siguiente número de factura.
  ///
  /// Uso:
  /// ```dart
  /// final nextNumberEither = await ref.read(nextInvoiceNumberProvider(userID).future);
  /// ```
  ///
  /// Copied from [nextInvoiceNumber].
  NextInvoiceNumberProvider(
    String userID,
  ) : this._internal(
          (ref) => nextInvoiceNumber(
            ref as NextInvoiceNumberRef,
            userID,
          ),
          from: nextInvoiceNumberProvider,
          name: r'nextInvoiceNumberProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$nextInvoiceNumberHash,
          dependencies: NextInvoiceNumberFamily._dependencies,
          allTransitiveDependencies:
              NextInvoiceNumberFamily._allTransitiveDependencies,
          userID: userID,
        );

  NextInvoiceNumberProvider._internal(
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
    FutureOr<Either<InvoiceException, int>> Function(
            NextInvoiceNumberRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NextInvoiceNumberProvider._internal(
        (ref) => create(ref as NextInvoiceNumberRef),
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
  AutoDisposeFutureProviderElement<Either<InvoiceException, int>>
      createElement() {
    return _NextInvoiceNumberProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NextInvoiceNumberProvider && other.userID == userID;
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
mixin NextInvoiceNumberRef
    on AutoDisposeFutureProviderRef<Either<InvoiceException, int>> {
  /// The parameter `userID` of this provider.
  String get userID;
}

class _NextInvoiceNumberProviderElement
    extends AutoDisposeFutureProviderElement<Either<InvoiceException, int>>
    with NextInvoiceNumberRef {
  _NextInvoiceNumberProviderElement(super.provider);

  @override
  String get userID => (origin as NextInvoiceNumberProvider).userID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
