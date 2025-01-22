// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pdfRepositoryHash() => r'06d6fd68942fcc434858d171122f4a08208361f2';

/// See also [pdfRepository].
@ProviderFor(pdfRepository)
final pdfRepositoryProvider = AutoDisposeProvider<PdfRepository>.internal(
  pdfRepository,
  name: r'pdfRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pdfRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PdfRepositoryRef = AutoDisposeProviderRef<PdfRepository>;
String _$generateInvoicePdfHash() =>
    r'd1a656b86e04c906cebe99994c8779aa1622d219';

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

/// See also [generateInvoicePdf].
@ProviderFor(generateInvoicePdf)
const generateInvoicePdfProvider = GenerateInvoicePdfFamily();

/// See also [generateInvoicePdf].
class GenerateInvoicePdfFamily extends Family<AsyncValue<Uint8List>> {
  /// See also [generateInvoicePdf].
  const GenerateInvoicePdfFamily();

  /// See also [generateInvoicePdf].
  GenerateInvoicePdfProvider call(
    Invoice invoice,
    Business business,
  ) {
    return GenerateInvoicePdfProvider(
      invoice,
      business,
    );
  }

  @override
  GenerateInvoicePdfProvider getProviderOverride(
    covariant GenerateInvoicePdfProvider provider,
  ) {
    return call(
      provider.invoice,
      provider.business,
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
  String? get name => r'generateInvoicePdfProvider';
}

/// See also [generateInvoicePdf].
class GenerateInvoicePdfProvider extends AutoDisposeFutureProvider<Uint8List> {
  /// See also [generateInvoicePdf].
  GenerateInvoicePdfProvider(
    Invoice invoice,
    Business business,
  ) : this._internal(
          (ref) => generateInvoicePdf(
            ref as GenerateInvoicePdfRef,
            invoice,
            business,
          ),
          from: generateInvoicePdfProvider,
          name: r'generateInvoicePdfProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$generateInvoicePdfHash,
          dependencies: GenerateInvoicePdfFamily._dependencies,
          allTransitiveDependencies:
              GenerateInvoicePdfFamily._allTransitiveDependencies,
          invoice: invoice,
          business: business,
        );

  GenerateInvoicePdfProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.invoice,
    required this.business,
  }) : super.internal();

  final Invoice invoice;
  final Business business;

  @override
  Override overrideWith(
    FutureOr<Uint8List> Function(GenerateInvoicePdfRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateInvoicePdfProvider._internal(
        (ref) => create(ref as GenerateInvoicePdfRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        invoice: invoice,
        business: business,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Uint8List> createElement() {
    return _GenerateInvoicePdfProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateInvoicePdfProvider &&
        other.invoice == invoice &&
        other.business == business;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, invoice.hashCode);
    hash = _SystemHash.combine(hash, business.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GenerateInvoicePdfRef on AutoDisposeFutureProviderRef<Uint8List> {
  /// The parameter `invoice` of this provider.
  Invoice get invoice;

  /// The parameter `business` of this provider.
  Business get business;
}

class _GenerateInvoicePdfProviderElement
    extends AutoDisposeFutureProviderElement<Uint8List>
    with GenerateInvoicePdfRef {
  _GenerateInvoicePdfProviderElement(super.provider);

  @override
  Invoice get invoice => (origin as GenerateInvoicePdfProvider).invoice;
  @override
  Business get business => (origin as GenerateInvoicePdfProvider).business;
}

String _$uploadPdfHash() => r'56ac0cd3c0513b10339cfc36030d6fe606fc9d91';

/// See also [uploadPdf].
@ProviderFor(uploadPdf)
const uploadPdfProvider = UploadPdfFamily();

/// See also [uploadPdf].
class UploadPdfFamily extends Family<AsyncValue<String>> {
  /// See also [uploadPdf].
  const UploadPdfFamily();

  /// See also [uploadPdf].
  UploadPdfProvider call(
    Uint8List pdfBytes,
    String path,
  ) {
    return UploadPdfProvider(
      pdfBytes,
      path,
    );
  }

  @override
  UploadPdfProvider getProviderOverride(
    covariant UploadPdfProvider provider,
  ) {
    return call(
      provider.pdfBytes,
      provider.path,
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
  String? get name => r'uploadPdfProvider';
}

/// See also [uploadPdf].
class UploadPdfProvider extends AutoDisposeFutureProvider<String> {
  /// See also [uploadPdf].
  UploadPdfProvider(
    Uint8List pdfBytes,
    String path,
  ) : this._internal(
          (ref) => uploadPdf(
            ref as UploadPdfRef,
            pdfBytes,
            path,
          ),
          from: uploadPdfProvider,
          name: r'uploadPdfProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$uploadPdfHash,
          dependencies: UploadPdfFamily._dependencies,
          allTransitiveDependencies: UploadPdfFamily._allTransitiveDependencies,
          pdfBytes: pdfBytes,
          path: path,
        );

  UploadPdfProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pdfBytes,
    required this.path,
  }) : super.internal();

  final Uint8List pdfBytes;
  final String path;

  @override
  Override overrideWith(
    FutureOr<String> Function(UploadPdfRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UploadPdfProvider._internal(
        (ref) => create(ref as UploadPdfRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pdfBytes: pdfBytes,
        path: path,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _UploadPdfProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UploadPdfProvider &&
        other.pdfBytes == pdfBytes &&
        other.path == path;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pdfBytes.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UploadPdfRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `pdfBytes` of this provider.
  Uint8List get pdfBytes;

  /// The parameter `path` of this provider.
  String get path;
}

class _UploadPdfProviderElement extends AutoDisposeFutureProviderElement<String>
    with UploadPdfRef {
  _UploadPdfProviderElement(super.provider);

  @override
  Uint8List get pdfBytes => (origin as UploadPdfProvider).pdfBytes;
  @override
  String get path => (origin as UploadPdfProvider).path;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
