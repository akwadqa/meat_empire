// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filtering.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Filtering {

 Items get items;
/// Create a copy of Filtering
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilteringCopyWith<Filtering> get copyWith => _$FilteringCopyWithImpl<Filtering>(this as Filtering, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Filtering&&(identical(other.items, items) || other.items == items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items);

@override
String toString() {
  return 'Filtering(items: $items)';
}


}

/// @nodoc
abstract mixin class $FilteringCopyWith<$Res>  {
  factory $FilteringCopyWith(Filtering value, $Res Function(Filtering) _then) = _$FilteringCopyWithImpl;
@useResult
$Res call({
 Items items
});


$ItemsCopyWith<$Res> get items;

}
/// @nodoc
class _$FilteringCopyWithImpl<$Res>
    implements $FilteringCopyWith<$Res> {
  _$FilteringCopyWithImpl(this._self, this._then);

  final Filtering _self;
  final $Res Function(Filtering) _then;

/// Create a copy of Filtering
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as Items,
  ));
}
/// Create a copy of Filtering
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsCopyWith<$Res> get items {
  
  return $ItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [Filtering].
extension FilteringPatterns on Filtering {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Filtering value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Filtering() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Filtering value)  $default,){
final _that = this;
switch (_that) {
case _Filtering():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Filtering value)?  $default,){
final _that = this;
switch (_that) {
case _Filtering() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Items items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Filtering() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Items items)  $default,) {final _that = this;
switch (_that) {
case _Filtering():
return $default(_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Items items)?  $default,) {final _that = this;
switch (_that) {
case _Filtering() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Filtering implements Filtering {
   _Filtering({required this.items});
  factory _Filtering.fromJson(Map<String, dynamic> json) => _$FilteringFromJson(json);

@override final  Items items;

/// Create a copy of Filtering
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilteringCopyWith<_Filtering> get copyWith => __$FilteringCopyWithImpl<_Filtering>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Filtering&&(identical(other.items, items) || other.items == items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items);

@override
String toString() {
  return 'Filtering(items: $items)';
}


}

/// @nodoc
abstract mixin class _$FilteringCopyWith<$Res> implements $FilteringCopyWith<$Res> {
  factory _$FilteringCopyWith(_Filtering value, $Res Function(_Filtering) _then) = __$FilteringCopyWithImpl;
@override @useResult
$Res call({
 Items items
});


@override $ItemsCopyWith<$Res> get items;

}
/// @nodoc
class __$FilteringCopyWithImpl<$Res>
    implements _$FilteringCopyWith<$Res> {
  __$FilteringCopyWithImpl(this._self, this._then);

  final _Filtering _self;
  final $Res Function(_Filtering) _then;

/// Create a copy of Filtering
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_Filtering(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as Items,
  ));
}

/// Create a copy of Filtering
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsCopyWith<$Res> get items {
  
  return $ItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}

// dart format on
