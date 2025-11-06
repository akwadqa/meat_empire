// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productsRepository)
const productsRepositoryProvider = ProductsRepositoryProvider._();

final class ProductsRepositoryProvider
    extends
        $FunctionalProvider<
          ProductsRepository,
          ProductsRepository,
          ProductsRepository
        >
    with $Provider<ProductsRepository> {
  const ProductsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProductsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductsRepository create(Ref ref) {
    return productsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductsRepository>(value),
    );
  }
}

String _$productsRepositoryHash() =>
    r'4e46752fd8e3b807c4f934b2e1a35baeb8e1fab3';

@ProviderFor(productDetails)
const productDetailsProvider = ProductDetailsFamily._();

final class ProductDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductDetailsResponse>,
          ProductDetailsResponse,
          FutureOr<ProductDetailsResponse>
        >
    with
        $FutureModifier<ProductDetailsResponse>,
        $FutureProvider<ProductDetailsResponse> {
  const ProductDetailsProvider._({
    required ProductDetailsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'productDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productDetailsHash();

  @override
  String toString() {
    return r'productDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ProductDetailsResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductDetailsResponse> create(Ref ref) {
    final argument = this.argument as int;
    return productDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productDetailsHash() => r'37debfa969b6f1d2699a70a37ee156f979bce875';

final class ProductDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ProductDetailsResponse>, int> {
  const ProductDetailsFamily._()
    : super(
        retry: null,
        name: r'productDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductDetailsProvider call(int productId) =>
      ProductDetailsProvider._(argument: productId, from: this);

  @override
  String toString() => r'productDetailsProvider';
}
