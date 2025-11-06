// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CheckoutController)
const checkoutControllerProvider = CheckoutControllerFamily._();

final class CheckoutControllerProvider
    extends $NotifierProvider<CheckoutController, DeliverySlot?> {
  const CheckoutControllerProvider._({
    required CheckoutControllerFamily super.from,
    required List<DeliverySlot> super.argument,
  }) : super(
         retry: null,
         name: r'checkoutControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checkoutControllerHash();

  @override
  String toString() {
    return r'checkoutControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CheckoutController create() => CheckoutController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeliverySlot? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeliverySlot?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CheckoutControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkoutControllerHash() =>
    r'32ef7330235b245474e2727c555e41c56d23c48d';

final class CheckoutControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          CheckoutController,
          DeliverySlot?,
          DeliverySlot?,
          DeliverySlot?,
          List<DeliverySlot>
        > {
  const CheckoutControllerFamily._()
    : super(
        retry: null,
        name: r'checkoutControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CheckoutControllerProvider call(List<DeliverySlot> deliverySlots) =>
      CheckoutControllerProvider._(argument: deliverySlots, from: this);

  @override
  String toString() => r'checkoutControllerProvider';
}

abstract class _$CheckoutController extends $Notifier<DeliverySlot?> {
  late final _$args = ref.$arg as List<DeliverySlot>;
  List<DeliverySlot> get deliverySlots => _$args;

  DeliverySlot? build(List<DeliverySlot> deliverySlots);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<DeliverySlot?, DeliverySlot?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DeliverySlot?, DeliverySlot?>,
              DeliverySlot?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
