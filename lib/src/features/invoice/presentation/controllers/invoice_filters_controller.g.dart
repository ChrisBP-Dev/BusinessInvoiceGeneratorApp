// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_filters_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredInvoicesHash() => r'54d3768220411b217fda477c4d1fc4313ad82e4b';

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

/// See also [filteredInvoices].
@ProviderFor(filteredInvoices)
const filteredInvoicesProvider = FilteredInvoicesFamily();

/// See also [filteredInvoices].
class FilteredInvoicesFamily extends Family<AsyncValue<List<Invoice>>> {
  /// See also [filteredInvoices].
  const FilteredInvoicesFamily();

  /// See also [filteredInvoices].
  FilteredInvoicesProvider call(
    String businessId,
  ) {
    return FilteredInvoicesProvider(
      businessId,
    );
  }

  @override
  FilteredInvoicesProvider getProviderOverride(
    covariant FilteredInvoicesProvider provider,
  ) {
    return call(
      provider.businessId,
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
  String? get name => r'filteredInvoicesProvider';
}

/// See also [filteredInvoices].
class FilteredInvoicesProvider
    extends AutoDisposeStreamProvider<List<Invoice>> {
  /// See also [filteredInvoices].
  FilteredInvoicesProvider(
    String businessId,
  ) : this._internal(
          (ref) => filteredInvoices(
            ref as FilteredInvoicesRef,
            businessId,
          ),
          from: filteredInvoicesProvider,
          name: r'filteredInvoicesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filteredInvoicesHash,
          dependencies: FilteredInvoicesFamily._dependencies,
          allTransitiveDependencies:
              FilteredInvoicesFamily._allTransitiveDependencies,
          businessId: businessId,
        );

  FilteredInvoicesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.businessId,
  }) : super.internal();

  final String businessId;

  @override
  Override overrideWith(
    Stream<List<Invoice>> Function(FilteredInvoicesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FilteredInvoicesProvider._internal(
        (ref) => create(ref as FilteredInvoicesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        businessId: businessId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<Invoice>> createElement() {
    return _FilteredInvoicesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredInvoicesProvider && other.businessId == businessId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, businessId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FilteredInvoicesRef on AutoDisposeStreamProviderRef<List<Invoice>> {
  /// The parameter `businessId` of this provider.
  String get businessId;
}

class _FilteredInvoicesProviderElement
    extends AutoDisposeStreamProviderElement<List<Invoice>>
    with FilteredInvoicesRef {
  _FilteredInvoicesProviderElement(super.provider);

  @override
  String get businessId => (origin as FilteredInvoicesProvider).businessId;
}

String _$filteredCustomerInvoicesHash() =>
    r'bd774174c50f4152592679a701ab283dba2f8982';

/// See also [filteredCustomerInvoices].
@ProviderFor(filteredCustomerInvoices)
const filteredCustomerInvoicesProvider = FilteredCustomerInvoicesFamily();

/// See also [filteredCustomerInvoices].
class FilteredCustomerInvoicesFamily extends Family<AsyncValue<List<Invoice>>> {
  /// See also [filteredCustomerInvoices].
  const FilteredCustomerInvoicesFamily();

  /// See also [filteredCustomerInvoices].
  FilteredCustomerInvoicesProvider call(
    String businessId,
    String customerId,
  ) {
    return FilteredCustomerInvoicesProvider(
      businessId,
      customerId,
    );
  }

  @override
  FilteredCustomerInvoicesProvider getProviderOverride(
    covariant FilteredCustomerInvoicesProvider provider,
  ) {
    return call(
      provider.businessId,
      provider.customerId,
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
  String? get name => r'filteredCustomerInvoicesProvider';
}

/// See also [filteredCustomerInvoices].
class FilteredCustomerInvoicesProvider
    extends AutoDisposeStreamProvider<List<Invoice>> {
  /// See also [filteredCustomerInvoices].
  FilteredCustomerInvoicesProvider(
    String businessId,
    String customerId,
  ) : this._internal(
          (ref) => filteredCustomerInvoices(
            ref as FilteredCustomerInvoicesRef,
            businessId,
            customerId,
          ),
          from: filteredCustomerInvoicesProvider,
          name: r'filteredCustomerInvoicesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filteredCustomerInvoicesHash,
          dependencies: FilteredCustomerInvoicesFamily._dependencies,
          allTransitiveDependencies:
              FilteredCustomerInvoicesFamily._allTransitiveDependencies,
          businessId: businessId,
          customerId: customerId,
        );

  FilteredCustomerInvoicesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.businessId,
    required this.customerId,
  }) : super.internal();

  final String businessId;
  final String customerId;

  @override
  Override overrideWith(
    Stream<List<Invoice>> Function(FilteredCustomerInvoicesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FilteredCustomerInvoicesProvider._internal(
        (ref) => create(ref as FilteredCustomerInvoicesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        businessId: businessId,
        customerId: customerId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<Invoice>> createElement() {
    return _FilteredCustomerInvoicesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredCustomerInvoicesProvider &&
        other.businessId == businessId &&
        other.customerId == customerId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, businessId.hashCode);
    hash = _SystemHash.combine(hash, customerId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FilteredCustomerInvoicesRef
    on AutoDisposeStreamProviderRef<List<Invoice>> {
  /// The parameter `businessId` of this provider.
  String get businessId;

  /// The parameter `customerId` of this provider.
  String get customerId;
}

class _FilteredCustomerInvoicesProviderElement
    extends AutoDisposeStreamProviderElement<List<Invoice>>
    with FilteredCustomerInvoicesRef {
  _FilteredCustomerInvoicesProviderElement(super.provider);

  @override
  String get businessId =>
      (origin as FilteredCustomerInvoicesProvider).businessId;
  @override
  String get customerId =>
      (origin as FilteredCustomerInvoicesProvider).customerId;
}

String _$invoiceFiltersControllerHash() =>
    r'280dc7077c957a2db37c115d456c37acd21b392e';

/// See also [InvoiceFiltersController].
@ProviderFor(InvoiceFiltersController)
final invoiceFiltersControllerProvider = AutoDisposeNotifierProvider<
    InvoiceFiltersController, InvoiceFilters>.internal(
  InvoiceFiltersController.new,
  name: r'invoiceFiltersControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$invoiceFiltersControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InvoiceFiltersController = AutoDisposeNotifier<InvoiceFilters>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
