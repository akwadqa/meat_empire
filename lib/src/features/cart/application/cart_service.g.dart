// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isInCartHash() => r'fb2319979b77ccd54f34656fb426cc7440a751fe';

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

/// See also [isInCart].
@ProviderFor(isInCart)
const isInCartProvider = IsInCartFamily();

/// See also [isInCart].
class IsInCartFamily extends Family<bool> {
  /// See also [isInCart].
  const IsInCartFamily();

  /// See also [isInCart].
  IsInCartProvider call(
    String productId,
  ) {
    return IsInCartProvider(
      productId,
    );
  }

  @override
  IsInCartProvider getProviderOverride(
    covariant IsInCartProvider provider,
  ) {
    return call(
      provider.productId,
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
  String? get name => r'isInCartProvider';
}

/// See also [isInCart].
class IsInCartProvider extends AutoDisposeProvider<bool> {
  /// See also [isInCart].
  IsInCartProvider(
    String productId,
  ) : this._internal(
          (ref) => isInCart(
            ref as IsInCartRef,
            productId,
          ),
          from: isInCartProvider,
          name: r'isInCartProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isInCartHash,
          dependencies: IsInCartFamily._dependencies,
          allTransitiveDependencies: IsInCartFamily._allTransitiveDependencies,
          productId: productId,
        );

  IsInCartProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final String productId;

  @override
  Override overrideWith(
    bool Function(IsInCartRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsInCartProvider._internal(
        (ref) => create(ref as IsInCartRef),
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
  AutoDisposeProviderElement<bool> createElement() {
    return _IsInCartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsInCartProvider && other.productId == productId;
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
mixin IsInCartRef on AutoDisposeProviderRef<bool> {
  /// The parameter `productId` of this provider.
  String get productId;
}

class _IsInCartProviderElement extends AutoDisposeProviderElement<bool>
    with IsInCartRef {
  _IsInCartProviderElement(super.provider);

  @override
  String get productId => (origin as IsInCartProvider).productId;
}

String _$cartCountHash() => r'abef7423ba97ae90f66f833d81f41bfef56f6b22';

/// See also [cartCount].
@ProviderFor(cartCount)
final cartCountProvider = AutoDisposeProvider<int>.internal(
  cartCount,
  name: r'cartCountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartCountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CartCountRef = AutoDisposeProviderRef<int>;
String _$updateCartControllerHash() =>
    r'b570ca5a2e9dfa3980514473ce5df2bcaf036d72';

/// See also [UpdateCartController].
@ProviderFor(UpdateCartController)
final updateCartControllerProvider =
    AsyncNotifierProvider<UpdateCartController, void>.internal(
  UpdateCartController.new,
  name: r'updateCartControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$updateCartControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UpdateCartController = AsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
