// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_reviews_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductReviewsSearch {

 int get page; int get itemsPerPage; bool get loadProductData; int get productId; String get status; int get storefrontId; List<String> get availableFilters; dynamic get message; dynamic get comment; dynamic get advantages; dynamic get disadvantages; int get totalItems; String get sortOrder; String get sortBy; String get sortOrderRev; Filtering get filtering;
/// Create a copy of ProductReviewsSearch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewsSearchCopyWith<ProductReviewsSearch> get copyWith => _$ProductReviewsSearchCopyWithImpl<ProductReviewsSearch>(this as ProductReviewsSearch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewsSearch&&(identical(other.page, page) || other.page == page)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.loadProductData, loadProductData) || other.loadProductData == loadProductData)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.status, status) || other.status == status)&&(identical(other.storefrontId, storefrontId) || other.storefrontId == storefrontId)&&const DeepCollectionEquality().equals(other.availableFilters, availableFilters)&&const DeepCollectionEquality().equals(other.message, message)&&const DeepCollectionEquality().equals(other.comment, comment)&&const DeepCollectionEquality().equals(other.advantages, advantages)&&const DeepCollectionEquality().equals(other.disadvantages, disadvantages)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrderRev, sortOrderRev) || other.sortOrderRev == sortOrderRev)&&(identical(other.filtering, filtering) || other.filtering == filtering));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,itemsPerPage,loadProductData,productId,status,storefrontId,const DeepCollectionEquality().hash(availableFilters),const DeepCollectionEquality().hash(message),const DeepCollectionEquality().hash(comment),const DeepCollectionEquality().hash(advantages),const DeepCollectionEquality().hash(disadvantages),totalItems,sortOrder,sortBy,sortOrderRev,filtering);

@override
String toString() {
  return 'ProductReviewsSearch(page: $page, itemsPerPage: $itemsPerPage, loadProductData: $loadProductData, productId: $productId, status: $status, storefrontId: $storefrontId, availableFilters: $availableFilters, message: $message, comment: $comment, advantages: $advantages, disadvantages: $disadvantages, totalItems: $totalItems, sortOrder: $sortOrder, sortBy: $sortBy, sortOrderRev: $sortOrderRev, filtering: $filtering)';
}


}

/// @nodoc
abstract mixin class $ProductReviewsSearchCopyWith<$Res>  {
  factory $ProductReviewsSearchCopyWith(ProductReviewsSearch value, $Res Function(ProductReviewsSearch) _then) = _$ProductReviewsSearchCopyWithImpl;
@useResult
$Res call({
 int page, int itemsPerPage, bool loadProductData, int productId, String status, int storefrontId, List<String> availableFilters, dynamic message, dynamic comment, dynamic advantages, dynamic disadvantages, int totalItems, String sortOrder, String sortBy, String sortOrderRev, Filtering filtering
});


$FilteringCopyWith<$Res> get filtering;

}
/// @nodoc
class _$ProductReviewsSearchCopyWithImpl<$Res>
    implements $ProductReviewsSearchCopyWith<$Res> {
  _$ProductReviewsSearchCopyWithImpl(this._self, this._then);

  final ProductReviewsSearch _self;
  final $Res Function(ProductReviewsSearch) _then;

/// Create a copy of ProductReviewsSearch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? itemsPerPage = null,Object? loadProductData = null,Object? productId = null,Object? status = null,Object? storefrontId = null,Object? availableFilters = null,Object? message = freezed,Object? comment = freezed,Object? advantages = freezed,Object? disadvantages = freezed,Object? totalItems = null,Object? sortOrder = null,Object? sortBy = null,Object? sortOrderRev = null,Object? filtering = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,loadProductData: null == loadProductData ? _self.loadProductData : loadProductData // ignore: cast_nullable_to_non_nullable
as bool,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storefrontId: null == storefrontId ? _self.storefrontId : storefrontId // ignore: cast_nullable_to_non_nullable
as int,availableFilters: null == availableFilters ? _self.availableFilters : availableFilters // ignore: cast_nullable_to_non_nullable
as List<String>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as dynamic,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as dynamic,advantages: freezed == advantages ? _self.advantages : advantages // ignore: cast_nullable_to_non_nullable
as dynamic,disadvantages: freezed == disadvantages ? _self.disadvantages : disadvantages // ignore: cast_nullable_to_non_nullable
as dynamic,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,sortOrderRev: null == sortOrderRev ? _self.sortOrderRev : sortOrderRev // ignore: cast_nullable_to_non_nullable
as String,filtering: null == filtering ? _self.filtering : filtering // ignore: cast_nullable_to_non_nullable
as Filtering,
  ));
}
/// Create a copy of ProductReviewsSearch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FilteringCopyWith<$Res> get filtering {
  
  return $FilteringCopyWith<$Res>(_self.filtering, (value) {
    return _then(_self.copyWith(filtering: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductReviewsSearch].
extension ProductReviewsSearchPatterns on ProductReviewsSearch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewsSearch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewsSearch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewsSearch value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsSearch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewsSearch value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsSearch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int itemsPerPage,  bool loadProductData,  int productId,  String status,  int storefrontId,  List<String> availableFilters,  dynamic message,  dynamic comment,  dynamic advantages,  dynamic disadvantages,  int totalItems,  String sortOrder,  String sortBy,  String sortOrderRev,  Filtering filtering)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewsSearch() when $default != null:
return $default(_that.page,_that.itemsPerPage,_that.loadProductData,_that.productId,_that.status,_that.storefrontId,_that.availableFilters,_that.message,_that.comment,_that.advantages,_that.disadvantages,_that.totalItems,_that.sortOrder,_that.sortBy,_that.sortOrderRev,_that.filtering);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int itemsPerPage,  bool loadProductData,  int productId,  String status,  int storefrontId,  List<String> availableFilters,  dynamic message,  dynamic comment,  dynamic advantages,  dynamic disadvantages,  int totalItems,  String sortOrder,  String sortBy,  String sortOrderRev,  Filtering filtering)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsSearch():
return $default(_that.page,_that.itemsPerPage,_that.loadProductData,_that.productId,_that.status,_that.storefrontId,_that.availableFilters,_that.message,_that.comment,_that.advantages,_that.disadvantages,_that.totalItems,_that.sortOrder,_that.sortBy,_that.sortOrderRev,_that.filtering);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int itemsPerPage,  bool loadProductData,  int productId,  String status,  int storefrontId,  List<String> availableFilters,  dynamic message,  dynamic comment,  dynamic advantages,  dynamic disadvantages,  int totalItems,  String sortOrder,  String sortBy,  String sortOrderRev,  Filtering filtering)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsSearch() when $default != null:
return $default(_that.page,_that.itemsPerPage,_that.loadProductData,_that.productId,_that.status,_that.storefrontId,_that.availableFilters,_that.message,_that.comment,_that.advantages,_that.disadvantages,_that.totalItems,_that.sortOrder,_that.sortBy,_that.sortOrderRev,_that.filtering);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ProductReviewsSearch implements ProductReviewsSearch {
   _ProductReviewsSearch({required this.page, required this.itemsPerPage, required this.loadProductData, required this.productId, required this.status, required this.storefrontId, required final  List<String> availableFilters, required this.message, required this.comment, required this.advantages, required this.disadvantages, required this.totalItems, required this.sortOrder, required this.sortBy, required this.sortOrderRev, required this.filtering}): _availableFilters = availableFilters;
  factory _ProductReviewsSearch.fromJson(Map<String, dynamic> json) => _$ProductReviewsSearchFromJson(json);

@override final  int page;
@override final  int itemsPerPage;
@override final  bool loadProductData;
@override final  int productId;
@override final  String status;
@override final  int storefrontId;
 final  List<String> _availableFilters;
@override List<String> get availableFilters {
  if (_availableFilters is EqualUnmodifiableListView) return _availableFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableFilters);
}

@override final  dynamic message;
@override final  dynamic comment;
@override final  dynamic advantages;
@override final  dynamic disadvantages;
@override final  int totalItems;
@override final  String sortOrder;
@override final  String sortBy;
@override final  String sortOrderRev;
@override final  Filtering filtering;

/// Create a copy of ProductReviewsSearch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewsSearchCopyWith<_ProductReviewsSearch> get copyWith => __$ProductReviewsSearchCopyWithImpl<_ProductReviewsSearch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewsSearch&&(identical(other.page, page) || other.page == page)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.loadProductData, loadProductData) || other.loadProductData == loadProductData)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.status, status) || other.status == status)&&(identical(other.storefrontId, storefrontId) || other.storefrontId == storefrontId)&&const DeepCollectionEquality().equals(other._availableFilters, _availableFilters)&&const DeepCollectionEquality().equals(other.message, message)&&const DeepCollectionEquality().equals(other.comment, comment)&&const DeepCollectionEquality().equals(other.advantages, advantages)&&const DeepCollectionEquality().equals(other.disadvantages, disadvantages)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrderRev, sortOrderRev) || other.sortOrderRev == sortOrderRev)&&(identical(other.filtering, filtering) || other.filtering == filtering));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,itemsPerPage,loadProductData,productId,status,storefrontId,const DeepCollectionEquality().hash(_availableFilters),const DeepCollectionEquality().hash(message),const DeepCollectionEquality().hash(comment),const DeepCollectionEquality().hash(advantages),const DeepCollectionEquality().hash(disadvantages),totalItems,sortOrder,sortBy,sortOrderRev,filtering);

@override
String toString() {
  return 'ProductReviewsSearch(page: $page, itemsPerPage: $itemsPerPage, loadProductData: $loadProductData, productId: $productId, status: $status, storefrontId: $storefrontId, availableFilters: $availableFilters, message: $message, comment: $comment, advantages: $advantages, disadvantages: $disadvantages, totalItems: $totalItems, sortOrder: $sortOrder, sortBy: $sortBy, sortOrderRev: $sortOrderRev, filtering: $filtering)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewsSearchCopyWith<$Res> implements $ProductReviewsSearchCopyWith<$Res> {
  factory _$ProductReviewsSearchCopyWith(_ProductReviewsSearch value, $Res Function(_ProductReviewsSearch) _then) = __$ProductReviewsSearchCopyWithImpl;
@override @useResult
$Res call({
 int page, int itemsPerPage, bool loadProductData, int productId, String status, int storefrontId, List<String> availableFilters, dynamic message, dynamic comment, dynamic advantages, dynamic disadvantages, int totalItems, String sortOrder, String sortBy, String sortOrderRev, Filtering filtering
});


@override $FilteringCopyWith<$Res> get filtering;

}
/// @nodoc
class __$ProductReviewsSearchCopyWithImpl<$Res>
    implements _$ProductReviewsSearchCopyWith<$Res> {
  __$ProductReviewsSearchCopyWithImpl(this._self, this._then);

  final _ProductReviewsSearch _self;
  final $Res Function(_ProductReviewsSearch) _then;

/// Create a copy of ProductReviewsSearch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? itemsPerPage = null,Object? loadProductData = null,Object? productId = null,Object? status = null,Object? storefrontId = null,Object? availableFilters = null,Object? message = freezed,Object? comment = freezed,Object? advantages = freezed,Object? disadvantages = freezed,Object? totalItems = null,Object? sortOrder = null,Object? sortBy = null,Object? sortOrderRev = null,Object? filtering = null,}) {
  return _then(_ProductReviewsSearch(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,loadProductData: null == loadProductData ? _self.loadProductData : loadProductData // ignore: cast_nullable_to_non_nullable
as bool,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storefrontId: null == storefrontId ? _self.storefrontId : storefrontId // ignore: cast_nullable_to_non_nullable
as int,availableFilters: null == availableFilters ? _self._availableFilters : availableFilters // ignore: cast_nullable_to_non_nullable
as List<String>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as dynamic,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as dynamic,advantages: freezed == advantages ? _self.advantages : advantages // ignore: cast_nullable_to_non_nullable
as dynamic,disadvantages: freezed == disadvantages ? _self.disadvantages : disadvantages // ignore: cast_nullable_to_non_nullable
as dynamic,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,sortOrderRev: null == sortOrderRev ? _self.sortOrderRev : sortOrderRev // ignore: cast_nullable_to_non_nullable
as String,filtering: null == filtering ? _self.filtering : filtering // ignore: cast_nullable_to_non_nullable
as Filtering,
  ));
}

/// Create a copy of ProductReviewsSearch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FilteringCopyWith<$Res> get filtering {
  
  return $FilteringCopyWith<$Res>(_self.filtering, (value) {
    return _then(_self.copyWith(filtering: value));
  });
}
}

// dart format on
