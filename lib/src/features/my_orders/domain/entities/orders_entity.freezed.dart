// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrdersEntity _$OrdersEntityFromJson(Map<String, dynamic> json) {
  return _OrdersEntity.fromJson(json);
}

/// @nodoc
mixin _$OrdersEntity {
  @JsonKey(name: "order_id")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "timestamp")
  String get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String get orderTotalCost => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_cost")
  String get shippingCost => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<OrderProduct> get products => throw _privateConstructorUsedError;

  /// Create a copy of OrdersEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersEntityCopyWith<OrdersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEntityCopyWith<$Res> {
  factory $OrdersEntityCopyWith(
    OrdersEntity value,
    $Res Function(OrdersEntity) then,
  ) = _$OrdersEntityCopyWithImpl<$Res, OrdersEntity>;
  @useResult
  $Res call({
    @JsonKey(name: "order_id") String orderId,
    @JsonKey(name: "timestamp") String orderDate,
    @JsonKey(name: "total") String orderTotalCost,
    @JsonKey(name: "shipping_cost") String shippingCost,
    String status,
    List<OrderProduct> products,
  });
}

/// @nodoc
class _$OrdersEntityCopyWithImpl<$Res, $Val extends OrdersEntity>
    implements $OrdersEntityCopyWith<$Res> {
  _$OrdersEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderDate = null,
    Object? orderTotalCost = null,
    Object? shippingCost = null,
    Object? status = null,
    Object? products = null,
  }) {
    return _then(
      _value.copyWith(
            orderId: null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String,
            orderDate: null == orderDate
                ? _value.orderDate
                : orderDate // ignore: cast_nullable_to_non_nullable
                      as String,
            orderTotalCost: null == orderTotalCost
                ? _value.orderTotalCost
                : orderTotalCost // ignore: cast_nullable_to_non_nullable
                      as String,
            shippingCost: null == shippingCost
                ? _value.shippingCost
                : shippingCost // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as List<OrderProduct>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrdersEntityImplCopyWith<$Res>
    implements $OrdersEntityCopyWith<$Res> {
  factory _$$OrdersEntityImplCopyWith(
    _$OrdersEntityImpl value,
    $Res Function(_$OrdersEntityImpl) then,
  ) = __$$OrdersEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "order_id") String orderId,
    @JsonKey(name: "timestamp") String orderDate,
    @JsonKey(name: "total") String orderTotalCost,
    @JsonKey(name: "shipping_cost") String shippingCost,
    String status,
    List<OrderProduct> products,
  });
}

/// @nodoc
class __$$OrdersEntityImplCopyWithImpl<$Res>
    extends _$OrdersEntityCopyWithImpl<$Res, _$OrdersEntityImpl>
    implements _$$OrdersEntityImplCopyWith<$Res> {
  __$$OrdersEntityImplCopyWithImpl(
    _$OrdersEntityImpl _value,
    $Res Function(_$OrdersEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderDate = null,
    Object? orderTotalCost = null,
    Object? shippingCost = null,
    Object? status = null,
    Object? products = null,
  }) {
    return _then(
      _$OrdersEntityImpl(
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String,
        orderDate: null == orderDate
            ? _value.orderDate
            : orderDate // ignore: cast_nullable_to_non_nullable
                  as String,
        orderTotalCost: null == orderTotalCost
            ? _value.orderTotalCost
            : orderTotalCost // ignore: cast_nullable_to_non_nullable
                  as String,
        shippingCost: null == shippingCost
            ? _value.shippingCost
            : shippingCost // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<OrderProduct>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$OrdersEntityImpl implements _OrdersEntity {
  const _$OrdersEntityImpl({
    @JsonKey(name: "order_id") required this.orderId,
    @JsonKey(name: "timestamp") required this.orderDate,
    @JsonKey(name: "total") required this.orderTotalCost,
    @JsonKey(name: "shipping_cost") required this.shippingCost,
    required this.status,
    required final List<OrderProduct> products,
  }) : _products = products;

  factory _$OrdersEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersEntityImplFromJson(json);

  @override
  @JsonKey(name: "order_id")
  final String orderId;
  @override
  @JsonKey(name: "timestamp")
  final String orderDate;
  @override
  @JsonKey(name: "total")
  final String orderTotalCost;
  @override
  @JsonKey(name: "shipping_cost")
  final String shippingCost;
  @override
  final String status;
  final List<OrderProduct> _products;
  @override
  List<OrderProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'OrdersEntity(orderId: $orderId, orderDate: $orderDate, orderTotalCost: $orderTotalCost, shippingCost: $shippingCost, status: $status, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersEntityImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.orderTotalCost, orderTotalCost) ||
                other.orderTotalCost == orderTotalCost) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    orderId,
    orderDate,
    orderTotalCost,
    shippingCost,
    status,
    const DeepCollectionEquality().hash(_products),
  );

  /// Create a copy of OrdersEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersEntityImplCopyWith<_$OrdersEntityImpl> get copyWith =>
      __$$OrdersEntityImplCopyWithImpl<_$OrdersEntityImpl>(this, _$identity);
}

abstract class _OrdersEntity implements OrdersEntity {
  const factory _OrdersEntity({
    @JsonKey(name: "order_id") required final String orderId,
    @JsonKey(name: "timestamp") required final String orderDate,
    @JsonKey(name: "total") required final String orderTotalCost,
    @JsonKey(name: "shipping_cost") required final String shippingCost,
    required final String status,
    required final List<OrderProduct> products,
  }) = _$OrdersEntityImpl;

  factory _OrdersEntity.fromJson(Map<String, dynamic> json) =
      _$OrdersEntityImpl.fromJson;

  @override
  @JsonKey(name: "order_id")
  String get orderId;
  @override
  @JsonKey(name: "timestamp")
  String get orderDate;
  @override
  @JsonKey(name: "total")
  String get orderTotalCost;
  @override
  @JsonKey(name: "shipping_cost")
  String get shippingCost;
  @override
  String get status;
  @override
  List<OrderProduct> get products;

  /// Create a copy of OrdersEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersEntityImplCopyWith<_$OrdersEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
