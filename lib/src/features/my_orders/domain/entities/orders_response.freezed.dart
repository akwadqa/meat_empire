// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrdersResponse _$OrdersResponseFromJson(Map<String, dynamic> json) {
  return _OrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$OrdersResponse {
  List<OrdersEntity> get orders => throw _privateConstructorUsedError;
  @JsonKey(name: "order_statuses")
  List<OrderStatuses> get orderStatuses => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  /// Create a copy of OrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersResponseCopyWith<OrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersResponseCopyWith<$Res> {
  factory $OrdersResponseCopyWith(
          OrdersResponse value, $Res Function(OrdersResponse) then) =
      _$OrdersResponseCopyWithImpl<$Res, OrdersResponse>;
  @useResult
  $Res call(
      {List<OrdersEntity> orders,
      @JsonKey(name: "order_statuses") List<OrderStatuses> orderStatuses,
      String message,
      bool success});
}

/// @nodoc
class _$OrdersResponseCopyWithImpl<$Res, $Val extends OrdersResponse>
    implements $OrdersResponseCopyWith<$Res> {
  _$OrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? orderStatuses = null,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrdersEntity>,
      orderStatuses: null == orderStatuses
          ? _value.orderStatuses
          : orderStatuses // ignore: cast_nullable_to_non_nullable
              as List<OrderStatuses>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersResponseImplCopyWith<$Res>
    implements $OrdersResponseCopyWith<$Res> {
  factory _$$OrdersResponseImplCopyWith(_$OrdersResponseImpl value,
          $Res Function(_$OrdersResponseImpl) then) =
      __$$OrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OrdersEntity> orders,
      @JsonKey(name: "order_statuses") List<OrderStatuses> orderStatuses,
      String message,
      bool success});
}

/// @nodoc
class __$$OrdersResponseImplCopyWithImpl<$Res>
    extends _$OrdersResponseCopyWithImpl<$Res, _$OrdersResponseImpl>
    implements _$$OrdersResponseImplCopyWith<$Res> {
  __$$OrdersResponseImplCopyWithImpl(
      _$OrdersResponseImpl _value, $Res Function(_$OrdersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? orderStatuses = null,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_$OrdersResponseImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrdersEntity>,
      orderStatuses: null == orderStatuses
          ? _value._orderStatuses
          : orderStatuses // ignore: cast_nullable_to_non_nullable
              as List<OrderStatuses>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$OrdersResponseImpl implements _OrdersResponse {
  const _$OrdersResponseImpl(
      {required final List<OrdersEntity> orders,
      @JsonKey(name: "order_statuses")
      required final List<OrderStatuses> orderStatuses,
      required this.message,
      required this.success})
      : _orders = orders,
        _orderStatuses = orderStatuses;

  factory _$OrdersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersResponseImplFromJson(json);

  final List<OrdersEntity> _orders;
  @override
  List<OrdersEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<OrderStatuses> _orderStatuses;
  @override
  @JsonKey(name: "order_statuses")
  List<OrderStatuses> get orderStatuses {
    if (_orderStatuses is EqualUnmodifiableListView) return _orderStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderStatuses);
  }

  @override
  final String message;
  @override
  final bool success;

  @override
  String toString() {
    return 'OrdersResponse(orders: $orders, orderStatuses: $orderStatuses, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersResponseImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality()
                .equals(other._orderStatuses, _orderStatuses) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_orderStatuses),
      message,
      success);

  /// Create a copy of OrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersResponseImplCopyWith<_$OrdersResponseImpl> get copyWith =>
      __$$OrdersResponseImplCopyWithImpl<_$OrdersResponseImpl>(
          this, _$identity);
}

abstract class _OrdersResponse implements OrdersResponse {
  const factory _OrdersResponse(
      {required final List<OrdersEntity> orders,
      @JsonKey(name: "order_statuses")
      required final List<OrderStatuses> orderStatuses,
      required final String message,
      required final bool success}) = _$OrdersResponseImpl;

  factory _OrdersResponse.fromJson(Map<String, dynamic> json) =
      _$OrdersResponseImpl.fromJson;

  @override
  List<OrdersEntity> get orders;
  @override
  @JsonKey(name: "order_statuses")
  List<OrderStatuses> get orderStatuses;
  @override
  String get message;
  @override
  bool get success;

  /// Create a copy of OrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersResponseImplCopyWith<_$OrdersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
