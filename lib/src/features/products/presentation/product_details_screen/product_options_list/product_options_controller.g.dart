// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_options_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductOptionsController)
const productOptionsControllerProvider = ProductOptionsControllerProvider._();

final class ProductOptionsControllerProvider
    extends $NotifierProvider<ProductOptionsController, List<SelectedOption>> {
  const ProductOptionsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productOptionsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productOptionsControllerHash();

  @$internal
  @override
  ProductOptionsController create() => ProductOptionsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<SelectedOption> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<SelectedOption>>(value),
    );
  }
}

String _$productOptionsControllerHash() =>
    r'c24ad8dfacbdc74a4ee2f3e524e0a15dd3f4b453';

abstract class _$ProductOptionsController
    extends $Notifier<List<SelectedOption>> {
  List<SelectedOption> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<SelectedOption>, List<SelectedOption>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<SelectedOption>, List<SelectedOption>>,
              List<SelectedOption>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
