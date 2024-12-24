// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LayoutSearch _$LayoutSearchFromJson(Map<String, dynamic> json) {
  return _LayoutSearch.fromJson(json);
}

/// @nodoc
mixin _$LayoutSearch {
  int get page => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get storefrontId => throw _privateConstructorUsedError;
  String get sortOrder => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  String get sortOrderRev => throw _privateConstructorUsedError;

  /// Create a copy of LayoutSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LayoutSearchCopyWith<LayoutSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutSearchCopyWith<$Res> {
  factory $LayoutSearchCopyWith(
          LayoutSearch value, $Res Function(LayoutSearch) then) =
      _$LayoutSearchCopyWithImpl<$Res, LayoutSearch>;
  @useResult
  $Res call(
      {int page,
      int itemsPerPage,
      String status,
      int storefrontId,
      String sortOrder,
      String sortBy,
      String sortOrderRev});
}

/// @nodoc
class _$LayoutSearchCopyWithImpl<$Res, $Val extends LayoutSearch>
    implements $LayoutSearchCopyWith<$Res> {
  _$LayoutSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LayoutSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? itemsPerPage = null,
    Object? status = null,
    Object? storefrontId = null,
    Object? sortOrder = null,
    Object? sortBy = null,
    Object? sortOrderRev = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      storefrontId: null == storefrontId
          ? _value.storefrontId
          : storefrontId // ignore: cast_nullable_to_non_nullable
              as int,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrderRev: null == sortOrderRev
          ? _value.sortOrderRev
          : sortOrderRev // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LayoutSearchImplCopyWith<$Res>
    implements $LayoutSearchCopyWith<$Res> {
  factory _$$LayoutSearchImplCopyWith(
          _$LayoutSearchImpl value, $Res Function(_$LayoutSearchImpl) then) =
      __$$LayoutSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int itemsPerPage,
      String status,
      int storefrontId,
      String sortOrder,
      String sortBy,
      String sortOrderRev});
}

/// @nodoc
class __$$LayoutSearchImplCopyWithImpl<$Res>
    extends _$LayoutSearchCopyWithImpl<$Res, _$LayoutSearchImpl>
    implements _$$LayoutSearchImplCopyWith<$Res> {
  __$$LayoutSearchImplCopyWithImpl(
      _$LayoutSearchImpl _value, $Res Function(_$LayoutSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of LayoutSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? itemsPerPage = null,
    Object? status = null,
    Object? storefrontId = null,
    Object? sortOrder = null,
    Object? sortBy = null,
    Object? sortOrderRev = null,
  }) {
    return _then(_$LayoutSearchImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      storefrontId: null == storefrontId
          ? _value.storefrontId
          : storefrontId // ignore: cast_nullable_to_non_nullable
              as int,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrderRev: null == sortOrderRev
          ? _value.sortOrderRev
          : sortOrderRev // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$LayoutSearchImpl implements _LayoutSearch {
  _$LayoutSearchImpl(
      {required this.page,
      required this.itemsPerPage,
      required this.status,
      required this.storefrontId,
      required this.sortOrder,
      required this.sortBy,
      required this.sortOrderRev});

  factory _$LayoutSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$LayoutSearchImplFromJson(json);

  @override
  final int page;
  @override
  final int itemsPerPage;
  @override
  final String status;
  @override
  final int storefrontId;
  @override
  final String sortOrder;
  @override
  final String sortBy;
  @override
  final String sortOrderRev;

  @override
  String toString() {
    return 'LayoutSearch(page: $page, itemsPerPage: $itemsPerPage, status: $status, storefrontId: $storefrontId, sortOrder: $sortOrder, sortBy: $sortBy, sortOrderRev: $sortOrderRev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayoutSearchImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.storefrontId, storefrontId) ||
                other.storefrontId == storefrontId) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrderRev, sortOrderRev) ||
                other.sortOrderRev == sortOrderRev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, itemsPerPage, status,
      storefrontId, sortOrder, sortBy, sortOrderRev);

  /// Create a copy of LayoutSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LayoutSearchImplCopyWith<_$LayoutSearchImpl> get copyWith =>
      __$$LayoutSearchImplCopyWithImpl<_$LayoutSearchImpl>(this, _$identity);
}

abstract class _LayoutSearch implements LayoutSearch {
  factory _LayoutSearch(
      {required final int page,
      required final int itemsPerPage,
      required final String status,
      required final int storefrontId,
      required final String sortOrder,
      required final String sortBy,
      required final String sortOrderRev}) = _$LayoutSearchImpl;

  factory _LayoutSearch.fromJson(Map<String, dynamic> json) =
      _$LayoutSearchImpl.fromJson;

  @override
  int get page;
  @override
  int get itemsPerPage;
  @override
  String get status;
  @override
  int get storefrontId;
  @override
  String get sortOrder;
  @override
  String get sortBy;
  @override
  String get sortOrderRev;

  /// Create a copy of LayoutSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LayoutSearchImplCopyWith<_$LayoutSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
