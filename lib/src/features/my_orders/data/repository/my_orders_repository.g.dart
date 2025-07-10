// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_orders_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myOrdersRepositoryHash() =>
    r'dffcb2a81f2197dd5c608a8a8592fa9e97974e06';

/// See also [myOrdersRepository].
@ProviderFor(myOrdersRepository)
final myOrdersRepositoryProvider = Provider<MyOrdersRepository>.internal(
  myOrdersRepository,
  name: r'myOrdersRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myOrdersRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MyOrdersRepositoryRef = ProviderRef<MyOrdersRepository>;
String _$myOrdersHash() => r'258f7e3562c0962449f708e909ce3f1ff3fbb708';

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

/// See also [myOrders].
@ProviderFor(myOrders)
const myOrdersProvider = MyOrdersFamily();

/// See also [myOrders].
class MyOrdersFamily extends Family<AsyncValue<OrdersResponse>> {
  /// See also [myOrders].
  const MyOrdersFamily();

  /// See also [myOrders].
  MyOrdersProvider call(String status, int page) {
    return MyOrdersProvider(status, page);
  }

  @override
  MyOrdersProvider getProviderOverride(covariant MyOrdersProvider provider) {
    return call(provider.status, provider.page);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'myOrdersProvider';
}

/// See also [myOrders].
class MyOrdersProvider extends AutoDisposeFutureProvider<OrdersResponse> {
  /// See also [myOrders].
  MyOrdersProvider(String status, int page)
    : this._internal(
        (ref) => myOrders(ref as MyOrdersRef, status, page),
        from: myOrdersProvider,
        name: r'myOrdersProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$myOrdersHash,
        dependencies: MyOrdersFamily._dependencies,
        allTransitiveDependencies: MyOrdersFamily._allTransitiveDependencies,
        status: status,
        page: page,
      );

  MyOrdersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.status,
    required this.page,
  }) : super.internal();

  final String status;
  final int page;

  @override
  Override overrideWith(
    FutureOr<OrdersResponse> Function(MyOrdersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyOrdersProvider._internal(
        (ref) => create(ref as MyOrdersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        status: status,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<OrdersResponse> createElement() {
    return _MyOrdersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyOrdersProvider &&
        other.status == status &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MyOrdersRef on AutoDisposeFutureProviderRef<OrdersResponse> {
  /// The parameter `status` of this provider.
  String get status;

  /// The parameter `page` of this provider.
  int get page;
}

class _MyOrdersProviderElement
    extends AutoDisposeFutureProviderElement<OrdersResponse>
    with MyOrdersRef {
  _MyOrdersProviderElement(super.provider);

  @override
  String get status => (origin as MyOrdersProvider).status;
  @override
  int get page => (origin as MyOrdersProvider).page;
}

String _$orderDetailsHash() => r'7b870659077a1ee9a72c24c8237c807eb2cbdaba';

/// See also [orderDetails].
@ProviderFor(orderDetails)
const orderDetailsProvider = OrderDetailsFamily();

/// See also [orderDetails].
class OrderDetailsFamily extends Family<AsyncValue<OrderDetails>> {
  /// See also [orderDetails].
  const OrderDetailsFamily();

  /// See also [orderDetails].
  OrderDetailsProvider call(int orderId) {
    return OrderDetailsProvider(orderId);
  }

  @override
  OrderDetailsProvider getProviderOverride(
    covariant OrderDetailsProvider provider,
  ) {
    return call(provider.orderId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'orderDetailsProvider';
}

/// See also [orderDetails].
class OrderDetailsProvider extends AutoDisposeFutureProvider<OrderDetails> {
  /// See also [orderDetails].
  OrderDetailsProvider(int orderId)
    : this._internal(
        (ref) => orderDetails(ref as OrderDetailsRef, orderId),
        from: orderDetailsProvider,
        name: r'orderDetailsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$orderDetailsHash,
        dependencies: OrderDetailsFamily._dependencies,
        allTransitiveDependencies:
            OrderDetailsFamily._allTransitiveDependencies,
        orderId: orderId,
      );

  OrderDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderId,
  }) : super.internal();

  final int orderId;

  @override
  Override overrideWith(
    FutureOr<OrderDetails> Function(OrderDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OrderDetailsProvider._internal(
        (ref) => create(ref as OrderDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderId: orderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<OrderDetails> createElement() {
    return _OrderDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderDetailsProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OrderDetailsRef on AutoDisposeFutureProviderRef<OrderDetails> {
  /// The parameter `orderId` of this provider.
  int get orderId;
}

class _OrderDetailsProviderElement
    extends AutoDisposeFutureProviderElement<OrderDetails>
    with OrderDetailsRef {
  _OrderDetailsProviderElement(super.provider);

  @override
  int get orderId => (origin as OrderDetailsProvider).orderId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
