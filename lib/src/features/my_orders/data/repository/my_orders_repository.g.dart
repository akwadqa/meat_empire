// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_orders_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(myOrdersRepository)
const myOrdersRepositoryProvider = MyOrdersRepositoryProvider._();

final class MyOrdersRepositoryProvider
    extends
        $FunctionalProvider<
          MyOrdersRepository,
          MyOrdersRepository,
          MyOrdersRepository
        >
    with $Provider<MyOrdersRepository> {
  const MyOrdersRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myOrdersRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myOrdersRepositoryHash();

  @$internal
  @override
  $ProviderElement<MyOrdersRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MyOrdersRepository create(Ref ref) {
    return myOrdersRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MyOrdersRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MyOrdersRepository>(value),
    );
  }
}

String _$myOrdersRepositoryHash() =>
    r'dffcb2a81f2197dd5c608a8a8592fa9e97974e06';

@ProviderFor(myOrders)
const myOrdersProvider = MyOrdersFamily._();

final class MyOrdersProvider
    extends
        $FunctionalProvider<
          AsyncValue<OrdersResponse>,
          OrdersResponse,
          FutureOr<OrdersResponse>
        >
    with $FutureModifier<OrdersResponse>, $FutureProvider<OrdersResponse> {
  const MyOrdersProvider._({
    required MyOrdersFamily super.from,
    required (String, int) super.argument,
  }) : super(
         retry: null,
         name: r'myOrdersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myOrdersHash();

  @override
  String toString() {
    return r'myOrdersProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<OrdersResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OrdersResponse> create(Ref ref) {
    final argument = this.argument as (String, int);
    return myOrders(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is MyOrdersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myOrdersHash() => r'258f7e3562c0962449f708e909ce3f1ff3fbb708';

final class MyOrdersFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<OrdersResponse>, (String, int)> {
  const MyOrdersFamily._()
    : super(
        retry: null,
        name: r'myOrdersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyOrdersProvider call(String status, int page) =>
      MyOrdersProvider._(argument: (status, page), from: this);

  @override
  String toString() => r'myOrdersProvider';
}

@ProviderFor(orderDetails)
const orderDetailsProvider = OrderDetailsFamily._();

final class OrderDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<OrderDetails>,
          OrderDetails,
          FutureOr<OrderDetails>
        >
    with $FutureModifier<OrderDetails>, $FutureProvider<OrderDetails> {
  const OrderDetailsProvider._({
    required OrderDetailsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'orderDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$orderDetailsHash();

  @override
  String toString() {
    return r'orderDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<OrderDetails> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OrderDetails> create(Ref ref) {
    final argument = this.argument as int;
    return orderDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$orderDetailsHash() => r'7b870659077a1ee9a72c24c8237c807eb2cbdaba';

final class OrderDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<OrderDetails>, int> {
  const OrderDetailsFamily._()
    : super(
        retry: null,
        name: r'orderDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OrderDetailsProvider call(int orderId) =>
      OrderDetailsProvider._(argument: orderId, from: this);

  @override
  String toString() => r'orderDetailsProvider';
}
