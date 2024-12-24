// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return _Variant.fromJson(json);
}

/// @nodoc
mixin _$Variant {
  String get variantId => throw _privateConstructorUsedError;
  String get modifier => throw _privateConstructorUsedError;
  String get variantName => throw _privateConstructorUsedError;
  String get modifierType => throw _privateConstructorUsedError;
  String get formatModifier => throw _privateConstructorUsedError;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res, Variant>;
  @useResult
  $Res call(
      {String variantId,
      String modifier,
      String variantName,
      String modifierType,
      String formatModifier});
}

/// @nodoc
class _$VariantCopyWithImpl<$Res, $Val extends Variant>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variantId = null,
    Object? modifier = null,
    Object? variantName = null,
    Object? modifierType = null,
    Object? formatModifier = null,
  }) {
    return _then(_value.copyWith(
      variantId: null == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String,
      modifier: null == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as String,
      variantName: null == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String,
      modifierType: null == modifierType
          ? _value.modifierType
          : modifierType // ignore: cast_nullable_to_non_nullable
              as String,
      formatModifier: null == formatModifier
          ? _value.formatModifier
          : formatModifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantImplCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$$VariantImplCopyWith(
          _$VariantImpl value, $Res Function(_$VariantImpl) then) =
      __$$VariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String variantId,
      String modifier,
      String variantName,
      String modifierType,
      String formatModifier});
}

/// @nodoc
class __$$VariantImplCopyWithImpl<$Res>
    extends _$VariantCopyWithImpl<$Res, _$VariantImpl>
    implements _$$VariantImplCopyWith<$Res> {
  __$$VariantImplCopyWithImpl(
      _$VariantImpl _value, $Res Function(_$VariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variantId = null,
    Object? modifier = null,
    Object? variantName = null,
    Object? modifierType = null,
    Object? formatModifier = null,
  }) {
    return _then(_$VariantImpl(
      variantId: null == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String,
      modifier: null == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as String,
      variantName: null == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String,
      modifierType: null == modifierType
          ? _value.modifierType
          : modifierType // ignore: cast_nullable_to_non_nullable
              as String,
      formatModifier: null == formatModifier
          ? _value.formatModifier
          : formatModifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$VariantImpl implements _Variant {
  _$VariantImpl(
      {required this.variantId,
      required this.modifier,
      required this.variantName,
      required this.modifierType,
      required this.formatModifier});

  factory _$VariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantImplFromJson(json);

  @override
  final String variantId;
  @override
  final String modifier;
  @override
  final String variantName;
  @override
  final String modifierType;
  @override
  final String formatModifier;

  @override
  String toString() {
    return 'Variant(variantId: $variantId, modifier: $modifier, variantName: $variantName, modifierType: $modifierType, formatModifier: $formatModifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantImpl &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.modifier, modifier) ||
                other.modifier == modifier) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.modifierType, modifierType) ||
                other.modifierType == modifierType) &&
            (identical(other.formatModifier, formatModifier) ||
                other.formatModifier == formatModifier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, variantId, modifier, variantName,
      modifierType, formatModifier);

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      __$$VariantImplCopyWithImpl<_$VariantImpl>(this, _$identity);
}

abstract class _Variant implements Variant {
  factory _Variant(
      {required final String variantId,
      required final String modifier,
      required final String variantName,
      required final String modifierType,
      required final String formatModifier}) = _$VariantImpl;

  factory _Variant.fromJson(Map<String, dynamic> json) = _$VariantImpl.fromJson;

  @override
  String get variantId;
  @override
  String get modifier;
  @override
  String get variantName;
  @override
  String get modifierType;
  @override
  String get formatModifier;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
