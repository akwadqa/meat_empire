// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsRepositoryHash() =>
    r'4e46752fd8e3b807c4f934b2e1a35baeb8e1fab3';

/// See also [productsRepository].
@ProviderFor(productsRepository)
final productsRepositoryProvider = Provider<ProductsRepository>.internal(
  productsRepository,
  name: r'productsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProductsRepositoryRef = ProviderRef<ProductsRepository>;
String _$productDetailsHash() => r'37debfa969b6f1d2699a70a37ee156f979bce875';

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

/// See also [productDetails].
@ProviderFor(productDetails)
const productDetailsProvider = ProductDetailsFamily();

/// See also [productDetails].
class ProductDetailsFamily extends Family<AsyncValue<ProductDetailsResponse>> {
  /// See also [productDetails].
  const ProductDetailsFamily();

  /// See also [productDetails].
  ProductDetailsProvider call(int productId) {
    return ProductDetailsProvider(productId);
  }

  @override
  ProductDetailsProvider getProviderOverride(
    covariant ProductDetailsProvider provider,
  ) {
    return call(provider.productId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productDetailsProvider';
}

/// See also [productDetails].
class ProductDetailsProvider
    extends AutoDisposeFutureProvider<ProductDetailsResponse> {
  /// See also [productDetails].
  ProductDetailsProvider(int productId)
    : this._internal(
        (ref) => productDetails(ref as ProductDetailsRef, productId),
        from: productDetailsProvider,
        name: r'productDetailsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$productDetailsHash,
        dependencies: ProductDetailsFamily._dependencies,
        allTransitiveDependencies:
            ProductDetailsFamily._allTransitiveDependencies,
        productId: productId,
      );

  ProductDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final int productId;

  @override
  Override overrideWith(
    FutureOr<ProductDetailsResponse> Function(ProductDetailsRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductDetailsProvider._internal(
        (ref) => create(ref as ProductDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductDetailsResponse> createElement() {
    return _ProductDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailsProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProductDetailsRef
    on AutoDisposeFutureProviderRef<ProductDetailsResponse> {
  /// The parameter `productId` of this provider.
  int get productId;
}

class _ProductDetailsProviderElement
    extends AutoDisposeFutureProviderElement<ProductDetailsResponse>
    with ProductDetailsRef {
  _ProductDetailsProviderElement(super.provider);

  @override
  int get productId => (origin as ProductDetailsProvider).productId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
