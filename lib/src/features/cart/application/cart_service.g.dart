// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdateCartController)
const updateCartControllerProvider = UpdateCartControllerProvider._();

final class UpdateCartControllerProvider
    extends $AsyncNotifierProvider<UpdateCartController, void> {
  const UpdateCartControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateCartControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateCartControllerHash();

  @$internal
  @override
  UpdateCartController create() => UpdateCartController();
}

String _$updateCartControllerHash() =>
    r'996c630b0671f3802088228de63ece1dd4cd3a8d';

abstract class _$UpdateCartController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}

@ProviderFor(isInCart)
const isInCartProvider = IsInCartFamily._();

final class IsInCartProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsInCartProvider._({
    required IsInCartFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'isInCartProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$isInCartHash();

  @override
  String toString() {
    return r'isInCartProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as String;
    return isInCart(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is IsInCartProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$isInCartHash() => r'fb2319979b77ccd54f34656fb426cc7440a751fe';

final class IsInCartFamily extends $Family
    with $FunctionalFamilyOverride<bool, String> {
  const IsInCartFamily._()
    : super(
        retry: null,
        name: r'isInCartProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IsInCartProvider call(String productId) =>
      IsInCartProvider._(argument: productId, from: this);

  @override
  String toString() => r'isInCartProvider';
}

@ProviderFor(cartCount)
const cartCountProvider = CartCountProvider._();

final class CartCountProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  const CartCountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartCountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartCountHash();

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    return cartCount(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$cartCountHash() => r'abef7423ba97ae90f66f833d81f41bfef56f6b22';
