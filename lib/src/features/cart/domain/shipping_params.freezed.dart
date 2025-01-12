// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingParams _$ShippingParamsFromJson(Map<String, dynamic> json) {
  return _ShippingParams.fromJson(json);
}

/// @nodoc
mixin _$ShippingParams {
  int? get minItemsInBox => throw _privateConstructorUsedError;
  int? get maxItemsInBox => throw _privateConstructorUsedError;
  int? get boxLength => throw _privateConstructorUsedError;
  int? get boxWidth => throw _privateConstructorUsedError;
  int? get boxHeight => throw _privateConstructorUsedError;

  /// Create a copy of ShippingParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingParamsCopyWith<ShippingParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingParamsCopyWith<$Res> {
  factory $ShippingParamsCopyWith(
          ShippingParams value, $Res Function(ShippingParams) then) =
      _$ShippingParamsCopyWithImpl<$Res, ShippingParams>;
  @useResult
  $Res call(
      {int? minItemsInBox,
      int? maxItemsInBox,
      int? boxLength,
      int? boxWidth,
      int? boxHeight});
}

/// @nodoc
class _$ShippingParamsCopyWithImpl<$Res, $Val extends ShippingParams>
    implements $ShippingParamsCopyWith<$Res> {
  _$ShippingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minItemsInBox = freezed,
    Object? maxItemsInBox = freezed,
    Object? boxLength = freezed,
    Object? boxWidth = freezed,
    Object? boxHeight = freezed,
  }) {
    return _then(_value.copyWith(
      minItemsInBox: freezed == minItemsInBox
          ? _value.minItemsInBox
          : minItemsInBox // ignore: cast_nullable_to_non_nullable
              as int?,
      maxItemsInBox: freezed == maxItemsInBox
          ? _value.maxItemsInBox
          : maxItemsInBox // ignore: cast_nullable_to_non_nullable
              as int?,
      boxLength: freezed == boxLength
          ? _value.boxLength
          : boxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      boxWidth: freezed == boxWidth
          ? _value.boxWidth
          : boxWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      boxHeight: freezed == boxHeight
          ? _value.boxHeight
          : boxHeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingParamsImplCopyWith<$Res>
    implements $ShippingParamsCopyWith<$Res> {
  factory _$$ShippingParamsImplCopyWith(_$ShippingParamsImpl value,
          $Res Function(_$ShippingParamsImpl) then) =
      __$$ShippingParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? minItemsInBox,
      int? maxItemsInBox,
      int? boxLength,
      int? boxWidth,
      int? boxHeight});
}

/// @nodoc
class __$$ShippingParamsImplCopyWithImpl<$Res>
    extends _$ShippingParamsCopyWithImpl<$Res, _$ShippingParamsImpl>
    implements _$$ShippingParamsImplCopyWith<$Res> {
  __$$ShippingParamsImplCopyWithImpl(
      _$ShippingParamsImpl _value, $Res Function(_$ShippingParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minItemsInBox = freezed,
    Object? maxItemsInBox = freezed,
    Object? boxLength = freezed,
    Object? boxWidth = freezed,
    Object? boxHeight = freezed,
  }) {
    return _then(_$ShippingParamsImpl(
      minItemsInBox: freezed == minItemsInBox
          ? _value.minItemsInBox
          : minItemsInBox // ignore: cast_nullable_to_non_nullable
              as int?,
      maxItemsInBox: freezed == maxItemsInBox
          ? _value.maxItemsInBox
          : maxItemsInBox // ignore: cast_nullable_to_non_nullable
              as int?,
      boxLength: freezed == boxLength
          ? _value.boxLength
          : boxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      boxWidth: freezed == boxWidth
          ? _value.boxWidth
          : boxWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      boxHeight: freezed == boxHeight
          ? _value.boxHeight
          : boxHeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ShippingParamsImpl implements _ShippingParams {
  _$ShippingParamsImpl(
      {this.minItemsInBox,
      this.maxItemsInBox,
      this.boxLength,
      this.boxWidth,
      this.boxHeight});

  factory _$ShippingParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingParamsImplFromJson(json);

  @override
  final int? minItemsInBox;
  @override
  final int? maxItemsInBox;
  @override
  final int? boxLength;
  @override
  final int? boxWidth;
  @override
  final int? boxHeight;

  @override
  String toString() {
    return 'ShippingParams(minItemsInBox: $minItemsInBox, maxItemsInBox: $maxItemsInBox, boxLength: $boxLength, boxWidth: $boxWidth, boxHeight: $boxHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingParamsImpl &&
            (identical(other.minItemsInBox, minItemsInBox) ||
                other.minItemsInBox == minItemsInBox) &&
            (identical(other.maxItemsInBox, maxItemsInBox) ||
                other.maxItemsInBox == maxItemsInBox) &&
            (identical(other.boxLength, boxLength) ||
                other.boxLength == boxLength) &&
            (identical(other.boxWidth, boxWidth) ||
                other.boxWidth == boxWidth) &&
            (identical(other.boxHeight, boxHeight) ||
                other.boxHeight == boxHeight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minItemsInBox, maxItemsInBox,
      boxLength, boxWidth, boxHeight);

  /// Create a copy of ShippingParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingParamsImplCopyWith<_$ShippingParamsImpl> get copyWith =>
      __$$ShippingParamsImplCopyWithImpl<_$ShippingParamsImpl>(
          this, _$identity);
}

abstract class _ShippingParams implements ShippingParams {
  factory _ShippingParams(
      {final int? minItemsInBox,
      final int? maxItemsInBox,
      final int? boxLength,
      final int? boxWidth,
      final int? boxHeight}) = _$ShippingParamsImpl;

  factory _ShippingParams.fromJson(Map<String, dynamic> json) =
      _$ShippingParamsImpl.fromJson;

  @override
  int? get minItemsInBox;
  @override
  int? get maxItemsInBox;
  @override
  int? get boxLength;
  @override
  int? get boxWidth;
  @override
  int? get boxHeight;

  /// Create a copy of ShippingParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingParamsImplCopyWith<_$ShippingParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
