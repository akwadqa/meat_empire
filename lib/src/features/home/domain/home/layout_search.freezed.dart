// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LayoutSearch {

 int get page; int get itemsPerPage; String get status; int get storefrontId; String get sortOrder; String get sortBy; String get sortOrderRev;
/// Create a copy of LayoutSearch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LayoutSearchCopyWith<LayoutSearch> get copyWith => _$LayoutSearchCopyWithImpl<LayoutSearch>(this as LayoutSearch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LayoutSearch&&(identical(other.page, page) || other.page == page)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.status, status) || other.status == status)&&(identical(other.storefrontId, storefrontId) || other.storefrontId == storefrontId)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrderRev, sortOrderRev) || other.sortOrderRev == sortOrderRev));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,itemsPerPage,status,storefrontId,sortOrder,sortBy,sortOrderRev);

@override
String toString() {
  return 'LayoutSearch(page: $page, itemsPerPage: $itemsPerPage, status: $status, storefrontId: $storefrontId, sortOrder: $sortOrder, sortBy: $sortBy, sortOrderRev: $sortOrderRev)';
}


}

/// @nodoc
abstract mixin class $LayoutSearchCopyWith<$Res>  {
  factory $LayoutSearchCopyWith(LayoutSearch value, $Res Function(LayoutSearch) _then) = _$LayoutSearchCopyWithImpl;
@useResult
$Res call({
 int page, int itemsPerPage, String status, int storefrontId, String sortOrder, String sortBy, String sortOrderRev
});




}
/// @nodoc
class _$LayoutSearchCopyWithImpl<$Res>
    implements $LayoutSearchCopyWith<$Res> {
  _$LayoutSearchCopyWithImpl(this._self, this._then);

  final LayoutSearch _self;
  final $Res Function(LayoutSearch) _then;

/// Create a copy of LayoutSearch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? itemsPerPage = null,Object? status = null,Object? storefrontId = null,Object? sortOrder = null,Object? sortBy = null,Object? sortOrderRev = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storefrontId: null == storefrontId ? _self.storefrontId : storefrontId // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,sortOrderRev: null == sortOrderRev ? _self.sortOrderRev : sortOrderRev // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LayoutSearch].
extension LayoutSearchPatterns on LayoutSearch {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LayoutSearch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LayoutSearch() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LayoutSearch value)  $default,){
final _that = this;
switch (_that) {
case _LayoutSearch():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LayoutSearch value)?  $default,){
final _that = this;
switch (_that) {
case _LayoutSearch() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int itemsPerPage,  String status,  int storefrontId,  String sortOrder,  String sortBy,  String sortOrderRev)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LayoutSearch() when $default != null:
return $default(_that.page,_that.itemsPerPage,_that.status,_that.storefrontId,_that.sortOrder,_that.sortBy,_that.sortOrderRev);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int itemsPerPage,  String status,  int storefrontId,  String sortOrder,  String sortBy,  String sortOrderRev)  $default,) {final _that = this;
switch (_that) {
case _LayoutSearch():
return $default(_that.page,_that.itemsPerPage,_that.status,_that.storefrontId,_that.sortOrder,_that.sortBy,_that.sortOrderRev);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int itemsPerPage,  String status,  int storefrontId,  String sortOrder,  String sortBy,  String sortOrderRev)?  $default,) {final _that = this;
switch (_that) {
case _LayoutSearch() when $default != null:
return $default(_that.page,_that.itemsPerPage,_that.status,_that.storefrontId,_that.sortOrder,_that.sortBy,_that.sortOrderRev);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _LayoutSearch implements LayoutSearch {
   _LayoutSearch({required this.page, required this.itemsPerPage, required this.status, required this.storefrontId, required this.sortOrder, required this.sortBy, required this.sortOrderRev});
  factory _LayoutSearch.fromJson(Map<String, dynamic> json) => _$LayoutSearchFromJson(json);

@override final  int page;
@override final  int itemsPerPage;
@override final  String status;
@override final  int storefrontId;
@override final  String sortOrder;
@override final  String sortBy;
@override final  String sortOrderRev;

/// Create a copy of LayoutSearch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LayoutSearchCopyWith<_LayoutSearch> get copyWith => __$LayoutSearchCopyWithImpl<_LayoutSearch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LayoutSearch&&(identical(other.page, page) || other.page == page)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.status, status) || other.status == status)&&(identical(other.storefrontId, storefrontId) || other.storefrontId == storefrontId)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrderRev, sortOrderRev) || other.sortOrderRev == sortOrderRev));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,itemsPerPage,status,storefrontId,sortOrder,sortBy,sortOrderRev);

@override
String toString() {
  return 'LayoutSearch(page: $page, itemsPerPage: $itemsPerPage, status: $status, storefrontId: $storefrontId, sortOrder: $sortOrder, sortBy: $sortBy, sortOrderRev: $sortOrderRev)';
}


}

/// @nodoc
abstract mixin class _$LayoutSearchCopyWith<$Res> implements $LayoutSearchCopyWith<$Res> {
  factory _$LayoutSearchCopyWith(_LayoutSearch value, $Res Function(_LayoutSearch) _then) = __$LayoutSearchCopyWithImpl;
@override @useResult
$Res call({
 int page, int itemsPerPage, String status, int storefrontId, String sortOrder, String sortBy, String sortOrderRev
});




}
/// @nodoc
class __$LayoutSearchCopyWithImpl<$Res>
    implements _$LayoutSearchCopyWith<$Res> {
  __$LayoutSearchCopyWithImpl(this._self, this._then);

  final _LayoutSearch _self;
  final $Res Function(_LayoutSearch) _then;

/// Create a copy of LayoutSearch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? itemsPerPage = null,Object? status = null,Object? storefrontId = null,Object? sortOrder = null,Object? sortBy = null,Object? sortOrderRev = null,}) {
  return _then(_LayoutSearch(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storefrontId: null == storefrontId ? _self.storefrontId : storefrontId // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,sortOrderRev: null == sortOrderRev ? _self.sortOrderRev : sortOrderRev // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
