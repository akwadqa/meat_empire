// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
mixin _$Language {
  String get langId => throw _privateConstructorUsedError;
  String get langCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  dynamic get direction => throw _privateConstructorUsedError;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res, Language>;
  @useResult
  $Res call({
    String langId,
    String langCode,
    String name,
    String countryCode,
    dynamic direction,
  });
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res, $Val extends Language>
    implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langId = null,
    Object? langCode = null,
    Object? name = null,
    Object? countryCode = null,
    Object? direction = freezed,
  }) {
    return _then(
      _value.copyWith(
            langId: null == langId
                ? _value.langId
                : langId // ignore: cast_nullable_to_non_nullable
                      as String,
            langCode: null == langCode
                ? _value.langCode
                : langCode // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            countryCode: null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            direction: freezed == direction
                ? _value.direction
                : direction // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LanguageImplCopyWith<$Res>
    implements $LanguageCopyWith<$Res> {
  factory _$$LanguageImplCopyWith(
    _$LanguageImpl value,
    $Res Function(_$LanguageImpl) then,
  ) = __$$LanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String langId,
    String langCode,
    String name,
    String countryCode,
    dynamic direction,
  });
}

/// @nodoc
class __$$LanguageImplCopyWithImpl<$Res>
    extends _$LanguageCopyWithImpl<$Res, _$LanguageImpl>
    implements _$$LanguageImplCopyWith<$Res> {
  __$$LanguageImplCopyWithImpl(
    _$LanguageImpl _value,
    $Res Function(_$LanguageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langId = null,
    Object? langCode = null,
    Object? name = null,
    Object? countryCode = null,
    Object? direction = freezed,
  }) {
    return _then(
      _$LanguageImpl(
        langId: null == langId
            ? _value.langId
            : langId // ignore: cast_nullable_to_non_nullable
                  as String,
        langCode: null == langCode
            ? _value.langCode
            : langCode // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        countryCode: null == countryCode
            ? _value.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        direction: freezed == direction
            ? _value.direction
            : direction // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$LanguageImpl implements _Language {
  _$LanguageImpl({
    required this.langId,
    required this.langCode,
    required this.name,
    required this.countryCode,
    required this.direction,
  });

  factory _$LanguageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageImplFromJson(json);

  @override
  final String langId;
  @override
  final String langCode;
  @override
  final String name;
  @override
  final String countryCode;
  @override
  final dynamic direction;

  @override
  String toString() {
    return 'Language(langId: $langId, langCode: $langCode, name: $name, countryCode: $countryCode, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageImpl &&
            (identical(other.langId, langId) || other.langId == langId) &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            const DeepCollectionEquality().equals(other.direction, direction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    langId,
    langCode,
    name,
    countryCode,
    const DeepCollectionEquality().hash(direction),
  );

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      __$$LanguageImplCopyWithImpl<_$LanguageImpl>(this, _$identity);
}

abstract class _Language implements Language {
  factory _Language({
    required final String langId,
    required final String langCode,
    required final String name,
    required final String countryCode,
    required final dynamic direction,
  }) = _$LanguageImpl;

  factory _Language.fromJson(Map<String, dynamic> json) =
      _$LanguageImpl.fromJson;

  @override
  String get langId;
  @override
  String get langCode;
  @override
  String get name;
  @override
  String get countryCode;
  @override
  dynamic get direction;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
