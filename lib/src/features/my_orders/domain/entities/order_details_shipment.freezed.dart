// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_shipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailsShipment _$OrderDetailsShipmentFromJson(Map<String, dynamic> json) {
  return _OrderDetailsShipment.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsShipment {
  String? get shipmentId => throw _privateConstructorUsedError;
  String? get comments => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get shippingId => throw _privateConstructorUsedError;
  String? get shipping => throw _privateConstructorUsedError;
  String? get trackingNumber => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsShipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsShipmentCopyWith<OrderDetailsShipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsShipmentCopyWith<$Res> {
  factory $OrderDetailsShipmentCopyWith(OrderDetailsShipment value,
          $Res Function(OrderDetailsShipment) then) =
      _$OrderDetailsShipmentCopyWithImpl<$Res, OrderDetailsShipment>;
  @useResult
  $Res call(
      {String? shipmentId,
      String? comments,
      String status,
      String orderId,
      String userId,
      String? shippingId,
      String? shipping,
      String? trackingNumber});
}

/// @nodoc
class _$OrderDetailsShipmentCopyWithImpl<$Res,
        $Val extends OrderDetailsShipment>
    implements $OrderDetailsShipmentCopyWith<$Res> {
  _$OrderDetailsShipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsShipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipmentId = freezed,
    Object? comments = freezed,
    Object? status = null,
    Object? orderId = null,
    Object? userId = null,
    Object? shippingId = freezed,
    Object? shipping = freezed,
    Object? trackingNumber = freezed,
  }) {
    return _then(_value.copyWith(
      shipmentId: freezed == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as String?,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailsShipmentImplCopyWith<$Res>
    implements $OrderDetailsShipmentCopyWith<$Res> {
  factory _$$OrderDetailsShipmentImplCopyWith(_$OrderDetailsShipmentImpl value,
          $Res Function(_$OrderDetailsShipmentImpl) then) =
      __$$OrderDetailsShipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? shipmentId,
      String? comments,
      String status,
      String orderId,
      String userId,
      String? shippingId,
      String? shipping,
      String? trackingNumber});
}

/// @nodoc
class __$$OrderDetailsShipmentImplCopyWithImpl<$Res>
    extends _$OrderDetailsShipmentCopyWithImpl<$Res, _$OrderDetailsShipmentImpl>
    implements _$$OrderDetailsShipmentImplCopyWith<$Res> {
  __$$OrderDetailsShipmentImplCopyWithImpl(_$OrderDetailsShipmentImpl _value,
      $Res Function(_$OrderDetailsShipmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsShipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipmentId = freezed,
    Object? comments = freezed,
    Object? status = null,
    Object? orderId = null,
    Object? userId = null,
    Object? shippingId = freezed,
    Object? shipping = freezed,
    Object? trackingNumber = freezed,
  }) {
    return _then(_$OrderDetailsShipmentImpl(
      shipmentId: freezed == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as String?,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$OrderDetailsShipmentImpl implements _OrderDetailsShipment {
  const _$OrderDetailsShipmentImpl(
      {this.shipmentId,
      this.comments,
      required this.status,
      required this.orderId,
      required this.userId,
      this.shippingId,
      this.shipping,
      this.trackingNumber});

  factory _$OrderDetailsShipmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsShipmentImplFromJson(json);

  @override
  final String? shipmentId;
  @override
  final String? comments;
  @override
  final String status;
  @override
  final String orderId;
  @override
  final String userId;
  @override
  final String? shippingId;
  @override
  final String? shipping;
  @override
  final String? trackingNumber;

  @override
  String toString() {
    return 'OrderDetailsShipment(shipmentId: $shipmentId, comments: $comments, status: $status, orderId: $orderId, userId: $userId, shippingId: $shippingId, shipping: $shipping, trackingNumber: $trackingNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsShipmentImpl &&
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.shippingId, shippingId) ||
                other.shippingId == shippingId) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.trackingNumber, trackingNumber) ||
                other.trackingNumber == trackingNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shipmentId, comments, status,
      orderId, userId, shippingId, shipping, trackingNumber);

  /// Create a copy of OrderDetailsShipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsShipmentImplCopyWith<_$OrderDetailsShipmentImpl>
      get copyWith =>
          __$$OrderDetailsShipmentImplCopyWithImpl<_$OrderDetailsShipmentImpl>(
              this, _$identity);
}

abstract class _OrderDetailsShipment implements OrderDetailsShipment {
  const factory _OrderDetailsShipment(
      {final String? shipmentId,
      final String? comments,
      required final String status,
      required final String orderId,
      required final String userId,
      final String? shippingId,
      final String? shipping,
      final String? trackingNumber}) = _$OrderDetailsShipmentImpl;

  factory _OrderDetailsShipment.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsShipmentImpl.fromJson;

  @override
  String? get shipmentId;
  @override
  String? get comments;
  @override
  String get status;
  @override
  String get orderId;
  @override
  String get userId;
  @override
  String? get shippingId;
  @override
  String? get shipping;
  @override
  String? get trackingNumber;

  /// Create a copy of OrderDetailsShipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsShipmentImplCopyWith<_$OrderDetailsShipmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
