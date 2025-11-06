// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductGroup {

 int? get groupId; int? get companyId; String? get companyName; List<Shipping>? get shippings; dynamic get selectedShippingId; dynamic get shippingCost; List<Product>? get products;
/// Create a copy of ProductGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductGroupCopyWith<ProductGroup> get copyWith => _$ProductGroupCopyWithImpl<ProductGroup>(this as ProductGroup, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductGroup&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&const DeepCollectionEquality().equals(other.shippings, shippings)&&const DeepCollectionEquality().equals(other.selectedShippingId, selectedShippingId)&&const DeepCollectionEquality().equals(other.shippingCost, shippingCost)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupId,companyId,companyName,const DeepCollectionEquality().hash(shippings),const DeepCollectionEquality().hash(selectedShippingId),const DeepCollectionEquality().hash(shippingCost),const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'ProductGroup(groupId: $groupId, companyId: $companyId, companyName: $companyName, shippings: $shippings, selectedShippingId: $selectedShippingId, shippingCost: $shippingCost, products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductGroupCopyWith<$Res>  {
  factory $ProductGroupCopyWith(ProductGroup value, $Res Function(ProductGroup) _then) = _$ProductGroupCopyWithImpl;
@useResult
$Res call({
 int? groupId, int? companyId, String? companyName, List<Shipping>? shippings, dynamic selectedShippingId, dynamic shippingCost, List<Product>? products
});




}
/// @nodoc
class _$ProductGroupCopyWithImpl<$Res>
    implements $ProductGroupCopyWith<$Res> {
  _$ProductGroupCopyWithImpl(this._self, this._then);

  final ProductGroup _self;
  final $Res Function(ProductGroup) _then;

/// Create a copy of ProductGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = freezed,Object? companyId = freezed,Object? companyName = freezed,Object? shippings = freezed,Object? selectedShippingId = freezed,Object? shippingCost = freezed,Object? products = freezed,}) {
  return _then(_self.copyWith(
groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,shippings: freezed == shippings ? _self.shippings : shippings // ignore: cast_nullable_to_non_nullable
as List<Shipping>?,selectedShippingId: freezed == selectedShippingId ? _self.selectedShippingId : selectedShippingId // ignore: cast_nullable_to_non_nullable
as dynamic,shippingCost: freezed == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as dynamic,products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductGroup].
extension ProductGroupPatterns on ProductGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductGroup value)  $default,){
final _that = this;
switch (_that) {
case _ProductGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductGroup value)?  $default,){
final _that = this;
switch (_that) {
case _ProductGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? groupId,  int? companyId,  String? companyName,  List<Shipping>? shippings,  dynamic selectedShippingId,  dynamic shippingCost,  List<Product>? products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductGroup() when $default != null:
return $default(_that.groupId,_that.companyId,_that.companyName,_that.shippings,_that.selectedShippingId,_that.shippingCost,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? groupId,  int? companyId,  String? companyName,  List<Shipping>? shippings,  dynamic selectedShippingId,  dynamic shippingCost,  List<Product>? products)  $default,) {final _that = this;
switch (_that) {
case _ProductGroup():
return $default(_that.groupId,_that.companyId,_that.companyName,_that.shippings,_that.selectedShippingId,_that.shippingCost,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? groupId,  int? companyId,  String? companyName,  List<Shipping>? shippings,  dynamic selectedShippingId,  dynamic shippingCost,  List<Product>? products)?  $default,) {final _that = this;
switch (_that) {
case _ProductGroup() when $default != null:
return $default(_that.groupId,_that.companyId,_that.companyName,_that.shippings,_that.selectedShippingId,_that.shippingCost,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ProductGroup implements ProductGroup {
   _ProductGroup({this.groupId, this.companyId, this.companyName, final  List<Shipping>? shippings, this.selectedShippingId, this.shippingCost, final  List<Product>? products}): _shippings = shippings,_products = products;
  factory _ProductGroup.fromJson(Map<String, dynamic> json) => _$ProductGroupFromJson(json);

@override final  int? groupId;
@override final  int? companyId;
@override final  String? companyName;
 final  List<Shipping>? _shippings;
@override List<Shipping>? get shippings {
  final value = _shippings;
  if (value == null) return null;
  if (_shippings is EqualUnmodifiableListView) return _shippings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  dynamic selectedShippingId;
@override final  dynamic shippingCost;
 final  List<Product>? _products;
@override List<Product>? get products {
  final value = _products;
  if (value == null) return null;
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ProductGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductGroupCopyWith<_ProductGroup> get copyWith => __$ProductGroupCopyWithImpl<_ProductGroup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductGroup&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&const DeepCollectionEquality().equals(other._shippings, _shippings)&&const DeepCollectionEquality().equals(other.selectedShippingId, selectedShippingId)&&const DeepCollectionEquality().equals(other.shippingCost, shippingCost)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupId,companyId,companyName,const DeepCollectionEquality().hash(_shippings),const DeepCollectionEquality().hash(selectedShippingId),const DeepCollectionEquality().hash(shippingCost),const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductGroup(groupId: $groupId, companyId: $companyId, companyName: $companyName, shippings: $shippings, selectedShippingId: $selectedShippingId, shippingCost: $shippingCost, products: $products)';
}


}

/// @nodoc
abstract mixin class _$ProductGroupCopyWith<$Res> implements $ProductGroupCopyWith<$Res> {
  factory _$ProductGroupCopyWith(_ProductGroup value, $Res Function(_ProductGroup) _then) = __$ProductGroupCopyWithImpl;
@override @useResult
$Res call({
 int? groupId, int? companyId, String? companyName, List<Shipping>? shippings, dynamic selectedShippingId, dynamic shippingCost, List<Product>? products
});




}
/// @nodoc
class __$ProductGroupCopyWithImpl<$Res>
    implements _$ProductGroupCopyWith<$Res> {
  __$ProductGroupCopyWithImpl(this._self, this._then);

  final _ProductGroup _self;
  final $Res Function(_ProductGroup) _then;

/// Create a copy of ProductGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = freezed,Object? companyId = freezed,Object? companyName = freezed,Object? shippings = freezed,Object? selectedShippingId = freezed,Object? shippingCost = freezed,Object? products = freezed,}) {
  return _then(_ProductGroup(
groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,shippings: freezed == shippings ? _self._shippings : shippings // ignore: cast_nullable_to_non_nullable
as List<Shipping>?,selectedShippingId: freezed == selectedShippingId ? _self.selectedShippingId : selectedShippingId // ignore: cast_nullable_to_non_nullable
as dynamic,shippingCost: freezed == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as dynamic,products: freezed == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>?,
  ));
}


}

// dart format on
