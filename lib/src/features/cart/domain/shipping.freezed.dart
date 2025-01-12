// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Shipping _$ShippingFromJson(Map<String, dynamic> json) {
  return _Shipping.fromJson(json);
}

/// @nodoc
mixin _$Shipping {
  String? get shippingId => throw _privateConstructorUsedError;
  String? get shipping => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get serviceDeliveryTime => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;
  String? get formatRate => throw _privateConstructorUsedError;

  /// Create a copy of Shipping
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingCopyWith<Shipping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingCopyWith<$Res> {
  factory $ShippingCopyWith(Shipping value, $Res Function(Shipping) then) =
      _$ShippingCopyWithImpl<$Res, Shipping>;
  @useResult
  $Res call(
      {String? shippingId,
      String? shipping,
      String? description,
      String? serviceDeliveryTime,
      double? rate,
      String? formatRate});
}

/// @nodoc
class _$ShippingCopyWithImpl<$Res, $Val extends Shipping>
    implements $ShippingCopyWith<$Res> {
  _$ShippingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Shipping
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingId = freezed,
    Object? shipping = freezed,
    Object? description = freezed,
    Object? serviceDeliveryTime = freezed,
    Object? rate = freezed,
    Object? formatRate = freezed,
  }) {
    return _then(_value.copyWith(
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as String?,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceDeliveryTime: freezed == serviceDeliveryTime
          ? _value.serviceDeliveryTime
          : serviceDeliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      formatRate: freezed == formatRate
          ? _value.formatRate
          : formatRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingImplCopyWith<$Res>
    implements $ShippingCopyWith<$Res> {
  factory _$$ShippingImplCopyWith(
          _$ShippingImpl value, $Res Function(_$ShippingImpl) then) =
      __$$ShippingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? shippingId,
      String? shipping,
      String? description,
      String? serviceDeliveryTime,
      double? rate,
      String? formatRate});
}

/// @nodoc
class __$$ShippingImplCopyWithImpl<$Res>
    extends _$ShippingCopyWithImpl<$Res, _$ShippingImpl>
    implements _$$ShippingImplCopyWith<$Res> {
  __$$ShippingImplCopyWithImpl(
      _$ShippingImpl _value, $Res Function(_$ShippingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Shipping
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingId = freezed,
    Object? shipping = freezed,
    Object? description = freezed,
    Object? serviceDeliveryTime = freezed,
    Object? rate = freezed,
    Object? formatRate = freezed,
  }) {
    return _then(_$ShippingImpl(
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as String?,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceDeliveryTime: freezed == serviceDeliveryTime
          ? _value.serviceDeliveryTime
          : serviceDeliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      formatRate: freezed == formatRate
          ? _value.formatRate
          : formatRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ShippingImpl implements _Shipping {
  _$ShippingImpl(
      {this.shippingId,
      this.shipping,
      this.description,
      this.serviceDeliveryTime,
      this.rate,
      this.formatRate});

  factory _$ShippingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingImplFromJson(json);

  @override
  final String? shippingId;
  @override
  final String? shipping;
  @override
  final String? description;
  @override
  final String? serviceDeliveryTime;
  @override
  final double? rate;
  @override
  final String? formatRate;

  @override
  String toString() {
    return 'Shipping(shippingId: $shippingId, shipping: $shipping, description: $description, serviceDeliveryTime: $serviceDeliveryTime, rate: $rate, formatRate: $formatRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingImpl &&
            (identical(other.shippingId, shippingId) ||
                other.shippingId == shippingId) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.serviceDeliveryTime, serviceDeliveryTime) ||
                other.serviceDeliveryTime == serviceDeliveryTime) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.formatRate, formatRate) ||
                other.formatRate == formatRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shippingId, shipping,
      description, serviceDeliveryTime, rate, formatRate);

  /// Create a copy of Shipping
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingImplCopyWith<_$ShippingImpl> get copyWith =>
      __$$ShippingImplCopyWithImpl<_$ShippingImpl>(this, _$identity);
}

abstract class _Shipping implements Shipping {
  factory _Shipping(
      {final String? shippingId,
      final String? shipping,
      final String? description,
      final String? serviceDeliveryTime,
      final double? rate,
      final String? formatRate}) = _$ShippingImpl;

  factory _Shipping.fromJson(Map<String, dynamic> json) =
      _$ShippingImpl.fromJson;

  @override
  String? get shippingId;
  @override
  String? get shipping;
  @override
  String? get description;
  @override
  String? get serviceDeliveryTime;
  @override
  double? get rate;
  @override
  String? get formatRate;

  /// Create a copy of Shipping
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingImplCopyWith<_$ShippingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
