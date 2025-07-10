// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Page _$PageFromJson(Map<String, dynamic> json) {
  return _Page.fromJson(json);
}

/// @nodoc
mixin _$Page {
  String get id => throw _privateConstructorUsedError;
  String get choosePage => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get langCode => throw _privateConstructorUsedError;
  String get pageUrl => throw _privateConstructorUsedError;

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageCopyWith<Page> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCopyWith<$Res> {
  factory $PageCopyWith(Page value, $Res Function(Page) then) =
      _$PageCopyWithImpl<$Res, Page>;
  @useResult
  $Res call({
    String id,
    String choosePage,
    String position,
    String status,
    String title,
    String langCode,
    String pageUrl,
  });
}

/// @nodoc
class _$PageCopyWithImpl<$Res, $Val extends Page>
    implements $PageCopyWith<$Res> {
  _$PageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? choosePage = null,
    Object? position = null,
    Object? status = null,
    Object? title = null,
    Object? langCode = null,
    Object? pageUrl = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            choosePage: null == choosePage
                ? _value.choosePage
                : choosePage // ignore: cast_nullable_to_non_nullable
                      as String,
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            langCode: null == langCode
                ? _value.langCode
                : langCode // ignore: cast_nullable_to_non_nullable
                      as String,
            pageUrl: null == pageUrl
                ? _value.pageUrl
                : pageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PageImplCopyWith<$Res> implements $PageCopyWith<$Res> {
  factory _$$PageImplCopyWith(
    _$PageImpl value,
    $Res Function(_$PageImpl) then,
  ) = __$$PageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String choosePage,
    String position,
    String status,
    String title,
    String langCode,
    String pageUrl,
  });
}

/// @nodoc
class __$$PageImplCopyWithImpl<$Res>
    extends _$PageCopyWithImpl<$Res, _$PageImpl>
    implements _$$PageImplCopyWith<$Res> {
  __$$PageImplCopyWithImpl(_$PageImpl _value, $Res Function(_$PageImpl) _then)
    : super(_value, _then);

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? choosePage = null,
    Object? position = null,
    Object? status = null,
    Object? title = null,
    Object? langCode = null,
    Object? pageUrl = null,
  }) {
    return _then(
      _$PageImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        choosePage: null == choosePage
            ? _value.choosePage
            : choosePage // ignore: cast_nullable_to_non_nullable
                  as String,
        position: null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        langCode: null == langCode
            ? _value.langCode
            : langCode // ignore: cast_nullable_to_non_nullable
                  as String,
        pageUrl: null == pageUrl
            ? _value.pageUrl
            : pageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$PageImpl implements _Page {
  _$PageImpl({
    required this.id,
    required this.choosePage,
    required this.position,
    required this.status,
    required this.title,
    required this.langCode,
    required this.pageUrl,
  });

  factory _$PageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageImplFromJson(json);

  @override
  final String id;
  @override
  final String choosePage;
  @override
  final String position;
  @override
  final String status;
  @override
  final String title;
  @override
  final String langCode;
  @override
  final String pageUrl;

  @override
  String toString() {
    return 'Page(id: $id, choosePage: $choosePage, position: $position, status: $status, title: $title, langCode: $langCode, pageUrl: $pageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.choosePage, choosePage) ||
                other.choosePage == choosePage) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode) &&
            (identical(other.pageUrl, pageUrl) || other.pageUrl == pageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    choosePage,
    position,
    status,
    title,
    langCode,
    pageUrl,
  );

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageImplCopyWith<_$PageImpl> get copyWith =>
      __$$PageImplCopyWithImpl<_$PageImpl>(this, _$identity);
}

abstract class _Page implements Page {
  factory _Page({
    required final String id,
    required final String choosePage,
    required final String position,
    required final String status,
    required final String title,
    required final String langCode,
    required final String pageUrl,
  }) = _$PageImpl;

  factory _Page.fromJson(Map<String, dynamic> json) = _$PageImpl.fromJson;

  @override
  String get id;
  @override
  String get choosePage;
  @override
  String get position;
  @override
  String get status;
  @override
  String get title;
  @override
  String get langCode;
  @override
  String get pageUrl;

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageImplCopyWith<_$PageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
