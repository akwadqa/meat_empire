// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'with_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WithImages _$WithImagesFromJson(Map<String, dynamic> json) {
  return _WithImages.fromJson(json);
}

/// @nodoc
mixin _$WithImages {
  String get param => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  /// Create a copy of WithImages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WithImagesCopyWith<WithImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithImagesCopyWith<$Res> {
  factory $WithImagesCopyWith(
          WithImages value, $Res Function(WithImages) then) =
      _$WithImagesCopyWithImpl<$Res, WithImages>;
  @useResult
  $Res call({String param, String name, bool selected});
}

/// @nodoc
class _$WithImagesCopyWithImpl<$Res, $Val extends WithImages>
    implements $WithImagesCopyWith<$Res> {
  _$WithImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WithImages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
    Object? name = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithImagesImplCopyWith<$Res>
    implements $WithImagesCopyWith<$Res> {
  factory _$$WithImagesImplCopyWith(
          _$WithImagesImpl value, $Res Function(_$WithImagesImpl) then) =
      __$$WithImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String param, String name, bool selected});
}

/// @nodoc
class __$$WithImagesImplCopyWithImpl<$Res>
    extends _$WithImagesCopyWithImpl<$Res, _$WithImagesImpl>
    implements _$$WithImagesImplCopyWith<$Res> {
  __$$WithImagesImplCopyWithImpl(
      _$WithImagesImpl _value, $Res Function(_$WithImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of WithImages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
    Object? name = null,
    Object? selected = null,
  }) {
    return _then(_$WithImagesImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$WithImagesImpl implements _WithImages {
  _$WithImagesImpl(
      {required this.param, required this.name, required this.selected});

  factory _$WithImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithImagesImplFromJson(json);

  @override
  final String param;
  @override
  final String name;
  @override
  final bool selected;

  @override
  String toString() {
    return 'WithImages(param: $param, name: $name, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithImagesImpl &&
            (identical(other.param, param) || other.param == param) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, param, name, selected);

  /// Create a copy of WithImages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithImagesImplCopyWith<_$WithImagesImpl> get copyWith =>
      __$$WithImagesImplCopyWithImpl<_$WithImagesImpl>(this, _$identity);
}

abstract class _WithImages implements WithImages {
  factory _WithImages(
      {required final String param,
      required final String name,
      required final bool selected}) = _$WithImagesImpl;

  factory _WithImages.fromJson(Map<String, dynamic> json) =
      _$WithImagesImpl.fromJson;

  @override
  String get param;
  @override
  String get name;
  @override
  bool get selected;

  /// Create a copy of WithImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithImagesImplCopyWith<_$WithImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
