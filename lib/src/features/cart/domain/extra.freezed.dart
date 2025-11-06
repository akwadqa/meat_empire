// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extra.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Extra {

 String? get unlimitedDownload; String? get updatedTimestamp;
/// Create a copy of Extra
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtraCopyWith<Extra> get copyWith => _$ExtraCopyWithImpl<Extra>(this as Extra, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Extra&&(identical(other.unlimitedDownload, unlimitedDownload) || other.unlimitedDownload == unlimitedDownload)&&(identical(other.updatedTimestamp, updatedTimestamp) || other.updatedTimestamp == updatedTimestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unlimitedDownload,updatedTimestamp);

@override
String toString() {
  return 'Extra(unlimitedDownload: $unlimitedDownload, updatedTimestamp: $updatedTimestamp)';
}


}

/// @nodoc
abstract mixin class $ExtraCopyWith<$Res>  {
  factory $ExtraCopyWith(Extra value, $Res Function(Extra) _then) = _$ExtraCopyWithImpl;
@useResult
$Res call({
 String? unlimitedDownload, String? updatedTimestamp
});




}
/// @nodoc
class _$ExtraCopyWithImpl<$Res>
    implements $ExtraCopyWith<$Res> {
  _$ExtraCopyWithImpl(this._self, this._then);

  final Extra _self;
  final $Res Function(Extra) _then;

/// Create a copy of Extra
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unlimitedDownload = freezed,Object? updatedTimestamp = freezed,}) {
  return _then(_self.copyWith(
unlimitedDownload: freezed == unlimitedDownload ? _self.unlimitedDownload : unlimitedDownload // ignore: cast_nullable_to_non_nullable
as String?,updatedTimestamp: freezed == updatedTimestamp ? _self.updatedTimestamp : updatedTimestamp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Extra].
extension ExtraPatterns on Extra {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Extra value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Extra() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Extra value)  $default,){
final _that = this;
switch (_that) {
case _Extra():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Extra value)?  $default,){
final _that = this;
switch (_that) {
case _Extra() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? unlimitedDownload,  String? updatedTimestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Extra() when $default != null:
return $default(_that.unlimitedDownload,_that.updatedTimestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? unlimitedDownload,  String? updatedTimestamp)  $default,) {final _that = this;
switch (_that) {
case _Extra():
return $default(_that.unlimitedDownload,_that.updatedTimestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? unlimitedDownload,  String? updatedTimestamp)?  $default,) {final _that = this;
switch (_that) {
case _Extra() when $default != null:
return $default(_that.unlimitedDownload,_that.updatedTimestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Extra implements Extra {
   _Extra({this.unlimitedDownload, this.updatedTimestamp});
  factory _Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);

@override final  String? unlimitedDownload;
@override final  String? updatedTimestamp;

/// Create a copy of Extra
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtraCopyWith<_Extra> get copyWith => __$ExtraCopyWithImpl<_Extra>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Extra&&(identical(other.unlimitedDownload, unlimitedDownload) || other.unlimitedDownload == unlimitedDownload)&&(identical(other.updatedTimestamp, updatedTimestamp) || other.updatedTimestamp == updatedTimestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unlimitedDownload,updatedTimestamp);

@override
String toString() {
  return 'Extra(unlimitedDownload: $unlimitedDownload, updatedTimestamp: $updatedTimestamp)';
}


}

/// @nodoc
abstract mixin class _$ExtraCopyWith<$Res> implements $ExtraCopyWith<$Res> {
  factory _$ExtraCopyWith(_Extra value, $Res Function(_Extra) _then) = __$ExtraCopyWithImpl;
@override @useResult
$Res call({
 String? unlimitedDownload, String? updatedTimestamp
});




}
/// @nodoc
class __$ExtraCopyWithImpl<$Res>
    implements _$ExtraCopyWith<$Res> {
  __$ExtraCopyWithImpl(this._self, this._then);

  final _Extra _self;
  final $Res Function(_Extra) _then;

/// Create a copy of Extra
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unlimitedDownload = freezed,Object? updatedTimestamp = freezed,}) {
  return _then(_Extra(
unlimitedDownload: freezed == unlimitedDownload ? _self.unlimitedDownload : unlimitedDownload // ignore: cast_nullable_to_non_nullable
as String?,updatedTimestamp: freezed == updatedTimestamp ? _self.updatedTimestamp : updatedTimestamp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
