// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RateInfo _$RateInfoFromJson(Map<String, dynamic> json) {
  return _RateInfo.fromJson(json);
}

/// @nodoc
mixin _$RateInfo {
  String? get rateId => throw _privateConstructorUsedError;
  String? get shippingId => throw _privateConstructorUsedError;
  String? get destinationId => throw _privateConstructorUsedError;
  String? get baseRate => throw _privateConstructorUsedError;

  /// Create a copy of RateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateInfoCopyWith<RateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateInfoCopyWith<$Res> {
  factory $RateInfoCopyWith(RateInfo value, $Res Function(RateInfo) then) =
      _$RateInfoCopyWithImpl<$Res, RateInfo>;
  @useResult
  $Res call(
      {String? rateId,
      String? shippingId,
      String? destinationId,
      String? baseRate});
}

/// @nodoc
class _$RateInfoCopyWithImpl<$Res, $Val extends RateInfo>
    implements $RateInfoCopyWith<$Res> {
  _$RateInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateId = freezed,
    Object? shippingId = freezed,
    Object? destinationId = freezed,
    Object? baseRate = freezed,
  }) {
    return _then(_value.copyWith(
      rateId: freezed == rateId
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationId: freezed == destinationId
          ? _value.destinationId
          : destinationId // ignore: cast_nullable_to_non_nullable
              as String?,
      baseRate: freezed == baseRate
          ? _value.baseRate
          : baseRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateInfoImplCopyWith<$Res>
    implements $RateInfoCopyWith<$Res> {
  factory _$$RateInfoImplCopyWith(
          _$RateInfoImpl value, $Res Function(_$RateInfoImpl) then) =
      __$$RateInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? rateId,
      String? shippingId,
      String? destinationId,
      String? baseRate});
}

/// @nodoc
class __$$RateInfoImplCopyWithImpl<$Res>
    extends _$RateInfoCopyWithImpl<$Res, _$RateInfoImpl>
    implements _$$RateInfoImplCopyWith<$Res> {
  __$$RateInfoImplCopyWithImpl(
      _$RateInfoImpl _value, $Res Function(_$RateInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateId = freezed,
    Object? shippingId = freezed,
    Object? destinationId = freezed,
    Object? baseRate = freezed,
  }) {
    return _then(_$RateInfoImpl(
      rateId: freezed == rateId
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationId: freezed == destinationId
          ? _value.destinationId
          : destinationId // ignore: cast_nullable_to_non_nullable
              as String?,
      baseRate: freezed == baseRate
          ? _value.baseRate
          : baseRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$RateInfoImpl implements _RateInfo {
  _$RateInfoImpl(
      {this.rateId, this.shippingId, this.destinationId, this.baseRate});

  factory _$RateInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateInfoImplFromJson(json);

  @override
  final String? rateId;
  @override
  final String? shippingId;
  @override
  final String? destinationId;
  @override
  final String? baseRate;

  @override
  String toString() {
    return 'RateInfo(rateId: $rateId, shippingId: $shippingId, destinationId: $destinationId, baseRate: $baseRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateInfoImpl &&
            (identical(other.rateId, rateId) || other.rateId == rateId) &&
            (identical(other.shippingId, shippingId) ||
                other.shippingId == shippingId) &&
            (identical(other.destinationId, destinationId) ||
                other.destinationId == destinationId) &&
            (identical(other.baseRate, baseRate) ||
                other.baseRate == baseRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rateId, shippingId, destinationId, baseRate);

  /// Create a copy of RateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateInfoImplCopyWith<_$RateInfoImpl> get copyWith =>
      __$$RateInfoImplCopyWithImpl<_$RateInfoImpl>(this, _$identity);
}

abstract class _RateInfo implements RateInfo {
  factory _RateInfo(
      {final String? rateId,
      final String? shippingId,
      final String? destinationId,
      final String? baseRate}) = _$RateInfoImpl;

  factory _RateInfo.fromJson(Map<String, dynamic> json) =
      _$RateInfoImpl.fromJson;

  @override
  String? get rateId;
  @override
  String? get shippingId;
  @override
  String? get destinationId;
  @override
  String? get baseRate;

  /// Create a copy of RateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateInfoImplCopyWith<_$RateInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
