// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductOption _$ProductOptionFromJson(Map<String, dynamic> json) {
  return _ProductOption.fromJson(json);
}

/// @nodoc
mixin _$ProductOption {
  dynamic get optionId => throw _privateConstructorUsedError;
  dynamic get optionType => throw _privateConstructorUsedError;
  String? get optionName => throw _privateConstructorUsedError;
  String? get optionTypeName => throw _privateConstructorUsedError;
  dynamic get selectedVariant => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  /// Create a copy of ProductOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductOptionCopyWith<ProductOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOptionCopyWith<$Res> {
  factory $ProductOptionCopyWith(
          ProductOption value, $Res Function(ProductOption) then) =
      _$ProductOptionCopyWithImpl<$Res, ProductOption>;
  @useResult
  $Res call(
      {dynamic optionId,
      dynamic optionType,
      String? optionName,
      String? optionTypeName,
      dynamic selectedVariant,
      String? value});
}

/// @nodoc
class _$ProductOptionCopyWithImpl<$Res, $Val extends ProductOption>
    implements $ProductOptionCopyWith<$Res> {
  _$ProductOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionId = freezed,
    Object? optionType = freezed,
    Object? optionName = freezed,
    Object? optionTypeName = freezed,
    Object? selectedVariant = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      optionId: freezed == optionId
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      optionType: freezed == optionType
          ? _value.optionType
          : optionType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      optionName: freezed == optionName
          ? _value.optionName
          : optionName // ignore: cast_nullable_to_non_nullable
              as String?,
      optionTypeName: freezed == optionTypeName
          ? _value.optionTypeName
          : optionTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedVariant: freezed == selectedVariant
          ? _value.selectedVariant
          : selectedVariant // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductOptionImplCopyWith<$Res>
    implements $ProductOptionCopyWith<$Res> {
  factory _$$ProductOptionImplCopyWith(
          _$ProductOptionImpl value, $Res Function(_$ProductOptionImpl) then) =
      __$$ProductOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic optionId,
      dynamic optionType,
      String? optionName,
      String? optionTypeName,
      dynamic selectedVariant,
      String? value});
}

/// @nodoc
class __$$ProductOptionImplCopyWithImpl<$Res>
    extends _$ProductOptionCopyWithImpl<$Res, _$ProductOptionImpl>
    implements _$$ProductOptionImplCopyWith<$Res> {
  __$$ProductOptionImplCopyWithImpl(
      _$ProductOptionImpl _value, $Res Function(_$ProductOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionId = freezed,
    Object? optionType = freezed,
    Object? optionName = freezed,
    Object? optionTypeName = freezed,
    Object? selectedVariant = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ProductOptionImpl(
      optionId: freezed == optionId
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      optionType: freezed == optionType
          ? _value.optionType
          : optionType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      optionName: freezed == optionName
          ? _value.optionName
          : optionName // ignore: cast_nullable_to_non_nullable
              as String?,
      optionTypeName: freezed == optionTypeName
          ? _value.optionTypeName
          : optionTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedVariant: freezed == selectedVariant
          ? _value.selectedVariant
          : selectedVariant // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ProductOptionImpl implements _ProductOption {
  _$ProductOptionImpl(
      {this.optionId,
      this.optionType,
      this.optionName,
      this.optionTypeName,
      this.selectedVariant,
      this.value});

  factory _$ProductOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductOptionImplFromJson(json);

  @override
  final dynamic optionId;
  @override
  final dynamic optionType;
  @override
  final String? optionName;
  @override
  final String? optionTypeName;
  @override
  final dynamic selectedVariant;
  @override
  final String? value;

  @override
  String toString() {
    return 'ProductOption(optionId: $optionId, optionType: $optionType, optionName: $optionName, optionTypeName: $optionTypeName, selectedVariant: $selectedVariant, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOptionImpl &&
            const DeepCollectionEquality().equals(other.optionId, optionId) &&
            const DeepCollectionEquality()
                .equals(other.optionType, optionType) &&
            (identical(other.optionName, optionName) ||
                other.optionName == optionName) &&
            (identical(other.optionTypeName, optionTypeName) ||
                other.optionTypeName == optionTypeName) &&
            const DeepCollectionEquality()
                .equals(other.selectedVariant, selectedVariant) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(optionId),
      const DeepCollectionEquality().hash(optionType),
      optionName,
      optionTypeName,
      const DeepCollectionEquality().hash(selectedVariant),
      value);

  /// Create a copy of ProductOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOptionImplCopyWith<_$ProductOptionImpl> get copyWith =>
      __$$ProductOptionImplCopyWithImpl<_$ProductOptionImpl>(this, _$identity);
}

abstract class _ProductOption implements ProductOption {
  factory _ProductOption(
      {final dynamic optionId,
      final dynamic optionType,
      final String? optionName,
      final String? optionTypeName,
      final dynamic selectedVariant,
      final String? value}) = _$ProductOptionImpl;

  factory _ProductOption.fromJson(Map<String, dynamic> json) =
      _$ProductOptionImpl.fromJson;

  @override
  dynamic get optionId;
  @override
  dynamic get optionType;
  @override
  String? get optionName;
  @override
  String? get optionTypeName;
  @override
  dynamic get selectedVariant;
  @override
  String? get value;

  /// Create a copy of ProductOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductOptionImplCopyWith<_$ProductOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
