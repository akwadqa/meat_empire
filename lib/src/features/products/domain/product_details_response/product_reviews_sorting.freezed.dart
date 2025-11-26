// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_reviews_sorting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductReviewsSorting {

 String get name; String get sortBy; String get sortOrder;
/// Create a copy of ProductReviewsSorting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewsSortingCopyWith<ProductReviewsSorting> get copyWith => _$ProductReviewsSortingCopyWithImpl<ProductReviewsSorting>(this as ProductReviewsSorting, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewsSorting&&(identical(other.name, name) || other.name == name)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sortBy,sortOrder);

@override
String toString() {
  return 'ProductReviewsSorting(name: $name, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $ProductReviewsSortingCopyWith<$Res>  {
  factory $ProductReviewsSortingCopyWith(ProductReviewsSorting value, $Res Function(ProductReviewsSorting) _then) = _$ProductReviewsSortingCopyWithImpl;
@useResult
$Res call({
 String name, String sortBy, String sortOrder
});




}
/// @nodoc
class _$ProductReviewsSortingCopyWithImpl<$Res>
    implements $ProductReviewsSortingCopyWith<$Res> {
  _$ProductReviewsSortingCopyWithImpl(this._self, this._then);

  final ProductReviewsSorting _self;
  final $Res Function(ProductReviewsSorting) _then;

/// Create a copy of ProductReviewsSorting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? sortBy = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductReviewsSorting].
extension ProductReviewsSortingPatterns on ProductReviewsSorting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewsSorting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewsSorting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewsSorting value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsSorting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewsSorting value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsSorting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String sortBy,  String sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewsSorting() when $default != null:
return $default(_that.name,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String sortBy,  String sortOrder)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsSorting():
return $default(_that.name,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String sortBy,  String sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsSorting() when $default != null:
return $default(_that.name,_that.sortBy,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ProductReviewsSorting implements ProductReviewsSorting {
   _ProductReviewsSorting({required this.name, required this.sortBy, required this.sortOrder});
  factory _ProductReviewsSorting.fromJson(Map<String, dynamic> json) => _$ProductReviewsSortingFromJson(json);

@override final  String name;
@override final  String sortBy;
@override final  String sortOrder;

/// Create a copy of ProductReviewsSorting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewsSortingCopyWith<_ProductReviewsSorting> get copyWith => __$ProductReviewsSortingCopyWithImpl<_ProductReviewsSorting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewsSorting&&(identical(other.name, name) || other.name == name)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sortBy,sortOrder);

@override
String toString() {
  return 'ProductReviewsSorting(name: $name, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewsSortingCopyWith<$Res> implements $ProductReviewsSortingCopyWith<$Res> {
  factory _$ProductReviewsSortingCopyWith(_ProductReviewsSorting value, $Res Function(_ProductReviewsSorting) _then) = __$ProductReviewsSortingCopyWithImpl;
@override @useResult
$Res call({
 String name, String sortBy, String sortOrder
});




}
/// @nodoc
class __$ProductReviewsSortingCopyWithImpl<$Res>
    implements _$ProductReviewsSortingCopyWith<$Res> {
  __$ProductReviewsSortingCopyWithImpl(this._self, this._then);

  final _ProductReviewsSorting _self;
  final $Res Function(_ProductReviewsSorting) _then;

/// Create a copy of ProductReviewsSorting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sortBy = null,Object? sortOrder = null,}) {
  return _then(_ProductReviewsSorting(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
