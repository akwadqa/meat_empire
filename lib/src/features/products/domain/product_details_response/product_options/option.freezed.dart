// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
mixin _$Option {
  List<Variant> get variants => throw _privateConstructorUsedError;
  int get optionId => throw _privateConstructorUsedError;
  String get optionType => throw _privateConstructorUsedError;
  String get optionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'required')
  String get isRequired => throw _privateConstructorUsedError;
  bool get inventory => throw _privateConstructorUsedError;
  String get innerHint => throw _privateConstructorUsedError;
  int get textModifier => throw _privateConstructorUsedError;

  /// Create a copy of Option
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res, Option>;
  @useResult
  $Res call({
    List<Variant> variants,
    int optionId,
    String optionType,
    String optionName,
    @JsonKey(name: 'required') String isRequired,
    bool inventory,
    String innerHint,
    int textModifier,
  });
}

/// @nodoc
class _$OptionCopyWithImpl<$Res, $Val extends Option>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Option
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variants = null,
    Object? optionId = null,
    Object? optionType = null,
    Object? optionName = null,
    Object? isRequired = null,
    Object? inventory = null,
    Object? innerHint = null,
    Object? textModifier = null,
  }) {
    return _then(
      _value.copyWith(
            variants: null == variants
                ? _value.variants
                : variants // ignore: cast_nullable_to_non_nullable
                      as List<Variant>,
            optionId: null == optionId
                ? _value.optionId
                : optionId // ignore: cast_nullable_to_non_nullable
                      as int,
            optionType: null == optionType
                ? _value.optionType
                : optionType // ignore: cast_nullable_to_non_nullable
                      as String,
            optionName: null == optionName
                ? _value.optionName
                : optionName // ignore: cast_nullable_to_non_nullable
                      as String,
            isRequired: null == isRequired
                ? _value.isRequired
                : isRequired // ignore: cast_nullable_to_non_nullable
                      as String,
            inventory: null == inventory
                ? _value.inventory
                : inventory // ignore: cast_nullable_to_non_nullable
                      as bool,
            innerHint: null == innerHint
                ? _value.innerHint
                : innerHint // ignore: cast_nullable_to_non_nullable
                      as String,
            textModifier: null == textModifier
                ? _value.textModifier
                : textModifier // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OptionImplCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$$OptionImplCopyWith(
    _$OptionImpl value,
    $Res Function(_$OptionImpl) then,
  ) = __$$OptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Variant> variants,
    int optionId,
    String optionType,
    String optionName,
    @JsonKey(name: 'required') String isRequired,
    bool inventory,
    String innerHint,
    int textModifier,
  });
}

/// @nodoc
class __$$OptionImplCopyWithImpl<$Res>
    extends _$OptionCopyWithImpl<$Res, _$OptionImpl>
    implements _$$OptionImplCopyWith<$Res> {
  __$$OptionImplCopyWithImpl(
    _$OptionImpl _value,
    $Res Function(_$OptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Option
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variants = null,
    Object? optionId = null,
    Object? optionType = null,
    Object? optionName = null,
    Object? isRequired = null,
    Object? inventory = null,
    Object? innerHint = null,
    Object? textModifier = null,
  }) {
    return _then(
      _$OptionImpl(
        variants: null == variants
            ? _value._variants
            : variants // ignore: cast_nullable_to_non_nullable
                  as List<Variant>,
        optionId: null == optionId
            ? _value.optionId
            : optionId // ignore: cast_nullable_to_non_nullable
                  as int,
        optionType: null == optionType
            ? _value.optionType
            : optionType // ignore: cast_nullable_to_non_nullable
                  as String,
        optionName: null == optionName
            ? _value.optionName
            : optionName // ignore: cast_nullable_to_non_nullable
                  as String,
        isRequired: null == isRequired
            ? _value.isRequired
            : isRequired // ignore: cast_nullable_to_non_nullable
                  as String,
        inventory: null == inventory
            ? _value.inventory
            : inventory // ignore: cast_nullable_to_non_nullable
                  as bool,
        innerHint: null == innerHint
            ? _value.innerHint
            : innerHint // ignore: cast_nullable_to_non_nullable
                  as String,
        textModifier: null == textModifier
            ? _value.textModifier
            : textModifier // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$OptionImpl implements _Option {
  _$OptionImpl({
    required final List<Variant> variants,
    required this.optionId,
    required this.optionType,
    required this.optionName,
    @JsonKey(name: 'required') required this.isRequired,
    required this.inventory,
    required this.innerHint,
    required this.textModifier,
  }) : _variants = variants;

  factory _$OptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionImplFromJson(json);

  final List<Variant> _variants;
  @override
  List<Variant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  final int optionId;
  @override
  final String optionType;
  @override
  final String optionName;
  @override
  @JsonKey(name: 'required')
  final String isRequired;
  @override
  final bool inventory;
  @override
  final String innerHint;
  @override
  final int textModifier;

  @override
  String toString() {
    return 'Option(variants: $variants, optionId: $optionId, optionType: $optionType, optionName: $optionName, isRequired: $isRequired, inventory: $inventory, innerHint: $innerHint, textModifier: $textModifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionImpl &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            (identical(other.optionId, optionId) ||
                other.optionId == optionId) &&
            (identical(other.optionType, optionType) ||
                other.optionType == optionType) &&
            (identical(other.optionName, optionName) ||
                other.optionName == optionName) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory) &&
            (identical(other.innerHint, innerHint) ||
                other.innerHint == innerHint) &&
            (identical(other.textModifier, textModifier) ||
                other.textModifier == textModifier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_variants),
    optionId,
    optionType,
    optionName,
    isRequired,
    inventory,
    innerHint,
    textModifier,
  );

  /// Create a copy of Option
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      __$$OptionImplCopyWithImpl<_$OptionImpl>(this, _$identity);
}

abstract class _Option implements Option {
  factory _Option({
    required final List<Variant> variants,
    required final int optionId,
    required final String optionType,
    required final String optionName,
    @JsonKey(name: 'required') required final String isRequired,
    required final bool inventory,
    required final String innerHint,
    required final int textModifier,
  }) = _$OptionImpl;

  factory _Option.fromJson(Map<String, dynamic> json) = _$OptionImpl.fromJson;

  @override
  List<Variant> get variants;
  @override
  int get optionId;
  @override
  String get optionType;
  @override
  String get optionName;
  @override
  @JsonKey(name: 'required')
  String get isRequired;
  @override
  bool get inventory;
  @override
  String get innerHint;
  @override
  int get textModifier;

  /// Create a copy of Option
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
