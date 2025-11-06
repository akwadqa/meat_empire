// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductsBlock {

 String get title; String get viewType; List<Product> get products; int? get categoryId; String? get requestParam; String? get sortBy; String? get sortOrder;
/// Create a copy of ProductsBlock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsBlockCopyWith<ProductsBlock> get copyWith => _$ProductsBlockCopyWithImpl<ProductsBlock>(this as ProductsBlock, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsBlock&&(identical(other.title, title) || other.title == title)&&(identical(other.viewType, viewType) || other.viewType == viewType)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.requestParam, requestParam) || other.requestParam == requestParam)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,viewType,const DeepCollectionEquality().hash(products),categoryId,requestParam,sortBy,sortOrder);

@override
String toString() {
  return 'ProductsBlock(title: $title, viewType: $viewType, products: $products, categoryId: $categoryId, requestParam: $requestParam, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $ProductsBlockCopyWith<$Res>  {
  factory $ProductsBlockCopyWith(ProductsBlock value, $Res Function(ProductsBlock) _then) = _$ProductsBlockCopyWithImpl;
@useResult
$Res call({
 String title, String viewType, List<Product> products, int? categoryId, String? requestParam, String? sortBy, String? sortOrder
});




}
/// @nodoc
class _$ProductsBlockCopyWithImpl<$Res>
    implements $ProductsBlockCopyWith<$Res> {
  _$ProductsBlockCopyWithImpl(this._self, this._then);

  final ProductsBlock _self;
  final $Res Function(ProductsBlock) _then;

/// Create a copy of ProductsBlock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? viewType = null,Object? products = null,Object? categoryId = freezed,Object? requestParam = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,requestParam: freezed == requestParam ? _self.requestParam : requestParam // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsBlock].
extension ProductsBlockPatterns on ProductsBlock {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsBlock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsBlock() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsBlock value)  $default,){
final _that = this;
switch (_that) {
case _ProductsBlock():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsBlock value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsBlock() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String viewType,  List<Product> products,  int? categoryId,  String? requestParam,  String? sortBy,  String? sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsBlock() when $default != null:
return $default(_that.title,_that.viewType,_that.products,_that.categoryId,_that.requestParam,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String viewType,  List<Product> products,  int? categoryId,  String? requestParam,  String? sortBy,  String? sortOrder)  $default,) {final _that = this;
switch (_that) {
case _ProductsBlock():
return $default(_that.title,_that.viewType,_that.products,_that.categoryId,_that.requestParam,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String viewType,  List<Product> products,  int? categoryId,  String? requestParam,  String? sortBy,  String? sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _ProductsBlock() when $default != null:
return $default(_that.title,_that.viewType,_that.products,_that.categoryId,_that.requestParam,_that.sortBy,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ProductsBlock implements ProductsBlock {
   _ProductsBlock({required this.title, required this.viewType, required final  List<Product> products, required this.categoryId, required this.requestParam, required this.sortBy, required this.sortOrder}): _products = products;
  factory _ProductsBlock.fromJson(Map<String, dynamic> json) => _$ProductsBlockFromJson(json);

@override final  String title;
@override final  String viewType;
 final  List<Product> _products;
@override List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  int? categoryId;
@override final  String? requestParam;
@override final  String? sortBy;
@override final  String? sortOrder;

/// Create a copy of ProductsBlock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsBlockCopyWith<_ProductsBlock> get copyWith => __$ProductsBlockCopyWithImpl<_ProductsBlock>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsBlock&&(identical(other.title, title) || other.title == title)&&(identical(other.viewType, viewType) || other.viewType == viewType)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.requestParam, requestParam) || other.requestParam == requestParam)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,viewType,const DeepCollectionEquality().hash(_products),categoryId,requestParam,sortBy,sortOrder);

@override
String toString() {
  return 'ProductsBlock(title: $title, viewType: $viewType, products: $products, categoryId: $categoryId, requestParam: $requestParam, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$ProductsBlockCopyWith<$Res> implements $ProductsBlockCopyWith<$Res> {
  factory _$ProductsBlockCopyWith(_ProductsBlock value, $Res Function(_ProductsBlock) _then) = __$ProductsBlockCopyWithImpl;
@override @useResult
$Res call({
 String title, String viewType, List<Product> products, int? categoryId, String? requestParam, String? sortBy, String? sortOrder
});




}
/// @nodoc
class __$ProductsBlockCopyWithImpl<$Res>
    implements _$ProductsBlockCopyWith<$Res> {
  __$ProductsBlockCopyWithImpl(this._self, this._then);

  final _ProductsBlock _self;
  final $Res Function(_ProductsBlock) _then;

/// Create a copy of ProductsBlock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? viewType = null,Object? products = null,Object? categoryId = freezed,Object? requestParam = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,}) {
  return _then(_ProductsBlock(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,requestParam: freezed == requestParam ? _self.requestParam : requestParam // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
