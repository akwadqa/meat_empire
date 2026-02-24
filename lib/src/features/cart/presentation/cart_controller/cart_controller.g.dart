// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartController)
const cartControllerProvider = CartControllerProvider._();

final class CartControllerProvider
    extends $AsyncNotifierProvider<CartController, CartResponse> {
  const CartControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartControllerHash();

  @$internal
  @override
  CartController create() => CartController();
}

String _$cartControllerHash() => r'b82637b3ed390cc6ace41192666557e88ff72975';

abstract class _$CartController extends $AsyncNotifier<CartResponse> {
  FutureOr<CartResponse> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<CartResponse>, CartResponse>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CartResponse>, CartResponse>,
              AsyncValue<CartResponse>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
