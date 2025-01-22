// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$invoiceItemByIndexHash() =>
    r'fe643f93a984570dd01fa0274493da1223b23406';

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

/// See also [invoiceItemByIndex].
@ProviderFor(invoiceItemByIndex)
const invoiceItemByIndexProvider = InvoiceItemByIndexFamily();

/// See also [invoiceItemByIndex].
class InvoiceItemByIndexFamily extends Family<InvoiceItem?> {
  /// See also [invoiceItemByIndex].
  const InvoiceItemByIndexFamily();

  /// See also [invoiceItemByIndex].
  InvoiceItemByIndexProvider call(
    String itemId,
  ) {
    return InvoiceItemByIndexProvider(
      itemId,
    );
  }

  @override
  InvoiceItemByIndexProvider getProviderOverride(
    covariant InvoiceItemByIndexProvider provider,
  ) {
    return call(
      provider.itemId,
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
  String? get name => r'invoiceItemByIndexProvider';
}

/// See also [invoiceItemByIndex].
class InvoiceItemByIndexProvider extends AutoDisposeProvider<InvoiceItem?> {
  /// See also [invoiceItemByIndex].
  InvoiceItemByIndexProvider(
    String itemId,
  ) : this._internal(
          (ref) => invoiceItemByIndex(
            ref as InvoiceItemByIndexRef,
            itemId,
          ),
          from: invoiceItemByIndexProvider,
          name: r'invoiceItemByIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$invoiceItemByIndexHash,
          dependencies: InvoiceItemByIndexFamily._dependencies,
          allTransitiveDependencies:
              InvoiceItemByIndexFamily._allTransitiveDependencies,
          itemId: itemId,
        );

  InvoiceItemByIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.itemId,
  }) : super.internal();

  final String itemId;

  @override
  Override overrideWith(
    InvoiceItem? Function(InvoiceItemByIndexRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InvoiceItemByIndexProvider._internal(
        (ref) => create(ref as InvoiceItemByIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        itemId: itemId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<InvoiceItem?> createElement() {
    return _InvoiceItemByIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InvoiceItemByIndexProvider && other.itemId == itemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, itemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InvoiceItemByIndexRef on AutoDisposeProviderRef<InvoiceItem?> {
  /// The parameter `itemId` of this provider.
  String get itemId;
}

class _InvoiceItemByIndexProviderElement
    extends AutoDisposeProviderElement<InvoiceItem?>
    with InvoiceItemByIndexRef {
  _InvoiceItemByIndexProviderElement(super.provider);

  @override
  String get itemId => (origin as InvoiceItemByIndexProvider).itemId;
}

String _$getNextInvoiceNumberHash() =>
    r'78c4a4da2763280fc74e54f287767f75bf8a4f03';

/// Provider para obtener el siguiente número de factura
///
/// Copied from [getNextInvoiceNumber].
@ProviderFor(getNextInvoiceNumber)
const getNextInvoiceNumberProvider = GetNextInvoiceNumberFamily();

/// Provider para obtener el siguiente número de factura
///
/// Copied from [getNextInvoiceNumber].
class GetNextInvoiceNumberFamily extends Family<AsyncValue<int>> {
  /// Provider para obtener el siguiente número de factura
  ///
  /// Copied from [getNextInvoiceNumber].
  const GetNextInvoiceNumberFamily();

  /// Provider para obtener el siguiente número de factura
  ///
  /// Copied from [getNextInvoiceNumber].
  GetNextInvoiceNumberProvider call(
    String userID,
  ) {
    return GetNextInvoiceNumberProvider(
      userID,
    );
  }

  @override
  GetNextInvoiceNumberProvider getProviderOverride(
    covariant GetNextInvoiceNumberProvider provider,
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
  String? get name => r'getNextInvoiceNumberProvider';
}

/// Provider para obtener el siguiente número de factura
///
/// Copied from [getNextInvoiceNumber].
class GetNextInvoiceNumberProvider extends AutoDisposeFutureProvider<int> {
  /// Provider para obtener el siguiente número de factura
  ///
  /// Copied from [getNextInvoiceNumber].
  GetNextInvoiceNumberProvider(
    String userID,
  ) : this._internal(
          (ref) => getNextInvoiceNumber(
            ref as GetNextInvoiceNumberRef,
            userID,
          ),
          from: getNextInvoiceNumberProvider,
          name: r'getNextInvoiceNumberProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNextInvoiceNumberHash,
          dependencies: GetNextInvoiceNumberFamily._dependencies,
          allTransitiveDependencies:
              GetNextInvoiceNumberFamily._allTransitiveDependencies,
          userID: userID,
        );

  GetNextInvoiceNumberProvider._internal(
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
    FutureOr<int> Function(GetNextInvoiceNumberRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNextInvoiceNumberProvider._internal(
        (ref) => create(ref as GetNextInvoiceNumberRef),
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
  AutoDisposeFutureProviderElement<int> createElement() {
    return _GetNextInvoiceNumberProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNextInvoiceNumberProvider && other.userID == userID;
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
mixin GetNextInvoiceNumberRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `userID` of this provider.
  String get userID;
}

class _GetNextInvoiceNumberProviderElement
    extends AutoDisposeFutureProviderElement<int> with GetNextInvoiceNumberRef {
  _GetNextInvoiceNumberProviderElement(super.provider);

  @override
  String get userID => (origin as GetNextInvoiceNumberProvider).userID;
}

String _$invoiceFormControllerHash() =>
    r'25297ec6d200d745b7c9a8f396fd88a0b16b2b02';

/// See also [InvoiceFormController].
@ProviderFor(InvoiceFormController)
final invoiceFormControllerProvider = AutoDisposeNotifierProvider<
    InvoiceFormController, InvoiceFormState>.internal(
  InvoiceFormController.new,
  name: r'invoiceFormControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$invoiceFormControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InvoiceFormController = AutoDisposeNotifier<InvoiceFormState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
