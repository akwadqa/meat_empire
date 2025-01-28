// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_orders_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myOrdersControllerHash() =>
    r'9664d655d71d8ce3918aff83cd16f5efa4f08d2f';

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

abstract class _$MyOrdersController
    extends BuildlessAutoDisposeAsyncNotifier<OrdersResponse> {
  late final String? status;

  FutureOr<OrdersResponse> build([
    String? status,
  ]);
}

/// See also [MyOrdersController].
@ProviderFor(MyOrdersController)
const myOrdersControllerProvider = MyOrdersControllerFamily();

/// See also [MyOrdersController].
class MyOrdersControllerFamily extends Family<AsyncValue<OrdersResponse>> {
  /// See also [MyOrdersController].
  const MyOrdersControllerFamily();

  /// See also [MyOrdersController].
  MyOrdersControllerProvider call([
    String? status,
  ]) {
    return MyOrdersControllerProvider(
      status,
    );
  }

  @override
  MyOrdersControllerProvider getProviderOverride(
    covariant MyOrdersControllerProvider provider,
  ) {
    return call(
      provider.status,
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
  String? get name => r'myOrdersControllerProvider';
}

/// See also [MyOrdersController].
class MyOrdersControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MyOrdersController, OrdersResponse> {
  /// See also [MyOrdersController].
  MyOrdersControllerProvider([
    String? status,
  ]) : this._internal(
          () => MyOrdersController()..status = status,
          from: myOrdersControllerProvider,
          name: r'myOrdersControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myOrdersControllerHash,
          dependencies: MyOrdersControllerFamily._dependencies,
          allTransitiveDependencies:
              MyOrdersControllerFamily._allTransitiveDependencies,
          status: status,
        );

  MyOrdersControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.status,
  }) : super.internal();

  final String? status;

  @override
  FutureOr<OrdersResponse> runNotifierBuild(
    covariant MyOrdersController notifier,
  ) {
    return notifier.build(
      status,
    );
  }

  @override
  Override overrideWith(MyOrdersController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MyOrdersControllerProvider._internal(
        () => create()..status = status,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MyOrdersController, OrdersResponse>
      createElement() {
    return _MyOrdersControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyOrdersControllerProvider && other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MyOrdersControllerRef
    on AutoDisposeAsyncNotifierProviderRef<OrdersResponse> {
  /// The parameter `status` of this provider.
  String? get status;
}

class _MyOrdersControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MyOrdersController,
        OrdersResponse> with MyOrdersControllerRef {
  _MyOrdersControllerProviderElement(super.provider);

  @override
  String? get status => (origin as MyOrdersControllerProvider).status;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
