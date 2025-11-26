// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'with_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WithImages {

 String get param; String get name; bool get selected;
/// Create a copy of WithImages
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithImagesCopyWith<WithImages> get copyWith => _$WithImagesCopyWithImpl<WithImages>(this as WithImages, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithImages&&(identical(other.param, param) || other.param == param)&&(identical(other.name, name) || other.name == name)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,param,name,selected);

@override
String toString() {
  return 'WithImages(param: $param, name: $name, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $WithImagesCopyWith<$Res>  {
  factory $WithImagesCopyWith(WithImages value, $Res Function(WithImages) _then) = _$WithImagesCopyWithImpl;
@useResult
$Res call({
 String param, String name, bool selected
});




}
/// @nodoc
class _$WithImagesCopyWithImpl<$Res>
    implements $WithImagesCopyWith<$Res> {
  _$WithImagesCopyWithImpl(this._self, this._then);

  final WithImages _self;
  final $Res Function(WithImages) _then;

/// Create a copy of WithImages
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? param = null,Object? name = null,Object? selected = null,}) {
  return _then(_self.copyWith(
param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WithImages].
extension WithImagesPatterns on WithImages {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithImages value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithImages() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithImages value)  $default,){
final _that = this;
switch (_that) {
case _WithImages():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithImages value)?  $default,){
final _that = this;
switch (_that) {
case _WithImages() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String param,  String name,  bool selected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithImages() when $default != null:
return $default(_that.param,_that.name,_that.selected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String param,  String name,  bool selected)  $default,) {final _that = this;
switch (_that) {
case _WithImages():
return $default(_that.param,_that.name,_that.selected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String param,  String name,  bool selected)?  $default,) {final _that = this;
switch (_that) {
case _WithImages() when $default != null:
return $default(_that.param,_that.name,_that.selected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _WithImages implements WithImages {
   _WithImages({required this.param, required this.name, required this.selected});
  factory _WithImages.fromJson(Map<String, dynamic> json) => _$WithImagesFromJson(json);

@override final  String param;
@override final  String name;
@override final  bool selected;

/// Create a copy of WithImages
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithImagesCopyWith<_WithImages> get copyWith => __$WithImagesCopyWithImpl<_WithImages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithImages&&(identical(other.param, param) || other.param == param)&&(identical(other.name, name) || other.name == name)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,param,name,selected);

@override
String toString() {
  return 'WithImages(param: $param, name: $name, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$WithImagesCopyWith<$Res> implements $WithImagesCopyWith<$Res> {
  factory _$WithImagesCopyWith(_WithImages value, $Res Function(_WithImages) _then) = __$WithImagesCopyWithImpl;
@override @useResult
$Res call({
 String param, String name, bool selected
});




}
/// @nodoc
class __$WithImagesCopyWithImpl<$Res>
    implements _$WithImagesCopyWith<$Res> {
  __$WithImagesCopyWithImpl(this._self, this._then);

  final _WithImages _self;
  final $Res Function(_WithImages) _then;

/// Create a copy of WithImages
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? param = null,Object? name = null,Object? selected = null,}) {
  return _then(_WithImages(
param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
