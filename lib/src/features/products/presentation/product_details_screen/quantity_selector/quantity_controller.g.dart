// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(QuantityController)
const quantityControllerProvider = QuantityControllerFamily._();

final class QuantityControllerProvider
    extends $NotifierProvider<QuantityController, int> {
  const QuantityControllerProvider._({
    required QuantityControllerFamily super.from,
    required ({int initialQuantity, int minQuantity, int maxQuantity})
    super.argument,
  }) : super(
         retry: null,
         name: r'quantityControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$quantityControllerHash();

  @override
  String toString() {
    return r'quantityControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  QuantityController create() => QuantityController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is QuantityControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$quantityControllerHash() =>
    r'c36e8ecab80590555881d2b12c2a44b15e727d19';

final class QuantityControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          QuantityController,
          int,
          int,
          int,
          ({int initialQuantity, int minQuantity, int maxQuantity})
        > {
  const QuantityControllerFamily._()
    : super(
        retry: null,
        name: r'quantityControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  QuantityControllerProvider call({
    required int initialQuantity,
    required int minQuantity,
    required int maxQuantity,
  }) => QuantityControllerProvider._(
    argument: (
      initialQuantity: initialQuantity,
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
    ),
    from: this,
  );

  @override
  String toString() => r'quantityControllerProvider';
}

abstract class _$QuantityController extends $Notifier<int> {
  late final _$args =
      ref.$arg as ({int initialQuantity, int minQuantity, int maxQuantity});
  int get initialQuantity => _$args.initialQuantity;
  int get minQuantity => _$args.minQuantity;
  int get maxQuantity => _$args.maxQuantity;

  int build({
    required int initialQuantity,
    required int minQuantity,
    required int maxQuantity,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      initialQuantity: _$args.initialQuantity,
      minQuantity: _$args.minQuantity,
      maxQuantity: _$args.maxQuantity,
    );
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
