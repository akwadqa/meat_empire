// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainPair {

 String? get pairId; String? get imageId; String? get detailedId; String? get position; String? get objectId; String? get objectType; Detailed? get detailed;
/// Create a copy of MainPair
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainPairCopyWith<MainPair> get copyWith => _$MainPairCopyWithImpl<MainPair>(this as MainPair, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainPair&&(identical(other.pairId, pairId) || other.pairId == pairId)&&(identical(other.imageId, imageId) || other.imageId == imageId)&&(identical(other.detailedId, detailedId) || other.detailedId == detailedId)&&(identical(other.position, position) || other.position == position)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.detailed, detailed) || other.detailed == detailed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pairId,imageId,detailedId,position,objectId,objectType,detailed);

@override
String toString() {
  return 'MainPair(pairId: $pairId, imageId: $imageId, detailedId: $detailedId, position: $position, objectId: $objectId, objectType: $objectType, detailed: $detailed)';
}


}

/// @nodoc
abstract mixin class $MainPairCopyWith<$Res>  {
  factory $MainPairCopyWith(MainPair value, $Res Function(MainPair) _then) = _$MainPairCopyWithImpl;
@useResult
$Res call({
 String? pairId, String? imageId, String? detailedId, String? position, String? objectId, String? objectType, Detailed? detailed
});


$DetailedCopyWith<$Res>? get detailed;

}
/// @nodoc
class _$MainPairCopyWithImpl<$Res>
    implements $MainPairCopyWith<$Res> {
  _$MainPairCopyWithImpl(this._self, this._then);

  final MainPair _self;
  final $Res Function(MainPair) _then;

/// Create a copy of MainPair
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pairId = freezed,Object? imageId = freezed,Object? detailedId = freezed,Object? position = freezed,Object? objectId = freezed,Object? objectType = freezed,Object? detailed = freezed,}) {
  return _then(_self.copyWith(
pairId: freezed == pairId ? _self.pairId : pairId // ignore: cast_nullable_to_non_nullable
as String?,imageId: freezed == imageId ? _self.imageId : imageId // ignore: cast_nullable_to_non_nullable
as String?,detailedId: freezed == detailedId ? _self.detailedId : detailedId // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,objectType: freezed == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String?,detailed: freezed == detailed ? _self.detailed : detailed // ignore: cast_nullable_to_non_nullable
as Detailed?,
  ));
}
/// Create a copy of MainPair
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DetailedCopyWith<$Res>? get detailed {
    if (_self.detailed == null) {
    return null;
  }

  return $DetailedCopyWith<$Res>(_self.detailed!, (value) {
    return _then(_self.copyWith(detailed: value));
  });
}
}


/// Adds pattern-matching-related methods to [MainPair].
extension MainPairPatterns on MainPair {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainPair value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainPair() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainPair value)  $default,){
final _that = this;
switch (_that) {
case _MainPair():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainPair value)?  $default,){
final _that = this;
switch (_that) {
case _MainPair() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? pairId,  String? imageId,  String? detailedId,  String? position,  String? objectId,  String? objectType,  Detailed? detailed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainPair() when $default != null:
return $default(_that.pairId,_that.imageId,_that.detailedId,_that.position,_that.objectId,_that.objectType,_that.detailed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? pairId,  String? imageId,  String? detailedId,  String? position,  String? objectId,  String? objectType,  Detailed? detailed)  $default,) {final _that = this;
switch (_that) {
case _MainPair():
return $default(_that.pairId,_that.imageId,_that.detailedId,_that.position,_that.objectId,_that.objectType,_that.detailed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? pairId,  String? imageId,  String? detailedId,  String? position,  String? objectId,  String? objectType,  Detailed? detailed)?  $default,) {final _that = this;
switch (_that) {
case _MainPair() when $default != null:
return $default(_that.pairId,_that.imageId,_that.detailedId,_that.position,_that.objectId,_that.objectType,_that.detailed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _MainPair implements MainPair {
   _MainPair({this.pairId, this.imageId, this.detailedId, this.position, this.objectId, this.objectType, this.detailed});
  factory _MainPair.fromJson(Map<String, dynamic> json) => _$MainPairFromJson(json);

@override final  String? pairId;
@override final  String? imageId;
@override final  String? detailedId;
@override final  String? position;
@override final  String? objectId;
@override final  String? objectType;
@override final  Detailed? detailed;

/// Create a copy of MainPair
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainPairCopyWith<_MainPair> get copyWith => __$MainPairCopyWithImpl<_MainPair>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainPair&&(identical(other.pairId, pairId) || other.pairId == pairId)&&(identical(other.imageId, imageId) || other.imageId == imageId)&&(identical(other.detailedId, detailedId) || other.detailedId == detailedId)&&(identical(other.position, position) || other.position == position)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.detailed, detailed) || other.detailed == detailed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pairId,imageId,detailedId,position,objectId,objectType,detailed);

@override
String toString() {
  return 'MainPair(pairId: $pairId, imageId: $imageId, detailedId: $detailedId, position: $position, objectId: $objectId, objectType: $objectType, detailed: $detailed)';
}


}

/// @nodoc
abstract mixin class _$MainPairCopyWith<$Res> implements $MainPairCopyWith<$Res> {
  factory _$MainPairCopyWith(_MainPair value, $Res Function(_MainPair) _then) = __$MainPairCopyWithImpl;
@override @useResult
$Res call({
 String? pairId, String? imageId, String? detailedId, String? position, String? objectId, String? objectType, Detailed? detailed
});


@override $DetailedCopyWith<$Res>? get detailed;

}
/// @nodoc
class __$MainPairCopyWithImpl<$Res>
    implements _$MainPairCopyWith<$Res> {
  __$MainPairCopyWithImpl(this._self, this._then);

  final _MainPair _self;
  final $Res Function(_MainPair) _then;

/// Create a copy of MainPair
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pairId = freezed,Object? imageId = freezed,Object? detailedId = freezed,Object? position = freezed,Object? objectId = freezed,Object? objectType = freezed,Object? detailed = freezed,}) {
  return _then(_MainPair(
pairId: freezed == pairId ? _self.pairId : pairId // ignore: cast_nullable_to_non_nullable
as String?,imageId: freezed == imageId ? _self.imageId : imageId // ignore: cast_nullable_to_non_nullable
as String?,detailedId: freezed == detailedId ? _self.detailedId : detailedId // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,objectType: freezed == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String?,detailed: freezed == detailed ? _self.detailed : detailed // ignore: cast_nullable_to_non_nullable
as Detailed?,
  ));
}

/// Create a copy of MainPair
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DetailedCopyWith<$Res>? get detailed {
    if (_self.detailed == null) {
    return null;
  }

  return $DetailedCopyWith<$Res>(_self.detailed!, (value) {
    return _then(_self.copyWith(detailed: value));
  });
}
}

// dart format on
