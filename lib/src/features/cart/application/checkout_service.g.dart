// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkoutControllerHash() =>
    r'f1dad422d98c491f2484215b5986cee9f6f24bda';

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

abstract class _$CheckoutController
    extends BuildlessAutoDisposeNotifier<DeliverySlot?> {
  late final List<DeliverySlot> deliverySlots;

  DeliverySlot? build(
    List<DeliverySlot> deliverySlots,
  );
}

/// See also [CheckoutController].
@ProviderFor(CheckoutController)
const checkoutControllerProvider = CheckoutControllerFamily();

/// See also [CheckoutController].
class CheckoutControllerFamily extends Family<DeliverySlot?> {
  /// See also [CheckoutController].
  const CheckoutControllerFamily();

  /// See also [CheckoutController].
  CheckoutControllerProvider call(
    List<DeliverySlot> deliverySlots,
  ) {
    return CheckoutControllerProvider(
      deliverySlots,
    );
  }

  @override
  CheckoutControllerProvider getProviderOverride(
    covariant CheckoutControllerProvider provider,
  ) {
    return call(
      provider.deliverySlots,
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
  String? get name => r'checkoutControllerProvider';
}

/// See also [CheckoutController].
class CheckoutControllerProvider
    extends AutoDisposeNotifierProviderImpl<CheckoutController, DeliverySlot?> {
  /// See also [CheckoutController].
  CheckoutControllerProvider(
    List<DeliverySlot> deliverySlots,
  ) : this._internal(
          () => CheckoutController()..deliverySlots = deliverySlots,
          from: checkoutControllerProvider,
          name: r'checkoutControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkoutControllerHash,
          dependencies: CheckoutControllerFamily._dependencies,
          allTransitiveDependencies:
              CheckoutControllerFamily._allTransitiveDependencies,
          deliverySlots: deliverySlots,
        );

  CheckoutControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.deliverySlots,
  }) : super.internal();

  final List<DeliverySlot> deliverySlots;

  @override
  DeliverySlot? runNotifierBuild(
    covariant CheckoutController notifier,
  ) {
    return notifier.build(
      deliverySlots,
    );
  }

  @override
  Override overrideWith(CheckoutController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CheckoutControllerProvider._internal(
        () => create()..deliverySlots = deliverySlots,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        deliverySlots: deliverySlots,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CheckoutController, DeliverySlot?>
      createElement() {
    return _CheckoutControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckoutControllerProvider &&
        other.deliverySlots == deliverySlots;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, deliverySlots.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CheckoutControllerRef on AutoDisposeNotifierProviderRef<DeliverySlot?> {
  /// The parameter `deliverySlots` of this provider.
  List<DeliverySlot> get deliverySlots;
}

class _CheckoutControllerProviderElement
    extends AutoDisposeNotifierProviderElement<CheckoutController,
        DeliverySlot?> with CheckoutControllerRef {
  _CheckoutControllerProviderElement(super.provider);

  @override
  List<DeliverySlot> get deliverySlots =>
      (origin as CheckoutControllerProvider).deliverySlots;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
