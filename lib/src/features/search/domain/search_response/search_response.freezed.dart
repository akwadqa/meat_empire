// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponse {

 List<Product> get products; Search get search; List<Sorting> get sortings; dynamic get totalProducts; List<SubcategoryModel>? get subcategories; String get message; bool get success;
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseCopyWith<SearchResponse> get copyWith => _$SearchResponseCopyWithImpl<SearchResponse>(this as SearchResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponse&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.search, search) || other.search == search)&&const DeepCollectionEquality().equals(other.sortings, sortings)&&const DeepCollectionEquality().equals(other.totalProducts, totalProducts)&&const DeepCollectionEquality().equals(other.subcategories, subcategories)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),search,const DeepCollectionEquality().hash(sortings),const DeepCollectionEquality().hash(totalProducts),const DeepCollectionEquality().hash(subcategories),message,success);

@override
String toString() {
  return 'SearchResponse(products: $products, search: $search, sortings: $sortings, totalProducts: $totalProducts, subcategories: $subcategories, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $SearchResponseCopyWith<$Res>  {
  factory $SearchResponseCopyWith(SearchResponse value, $Res Function(SearchResponse) _then) = _$SearchResponseCopyWithImpl;
@useResult
$Res call({
 List<Product> products, Search search, List<Sorting> sortings, dynamic totalProducts, List<SubcategoryModel>? subcategories, String message, bool success
});


$SearchCopyWith<$Res> get search;

}
/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._self, this._then);

  final SearchResponse _self;
  final $Res Function(SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? search = null,Object? sortings = null,Object? totalProducts = freezed,Object? subcategories = freezed,Object? message = null,Object? success = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as Search,sortings: null == sortings ? _self.sortings : sortings // ignore: cast_nullable_to_non_nullable
as List<Sorting>,totalProducts: freezed == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as dynamic,subcategories: freezed == subcategories ? _self.subcategories : subcategories // ignore: cast_nullable_to_non_nullable
as List<SubcategoryModel>?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchCopyWith<$Res> get search {
  
  return $SearchCopyWith<$Res>(_self.search, (value) {
    return _then(_self.copyWith(search: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchResponse].
extension SearchResponsePatterns on SearchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResponse value)  $default,){
final _that = this;
switch (_that) {
case _SearchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Product> products,  Search search,  List<Sorting> sortings,  dynamic totalProducts,  List<SubcategoryModel>? subcategories,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
return $default(_that.products,_that.search,_that.sortings,_that.totalProducts,_that.subcategories,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Product> products,  Search search,  List<Sorting> sortings,  dynamic totalProducts,  List<SubcategoryModel>? subcategories,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _SearchResponse():
return $default(_that.products,_that.search,_that.sortings,_that.totalProducts,_that.subcategories,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Product> products,  Search search,  List<Sorting> sortings,  dynamic totalProducts,  List<SubcategoryModel>? subcategories,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
return $default(_that.products,_that.search,_that.sortings,_that.totalProducts,_that.subcategories,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _SearchResponse implements SearchResponse {
   _SearchResponse({required final  List<Product> products, required this.search, required final  List<Sorting> sortings, required this.totalProducts, required final  List<SubcategoryModel>? subcategories, required this.message, required this.success}): _products = products,_sortings = sortings,_subcategories = subcategories;
  factory _SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);

 final  List<Product> _products;
@override List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  Search search;
 final  List<Sorting> _sortings;
@override List<Sorting> get sortings {
  if (_sortings is EqualUnmodifiableListView) return _sortings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sortings);
}

@override final  dynamic totalProducts;
 final  List<SubcategoryModel>? _subcategories;
@override List<SubcategoryModel>? get subcategories {
  final value = _subcategories;
  if (value == null) return null;
  if (_subcategories is EqualUnmodifiableListView) return _subcategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String message;
@override final  bool success;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseCopyWith<_SearchResponse> get copyWith => __$SearchResponseCopyWithImpl<_SearchResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponse&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.search, search) || other.search == search)&&const DeepCollectionEquality().equals(other._sortings, _sortings)&&const DeepCollectionEquality().equals(other.totalProducts, totalProducts)&&const DeepCollectionEquality().equals(other._subcategories, _subcategories)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),search,const DeepCollectionEquality().hash(_sortings),const DeepCollectionEquality().hash(totalProducts),const DeepCollectionEquality().hash(_subcategories),message,success);

@override
String toString() {
  return 'SearchResponse(products: $products, search: $search, sortings: $sortings, totalProducts: $totalProducts, subcategories: $subcategories, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseCopyWith<$Res> implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(_SearchResponse value, $Res Function(_SearchResponse) _then) = __$SearchResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Product> products, Search search, List<Sorting> sortings, dynamic totalProducts, List<SubcategoryModel>? subcategories, String message, bool success
});


@override $SearchCopyWith<$Res> get search;

}
/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(this._self, this._then);

  final _SearchResponse _self;
  final $Res Function(_SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? search = null,Object? sortings = null,Object? totalProducts = freezed,Object? subcategories = freezed,Object? message = null,Object? success = null,}) {
  return _then(_SearchResponse(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as Search,sortings: null == sortings ? _self._sortings : sortings // ignore: cast_nullable_to_non_nullable
as List<Sorting>,totalProducts: freezed == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as dynamic,subcategories: freezed == subcategories ? _self._subcategories : subcategories // ignore: cast_nullable_to_non_nullable
as List<SubcategoryModel>?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchCopyWith<$Res> get search {
  
  return $SearchCopyWith<$Res>(_self.search, (value) {
    return _then(_self.copyWith(search: value));
  });
}
}

// dart format on
