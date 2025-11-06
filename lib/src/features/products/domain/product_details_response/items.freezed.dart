// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Items {

 WithImages get withImages; OnlyBuyers get onlyBuyers;
/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsCopyWith<Items> get copyWith => _$ItemsCopyWithImpl<Items>(this as Items, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Items&&(identical(other.withImages, withImages) || other.withImages == withImages)&&(identical(other.onlyBuyers, onlyBuyers) || other.onlyBuyers == onlyBuyers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,withImages,onlyBuyers);

@override
String toString() {
  return 'Items(withImages: $withImages, onlyBuyers: $onlyBuyers)';
}


}

/// @nodoc
abstract mixin class $ItemsCopyWith<$Res>  {
  factory $ItemsCopyWith(Items value, $Res Function(Items) _then) = _$ItemsCopyWithImpl;
@useResult
$Res call({
 WithImages withImages, OnlyBuyers onlyBuyers
});


$WithImagesCopyWith<$Res> get withImages;$OnlyBuyersCopyWith<$Res> get onlyBuyers;

}
/// @nodoc
class _$ItemsCopyWithImpl<$Res>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._self, this._then);

  final Items _self;
  final $Res Function(Items) _then;

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? withImages = null,Object? onlyBuyers = null,}) {
  return _then(_self.copyWith(
withImages: null == withImages ? _self.withImages : withImages // ignore: cast_nullable_to_non_nullable
as WithImages,onlyBuyers: null == onlyBuyers ? _self.onlyBuyers : onlyBuyers // ignore: cast_nullable_to_non_nullable
as OnlyBuyers,
  ));
}
/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WithImagesCopyWith<$Res> get withImages {
  
  return $WithImagesCopyWith<$Res>(_self.withImages, (value) {
    return _then(_self.copyWith(withImages: value));
  });
}/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnlyBuyersCopyWith<$Res> get onlyBuyers {
  
  return $OnlyBuyersCopyWith<$Res>(_self.onlyBuyers, (value) {
    return _then(_self.copyWith(onlyBuyers: value));
  });
}
}


/// Adds pattern-matching-related methods to [Items].
extension ItemsPatterns on Items {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Items value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Items() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Items value)  $default,){
final _that = this;
switch (_that) {
case _Items():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Items value)?  $default,){
final _that = this;
switch (_that) {
case _Items() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WithImages withImages,  OnlyBuyers onlyBuyers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Items() when $default != null:
return $default(_that.withImages,_that.onlyBuyers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WithImages withImages,  OnlyBuyers onlyBuyers)  $default,) {final _that = this;
switch (_that) {
case _Items():
return $default(_that.withImages,_that.onlyBuyers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WithImages withImages,  OnlyBuyers onlyBuyers)?  $default,) {final _that = this;
switch (_that) {
case _Items() when $default != null:
return $default(_that.withImages,_that.onlyBuyers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Items implements Items {
   _Items({required this.withImages, required this.onlyBuyers});
  factory _Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

@override final  WithImages withImages;
@override final  OnlyBuyers onlyBuyers;

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsCopyWith<_Items> get copyWith => __$ItemsCopyWithImpl<_Items>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Items&&(identical(other.withImages, withImages) || other.withImages == withImages)&&(identical(other.onlyBuyers, onlyBuyers) || other.onlyBuyers == onlyBuyers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,withImages,onlyBuyers);

@override
String toString() {
  return 'Items(withImages: $withImages, onlyBuyers: $onlyBuyers)';
}


}

/// @nodoc
abstract mixin class _$ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$ItemsCopyWith(_Items value, $Res Function(_Items) _then) = __$ItemsCopyWithImpl;
@override @useResult
$Res call({
 WithImages withImages, OnlyBuyers onlyBuyers
});


@override $WithImagesCopyWith<$Res> get withImages;@override $OnlyBuyersCopyWith<$Res> get onlyBuyers;

}
/// @nodoc
class __$ItemsCopyWithImpl<$Res>
    implements _$ItemsCopyWith<$Res> {
  __$ItemsCopyWithImpl(this._self, this._then);

  final _Items _self;
  final $Res Function(_Items) _then;

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? withImages = null,Object? onlyBuyers = null,}) {
  return _then(_Items(
withImages: null == withImages ? _self.withImages : withImages // ignore: cast_nullable_to_non_nullable
as WithImages,onlyBuyers: null == onlyBuyers ? _self.onlyBuyers : onlyBuyers // ignore: cast_nullable_to_non_nullable
as OnlyBuyers,
  ));
}

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WithImagesCopyWith<$Res> get withImages {
  
  return $WithImagesCopyWith<$Res>(_self.withImages, (value) {
    return _then(_self.copyWith(withImages: value));
  });
}/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnlyBuyersCopyWith<$Res> get onlyBuyers {
  
  return $OnlyBuyersCopyWith<$Res>(_self.onlyBuyers, (value) {
    return _then(_self.copyWith(onlyBuyers: value));
  });
}
}

// dart format on
