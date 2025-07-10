// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SelectedOption _$SelectedOptionFromJson(Map<String, dynamic> json) {
  return _SelectedOption.fromJson(json);
}

/// @nodoc
mixin _$SelectedOption {
  int get optionId => throw _privateConstructorUsedError;
  int get variantId => throw _privateConstructorUsedError;

  /// Serializes this SelectedOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectedOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedOptionCopyWith<SelectedOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedOptionCopyWith<$Res> {
  factory $SelectedOptionCopyWith(
    SelectedOption value,
    $Res Function(SelectedOption) then,
  ) = _$SelectedOptionCopyWithImpl<$Res, SelectedOption>;
  @useResult
  $Res call({int optionId, int variantId});
}

/// @nodoc
class _$SelectedOptionCopyWithImpl<$Res, $Val extends SelectedOption>
    implements $SelectedOptionCopyWith<$Res> {
  _$SelectedOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? optionId = null, Object? variantId = null}) {
    return _then(
      _value.copyWith(
            optionId: null == optionId
                ? _value.optionId
                : optionId // ignore: cast_nullable_to_non_nullable
                      as int,
            variantId: null == variantId
                ? _value.variantId
                : variantId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SelectedOptionImplCopyWith<$Res>
    implements $SelectedOptionCopyWith<$Res> {
  factory _$$SelectedOptionImplCopyWith(
    _$SelectedOptionImpl value,
    $Res Function(_$SelectedOptionImpl) then,
  ) = __$$SelectedOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int optionId, int variantId});
}

/// @nodoc
class __$$SelectedOptionImplCopyWithImpl<$Res>
    extends _$SelectedOptionCopyWithImpl<$Res, _$SelectedOptionImpl>
    implements _$$SelectedOptionImplCopyWith<$Res> {
  __$$SelectedOptionImplCopyWithImpl(
    _$SelectedOptionImpl _value,
    $Res Function(_$SelectedOptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SelectedOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? optionId = null, Object? variantId = null}) {
    return _then(
      _$SelectedOptionImpl(
        optionId: null == optionId
            ? _value.optionId
            : optionId // ignore: cast_nullable_to_non_nullable
                  as int,
        variantId: null == variantId
            ? _value.variantId
            : variantId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedOptionImpl implements _SelectedOption {
  _$SelectedOptionImpl({required this.optionId, required this.variantId});

  factory _$SelectedOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedOptionImplFromJson(json);

  @override
  final int optionId;
  @override
  final int variantId;

  @override
  String toString() {
    return 'SelectedOption(optionId: $optionId, variantId: $variantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedOptionImpl &&
            (identical(other.optionId, optionId) ||
                other.optionId == optionId) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, optionId, variantId);

  /// Create a copy of SelectedOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedOptionImplCopyWith<_$SelectedOptionImpl> get copyWith =>
      __$$SelectedOptionImplCopyWithImpl<_$SelectedOptionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedOptionImplToJson(this);
  }
}

abstract class _SelectedOption implements SelectedOption {
  factory _SelectedOption({
    required final int optionId,
    required final int variantId,
  }) = _$SelectedOptionImpl;

  factory _SelectedOption.fromJson(Map<String, dynamic> json) =
      _$SelectedOptionImpl.fromJson;

  @override
  int get optionId;
  @override
  int get variantId;

  /// Create a copy of SelectedOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedOptionImplCopyWith<_$SelectedOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
