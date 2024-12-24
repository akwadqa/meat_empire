// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$quantityControllerHash() =>
    r'c36e8ecab80590555881d2b12c2a44b15e727d19';

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

abstract class _$QuantityController extends BuildlessAutoDisposeNotifier<int> {
  late final int initialQuantity;
  late final int minQuantity;
  late final int maxQuantity;

  int build({
    required int initialQuantity,
    required int minQuantity,
    required int maxQuantity,
  });
}

/// See also [QuantityController].
@ProviderFor(QuantityController)
const quantityControllerProvider = QuantityControllerFamily();

/// See also [QuantityController].
class QuantityControllerFamily extends Family<int> {
  /// See also [QuantityController].
  const QuantityControllerFamily();

  /// See also [QuantityController].
  QuantityControllerProvider call({
    required int initialQuantity,
    required int minQuantity,
    required int maxQuantity,
  }) {
    return QuantityControllerProvider(
      initialQuantity: initialQuantity,
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
    );
  }

  @override
  QuantityControllerProvider getProviderOverride(
    covariant QuantityControllerProvider provider,
  ) {
    return call(
      initialQuantity: provider.initialQuantity,
      minQuantity: provider.minQuantity,
      maxQuantity: provider.maxQuantity,
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
  String? get name => r'quantityControllerProvider';
}

/// See also [QuantityController].
class QuantityControllerProvider
    extends AutoDisposeNotifierProviderImpl<QuantityController, int> {
  /// See also [QuantityController].
  QuantityControllerProvider({
    required int initialQuantity,
    required int minQuantity,
    required int maxQuantity,
  }) : this._internal(
          () => QuantityController()
            ..initialQuantity = initialQuantity
            ..minQuantity = minQuantity
            ..maxQuantity = maxQuantity,
          from: quantityControllerProvider,
          name: r'quantityControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$quantityControllerHash,
          dependencies: QuantityControllerFamily._dependencies,
          allTransitiveDependencies:
              QuantityControllerFamily._allTransitiveDependencies,
          initialQuantity: initialQuantity,
          minQuantity: minQuantity,
          maxQuantity: maxQuantity,
        );

  QuantityControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialQuantity,
    required this.minQuantity,
    required this.maxQuantity,
  }) : super.internal();

  final int initialQuantity;
  final int minQuantity;
  final int maxQuantity;

  @override
  int runNotifierBuild(
    covariant QuantityController notifier,
  ) {
    return notifier.build(
      initialQuantity: initialQuantity,
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
    );
  }

  @override
  Override overrideWith(QuantityController Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuantityControllerProvider._internal(
        () => create()
          ..initialQuantity = initialQuantity
          ..minQuantity = minQuantity
          ..maxQuantity = maxQuantity,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialQuantity: initialQuantity,
        minQuantity: minQuantity,
        maxQuantity: maxQuantity,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<QuantityController, int> createElement() {
    return _QuantityControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuantityControllerProvider &&
        other.initialQuantity == initialQuantity &&
        other.minQuantity == minQuantity &&
        other.maxQuantity == maxQuantity;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialQuantity.hashCode);
    hash = _SystemHash.combine(hash, minQuantity.hashCode);
    hash = _SystemHash.combine(hash, maxQuantity.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QuantityControllerRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `initialQuantity` of this provider.
  int get initialQuantity;

  /// The parameter `minQuantity` of this provider.
  int get minQuantity;

  /// The parameter `maxQuantity` of this provider.
  int get maxQuantity;
}

class _QuantityControllerProviderElement
    extends AutoDisposeNotifierProviderElement<QuantityController, int>
    with QuantityControllerRef {
  _QuantityControllerProviderElement(super.provider);

  @override
  int get initialQuantity =>
      (origin as QuantityControllerProvider).initialQuantity;
  @override
  int get minQuantity => (origin as QuantityControllerProvider).minQuantity;
  @override
  int get maxQuantity => (origin as QuantityControllerProvider).maxQuantity;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
