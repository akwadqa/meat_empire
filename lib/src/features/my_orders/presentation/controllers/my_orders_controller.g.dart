// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_orders_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyOrdersController)
const myOrdersControllerProvider = MyOrdersControllerFamily._();

final class MyOrdersControllerProvider
    extends $AsyncNotifierProvider<MyOrdersController, OrdersResponse> {
  const MyOrdersControllerProvider._({
    required MyOrdersControllerFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'myOrdersControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myOrdersControllerHash();

  @override
  String toString() {
    return r'myOrdersControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MyOrdersController create() => MyOrdersController();

  @override
  bool operator ==(Object other) {
    return other is MyOrdersControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myOrdersControllerHash() =>
    r'b917174667de56d69336c1d7619a617c6936615a';

final class MyOrdersControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          MyOrdersController,
          AsyncValue<OrdersResponse>,
          OrdersResponse,
          FutureOr<OrdersResponse>,
          String?
        > {
  const MyOrdersControllerFamily._()
    : super(
        retry: null,
        name: r'myOrdersControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyOrdersControllerProvider call([String? status]) =>
      MyOrdersControllerProvider._(argument: status, from: this);

  @override
  String toString() => r'myOrdersControllerProvider';
}

abstract class _$MyOrdersController extends $AsyncNotifier<OrdersResponse> {
  late final _$args = ref.$arg as String?;
  String? get status => _$args;

  FutureOr<OrdersResponse> build([String? status]);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<OrdersResponse>, OrdersResponse>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<OrdersResponse>, OrdersResponse>,
              AsyncValue<OrdersResponse>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
