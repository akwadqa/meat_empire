// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PointsInfo _$PointsInfoFromJson(Map<String, dynamic> json) {
  return _PointsInfo.fromJson(json);
}

/// @nodoc
mixin _$PointsInfo {
  int? get rawTotalPrice => throw _privateConstructorUsedError;
  int? get totalPrice => throw _privateConstructorUsedError;

  /// Create a copy of PointsInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PointsInfoCopyWith<PointsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsInfoCopyWith<$Res> {
  factory $PointsInfoCopyWith(
    PointsInfo value,
    $Res Function(PointsInfo) then,
  ) = _$PointsInfoCopyWithImpl<$Res, PointsInfo>;
  @useResult
  $Res call({int? rawTotalPrice, int? totalPrice});
}

/// @nodoc
class _$PointsInfoCopyWithImpl<$Res, $Val extends PointsInfo>
    implements $PointsInfoCopyWith<$Res> {
  _$PointsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PointsInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rawTotalPrice = freezed, Object? totalPrice = freezed}) {
    return _then(
      _value.copyWith(
            rawTotalPrice: freezed == rawTotalPrice
                ? _value.rawTotalPrice
                : rawTotalPrice // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPrice: freezed == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PointsInfoImplCopyWith<$Res>
    implements $PointsInfoCopyWith<$Res> {
  factory _$$PointsInfoImplCopyWith(
    _$PointsInfoImpl value,
    $Res Function(_$PointsInfoImpl) then,
  ) = __$$PointsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? rawTotalPrice, int? totalPrice});
}

/// @nodoc
class __$$PointsInfoImplCopyWithImpl<$Res>
    extends _$PointsInfoCopyWithImpl<$Res, _$PointsInfoImpl>
    implements _$$PointsInfoImplCopyWith<$Res> {
  __$$PointsInfoImplCopyWithImpl(
    _$PointsInfoImpl _value,
    $Res Function(_$PointsInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PointsInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rawTotalPrice = freezed, Object? totalPrice = freezed}) {
    return _then(
      _$PointsInfoImpl(
        rawTotalPrice: freezed == rawTotalPrice
            ? _value.rawTotalPrice
            : rawTotalPrice // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPrice: freezed == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$PointsInfoImpl implements _PointsInfo {
  _$PointsInfoImpl({this.rawTotalPrice, this.totalPrice});

  factory _$PointsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointsInfoImplFromJson(json);

  @override
  final int? rawTotalPrice;
  @override
  final int? totalPrice;

  @override
  String toString() {
    return 'PointsInfo(rawTotalPrice: $rawTotalPrice, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointsInfoImpl &&
            (identical(other.rawTotalPrice, rawTotalPrice) ||
                other.rawTotalPrice == rawTotalPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rawTotalPrice, totalPrice);

  /// Create a copy of PointsInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PointsInfoImplCopyWith<_$PointsInfoImpl> get copyWith =>
      __$$PointsInfoImplCopyWithImpl<_$PointsInfoImpl>(this, _$identity);
}

abstract class _PointsInfo implements PointsInfo {
  factory _PointsInfo({final int? rawTotalPrice, final int? totalPrice}) =
      _$PointsInfoImpl;

  factory _PointsInfo.fromJson(Map<String, dynamic> json) =
      _$PointsInfoImpl.fromJson;

  @override
  int? get rawTotalPrice;
  @override
  int? get totalPrice;

  /// Create a copy of PointsInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PointsInfoImplCopyWith<_$PointsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
