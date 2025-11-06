// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sorting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Sorting {

 String get name; String get sortBy; String get sortOrder;
/// Create a copy of Sorting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SortingCopyWith<Sorting> get copyWith => _$SortingCopyWithImpl<Sorting>(this as Sorting, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sorting&&(identical(other.name, name) || other.name == name)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sortBy,sortOrder);

@override
String toString() {
  return 'Sorting(name: $name, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $SortingCopyWith<$Res>  {
  factory $SortingCopyWith(Sorting value, $Res Function(Sorting) _then) = _$SortingCopyWithImpl;
@useResult
$Res call({
 String name, String sortBy, String sortOrder
});




}
/// @nodoc
class _$SortingCopyWithImpl<$Res>
    implements $SortingCopyWith<$Res> {
  _$SortingCopyWithImpl(this._self, this._then);

  final Sorting _self;
  final $Res Function(Sorting) _then;

/// Create a copy of Sorting
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


/// Adds pattern-matching-related methods to [Sorting].
extension SortingPatterns on Sorting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sorting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sorting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sorting value)  $default,){
final _that = this;
switch (_that) {
case _Sorting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sorting value)?  $default,){
final _that = this;
switch (_that) {
case _Sorting() when $default != null:
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
case _Sorting() when $default != null:
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
case _Sorting():
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
case _Sorting() when $default != null:
return $default(_that.name,_that.sortBy,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Sorting implements Sorting {
   _Sorting({required this.name, required this.sortBy, required this.sortOrder});
  factory _Sorting.fromJson(Map<String, dynamic> json) => _$SortingFromJson(json);

@override final  String name;
@override final  String sortBy;
@override final  String sortOrder;

/// Create a copy of Sorting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SortingCopyWith<_Sorting> get copyWith => __$SortingCopyWithImpl<_Sorting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sorting&&(identical(other.name, name) || other.name == name)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sortBy,sortOrder);

@override
String toString() {
  return 'Sorting(name: $name, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$SortingCopyWith<$Res> implements $SortingCopyWith<$Res> {
  factory _$SortingCopyWith(_Sorting value, $Res Function(_Sorting) _then) = __$SortingCopyWithImpl;
@override @useResult
$Res call({
 String name, String sortBy, String sortOrder
});




}
/// @nodoc
class __$SortingCopyWithImpl<$Res>
    implements _$SortingCopyWith<$Res> {
  __$SortingCopyWithImpl(this._self, this._then);

  final _Sorting _self;
  final $Res Function(_Sorting) _then;

/// Create a copy of Sorting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sortBy = null,Object? sortOrder = null,}) {
  return _then(_Sorting(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
