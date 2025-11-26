// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_reviews_avail_sorting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductReviewsAvailSorting {

@JsonKey(name: 'product_review_timestamp-asc') String get productReviewTimestampAsc;@JsonKey(name: 'product_review_timestamp-desc') String get productReviewTimestampDesc;@JsonKey(name: 'helpfulness-asc') String get helpfulnessAsc;@JsonKey(name: 'helpfulness-desc') String get helpfulnessDesc;@JsonKey(name: 'rating_value-asc') String get ratingValueAsc;@JsonKey(name: 'rating_value-desc') String get ratingValueDesc;
/// Create a copy of ProductReviewsAvailSorting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewsAvailSortingCopyWith<ProductReviewsAvailSorting> get copyWith => _$ProductReviewsAvailSortingCopyWithImpl<ProductReviewsAvailSorting>(this as ProductReviewsAvailSorting, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewsAvailSorting&&(identical(other.productReviewTimestampAsc, productReviewTimestampAsc) || other.productReviewTimestampAsc == productReviewTimestampAsc)&&(identical(other.productReviewTimestampDesc, productReviewTimestampDesc) || other.productReviewTimestampDesc == productReviewTimestampDesc)&&(identical(other.helpfulnessAsc, helpfulnessAsc) || other.helpfulnessAsc == helpfulnessAsc)&&(identical(other.helpfulnessDesc, helpfulnessDesc) || other.helpfulnessDesc == helpfulnessDesc)&&(identical(other.ratingValueAsc, ratingValueAsc) || other.ratingValueAsc == ratingValueAsc)&&(identical(other.ratingValueDesc, ratingValueDesc) || other.ratingValueDesc == ratingValueDesc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productReviewTimestampAsc,productReviewTimestampDesc,helpfulnessAsc,helpfulnessDesc,ratingValueAsc,ratingValueDesc);

@override
String toString() {
  return 'ProductReviewsAvailSorting(productReviewTimestampAsc: $productReviewTimestampAsc, productReviewTimestampDesc: $productReviewTimestampDesc, helpfulnessAsc: $helpfulnessAsc, helpfulnessDesc: $helpfulnessDesc, ratingValueAsc: $ratingValueAsc, ratingValueDesc: $ratingValueDesc)';
}


}

/// @nodoc
abstract mixin class $ProductReviewsAvailSortingCopyWith<$Res>  {
  factory $ProductReviewsAvailSortingCopyWith(ProductReviewsAvailSorting value, $Res Function(ProductReviewsAvailSorting) _then) = _$ProductReviewsAvailSortingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_review_timestamp-asc') String productReviewTimestampAsc,@JsonKey(name: 'product_review_timestamp-desc') String productReviewTimestampDesc,@JsonKey(name: 'helpfulness-asc') String helpfulnessAsc,@JsonKey(name: 'helpfulness-desc') String helpfulnessDesc,@JsonKey(name: 'rating_value-asc') String ratingValueAsc,@JsonKey(name: 'rating_value-desc') String ratingValueDesc
});




}
/// @nodoc
class _$ProductReviewsAvailSortingCopyWithImpl<$Res>
    implements $ProductReviewsAvailSortingCopyWith<$Res> {
  _$ProductReviewsAvailSortingCopyWithImpl(this._self, this._then);

  final ProductReviewsAvailSorting _self;
  final $Res Function(ProductReviewsAvailSorting) _then;

/// Create a copy of ProductReviewsAvailSorting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productReviewTimestampAsc = null,Object? productReviewTimestampDesc = null,Object? helpfulnessAsc = null,Object? helpfulnessDesc = null,Object? ratingValueAsc = null,Object? ratingValueDesc = null,}) {
  return _then(_self.copyWith(
productReviewTimestampAsc: null == productReviewTimestampAsc ? _self.productReviewTimestampAsc : productReviewTimestampAsc // ignore: cast_nullable_to_non_nullable
as String,productReviewTimestampDesc: null == productReviewTimestampDesc ? _self.productReviewTimestampDesc : productReviewTimestampDesc // ignore: cast_nullable_to_non_nullable
as String,helpfulnessAsc: null == helpfulnessAsc ? _self.helpfulnessAsc : helpfulnessAsc // ignore: cast_nullable_to_non_nullable
as String,helpfulnessDesc: null == helpfulnessDesc ? _self.helpfulnessDesc : helpfulnessDesc // ignore: cast_nullable_to_non_nullable
as String,ratingValueAsc: null == ratingValueAsc ? _self.ratingValueAsc : ratingValueAsc // ignore: cast_nullable_to_non_nullable
as String,ratingValueDesc: null == ratingValueDesc ? _self.ratingValueDesc : ratingValueDesc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductReviewsAvailSorting].
extension ProductReviewsAvailSortingPatterns on ProductReviewsAvailSorting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewsAvailSorting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewsAvailSorting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewsAvailSorting value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsAvailSorting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewsAvailSorting value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsAvailSorting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_review_timestamp-asc')  String productReviewTimestampAsc, @JsonKey(name: 'product_review_timestamp-desc')  String productReviewTimestampDesc, @JsonKey(name: 'helpfulness-asc')  String helpfulnessAsc, @JsonKey(name: 'helpfulness-desc')  String helpfulnessDesc, @JsonKey(name: 'rating_value-asc')  String ratingValueAsc, @JsonKey(name: 'rating_value-desc')  String ratingValueDesc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewsAvailSorting() when $default != null:
return $default(_that.productReviewTimestampAsc,_that.productReviewTimestampDesc,_that.helpfulnessAsc,_that.helpfulnessDesc,_that.ratingValueAsc,_that.ratingValueDesc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_review_timestamp-asc')  String productReviewTimestampAsc, @JsonKey(name: 'product_review_timestamp-desc')  String productReviewTimestampDesc, @JsonKey(name: 'helpfulness-asc')  String helpfulnessAsc, @JsonKey(name: 'helpfulness-desc')  String helpfulnessDesc, @JsonKey(name: 'rating_value-asc')  String ratingValueAsc, @JsonKey(name: 'rating_value-desc')  String ratingValueDesc)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsAvailSorting():
return $default(_that.productReviewTimestampAsc,_that.productReviewTimestampDesc,_that.helpfulnessAsc,_that.helpfulnessDesc,_that.ratingValueAsc,_that.ratingValueDesc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_review_timestamp-asc')  String productReviewTimestampAsc, @JsonKey(name: 'product_review_timestamp-desc')  String productReviewTimestampDesc, @JsonKey(name: 'helpfulness-asc')  String helpfulnessAsc, @JsonKey(name: 'helpfulness-desc')  String helpfulnessDesc, @JsonKey(name: 'rating_value-asc')  String ratingValueAsc, @JsonKey(name: 'rating_value-desc')  String ratingValueDesc)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsAvailSorting() when $default != null:
return $default(_that.productReviewTimestampAsc,_that.productReviewTimestampDesc,_that.helpfulnessAsc,_that.helpfulnessDesc,_that.ratingValueAsc,_that.ratingValueDesc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ProductReviewsAvailSorting implements ProductReviewsAvailSorting {
   _ProductReviewsAvailSorting({@JsonKey(name: 'product_review_timestamp-asc') required this.productReviewTimestampAsc, @JsonKey(name: 'product_review_timestamp-desc') required this.productReviewTimestampDesc, @JsonKey(name: 'helpfulness-asc') required this.helpfulnessAsc, @JsonKey(name: 'helpfulness-desc') required this.helpfulnessDesc, @JsonKey(name: 'rating_value-asc') required this.ratingValueAsc, @JsonKey(name: 'rating_value-desc') required this.ratingValueDesc});
  factory _ProductReviewsAvailSorting.fromJson(Map<String, dynamic> json) => _$ProductReviewsAvailSortingFromJson(json);

@override@JsonKey(name: 'product_review_timestamp-asc') final  String productReviewTimestampAsc;
@override@JsonKey(name: 'product_review_timestamp-desc') final  String productReviewTimestampDesc;
@override@JsonKey(name: 'helpfulness-asc') final  String helpfulnessAsc;
@override@JsonKey(name: 'helpfulness-desc') final  String helpfulnessDesc;
@override@JsonKey(name: 'rating_value-asc') final  String ratingValueAsc;
@override@JsonKey(name: 'rating_value-desc') final  String ratingValueDesc;

/// Create a copy of ProductReviewsAvailSorting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewsAvailSortingCopyWith<_ProductReviewsAvailSorting> get copyWith => __$ProductReviewsAvailSortingCopyWithImpl<_ProductReviewsAvailSorting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewsAvailSorting&&(identical(other.productReviewTimestampAsc, productReviewTimestampAsc) || other.productReviewTimestampAsc == productReviewTimestampAsc)&&(identical(other.productReviewTimestampDesc, productReviewTimestampDesc) || other.productReviewTimestampDesc == productReviewTimestampDesc)&&(identical(other.helpfulnessAsc, helpfulnessAsc) || other.helpfulnessAsc == helpfulnessAsc)&&(identical(other.helpfulnessDesc, helpfulnessDesc) || other.helpfulnessDesc == helpfulnessDesc)&&(identical(other.ratingValueAsc, ratingValueAsc) || other.ratingValueAsc == ratingValueAsc)&&(identical(other.ratingValueDesc, ratingValueDesc) || other.ratingValueDesc == ratingValueDesc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productReviewTimestampAsc,productReviewTimestampDesc,helpfulnessAsc,helpfulnessDesc,ratingValueAsc,ratingValueDesc);

@override
String toString() {
  return 'ProductReviewsAvailSorting(productReviewTimestampAsc: $productReviewTimestampAsc, productReviewTimestampDesc: $productReviewTimestampDesc, helpfulnessAsc: $helpfulnessAsc, helpfulnessDesc: $helpfulnessDesc, ratingValueAsc: $ratingValueAsc, ratingValueDesc: $ratingValueDesc)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewsAvailSortingCopyWith<$Res> implements $ProductReviewsAvailSortingCopyWith<$Res> {
  factory _$ProductReviewsAvailSortingCopyWith(_ProductReviewsAvailSorting value, $Res Function(_ProductReviewsAvailSorting) _then) = __$ProductReviewsAvailSortingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_review_timestamp-asc') String productReviewTimestampAsc,@JsonKey(name: 'product_review_timestamp-desc') String productReviewTimestampDesc,@JsonKey(name: 'helpfulness-asc') String helpfulnessAsc,@JsonKey(name: 'helpfulness-desc') String helpfulnessDesc,@JsonKey(name: 'rating_value-asc') String ratingValueAsc,@JsonKey(name: 'rating_value-desc') String ratingValueDesc
});




}
/// @nodoc
class __$ProductReviewsAvailSortingCopyWithImpl<$Res>
    implements _$ProductReviewsAvailSortingCopyWith<$Res> {
  __$ProductReviewsAvailSortingCopyWithImpl(this._self, this._then);

  final _ProductReviewsAvailSorting _self;
  final $Res Function(_ProductReviewsAvailSorting) _then;

/// Create a copy of ProductReviewsAvailSorting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productReviewTimestampAsc = null,Object? productReviewTimestampDesc = null,Object? helpfulnessAsc = null,Object? helpfulnessDesc = null,Object? ratingValueAsc = null,Object? ratingValueDesc = null,}) {
  return _then(_ProductReviewsAvailSorting(
productReviewTimestampAsc: null == productReviewTimestampAsc ? _self.productReviewTimestampAsc : productReviewTimestampAsc // ignore: cast_nullable_to_non_nullable
as String,productReviewTimestampDesc: null == productReviewTimestampDesc ? _self.productReviewTimestampDesc : productReviewTimestampDesc // ignore: cast_nullable_to_non_nullable
as String,helpfulnessAsc: null == helpfulnessAsc ? _self.helpfulnessAsc : helpfulnessAsc // ignore: cast_nullable_to_non_nullable
as String,helpfulnessDesc: null == helpfulnessDesc ? _self.helpfulnessDesc : helpfulnessDesc // ignore: cast_nullable_to_non_nullable
as String,ratingValueAsc: null == ratingValueAsc ? _self.ratingValueAsc : ratingValueAsc // ignore: cast_nullable_to_non_nullable
as String,ratingValueDesc: null == ratingValueDesc ? _self.ratingValueDesc : ratingValueDesc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
