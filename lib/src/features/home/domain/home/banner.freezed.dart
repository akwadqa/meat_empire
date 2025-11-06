// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Banner {

 String get id; String get name; String get type; String get position; String get locationId; String get status; String get descId; String get langCode; String get imagePath; LocationData get locationData;
/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerCopyWith<Banner> get copyWith => _$BannerCopyWithImpl<Banner>(this as Banner, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Banner&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.position, position) || other.position == position)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.descId, descId) || other.descId == descId)&&(identical(other.langCode, langCode) || other.langCode == langCode)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.locationData, locationData) || other.locationData == locationData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,position,locationId,status,descId,langCode,imagePath,locationData);

@override
String toString() {
  return 'Banner(id: $id, name: $name, type: $type, position: $position, locationId: $locationId, status: $status, descId: $descId, langCode: $langCode, imagePath: $imagePath, locationData: $locationData)';
}


}

/// @nodoc
abstract mixin class $BannerCopyWith<$Res>  {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) _then) = _$BannerCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, String position, String locationId, String status, String descId, String langCode, String imagePath, LocationData locationData
});


$LocationDataCopyWith<$Res> get locationData;

}
/// @nodoc
class _$BannerCopyWithImpl<$Res>
    implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._self, this._then);

  final Banner _self;
  final $Res Function(Banner) _then;

/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? position = null,Object? locationId = null,Object? status = null,Object? descId = null,Object? langCode = null,Object? imagePath = null,Object? locationData = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,descId: null == descId ? _self.descId : descId // ignore: cast_nullable_to_non_nullable
as String,langCode: null == langCode ? _self.langCode : langCode // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,locationData: null == locationData ? _self.locationData : locationData // ignore: cast_nullable_to_non_nullable
as LocationData,
  ));
}
/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDataCopyWith<$Res> get locationData {
  
  return $LocationDataCopyWith<$Res>(_self.locationData, (value) {
    return _then(_self.copyWith(locationData: value));
  });
}
}


/// Adds pattern-matching-related methods to [Banner].
extension BannerPatterns on Banner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Banner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Banner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Banner value)  $default,){
final _that = this;
switch (_that) {
case _Banner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Banner value)?  $default,){
final _that = this;
switch (_that) {
case _Banner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String position,  String locationId,  String status,  String descId,  String langCode,  String imagePath,  LocationData locationData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Banner() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.position,_that.locationId,_that.status,_that.descId,_that.langCode,_that.imagePath,_that.locationData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String position,  String locationId,  String status,  String descId,  String langCode,  String imagePath,  LocationData locationData)  $default,) {final _that = this;
switch (_that) {
case _Banner():
return $default(_that.id,_that.name,_that.type,_that.position,_that.locationId,_that.status,_that.descId,_that.langCode,_that.imagePath,_that.locationData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  String position,  String locationId,  String status,  String descId,  String langCode,  String imagePath,  LocationData locationData)?  $default,) {final _that = this;
switch (_that) {
case _Banner() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.position,_that.locationId,_that.status,_that.descId,_that.langCode,_that.imagePath,_that.locationData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Banner implements Banner {
   _Banner({required this.id, required this.name, required this.type, required this.position, required this.locationId, required this.status, required this.descId, required this.langCode, required this.imagePath, required this.locationData});
  factory _Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);

@override final  String id;
@override final  String name;
@override final  String type;
@override final  String position;
@override final  String locationId;
@override final  String status;
@override final  String descId;
@override final  String langCode;
@override final  String imagePath;
@override final  LocationData locationData;

/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerCopyWith<_Banner> get copyWith => __$BannerCopyWithImpl<_Banner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Banner&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.position, position) || other.position == position)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.descId, descId) || other.descId == descId)&&(identical(other.langCode, langCode) || other.langCode == langCode)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.locationData, locationData) || other.locationData == locationData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,position,locationId,status,descId,langCode,imagePath,locationData);

@override
String toString() {
  return 'Banner(id: $id, name: $name, type: $type, position: $position, locationId: $locationId, status: $status, descId: $descId, langCode: $langCode, imagePath: $imagePath, locationData: $locationData)';
}


}

/// @nodoc
abstract mixin class _$BannerCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$BannerCopyWith(_Banner value, $Res Function(_Banner) _then) = __$BannerCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, String position, String locationId, String status, String descId, String langCode, String imagePath, LocationData locationData
});


@override $LocationDataCopyWith<$Res> get locationData;

}
/// @nodoc
class __$BannerCopyWithImpl<$Res>
    implements _$BannerCopyWith<$Res> {
  __$BannerCopyWithImpl(this._self, this._then);

  final _Banner _self;
  final $Res Function(_Banner) _then;

/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? position = null,Object? locationId = null,Object? status = null,Object? descId = null,Object? langCode = null,Object? imagePath = null,Object? locationData = null,}) {
  return _then(_Banner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,descId: null == descId ? _self.descId : descId // ignore: cast_nullable_to_non_nullable
as String,langCode: null == langCode ? _self.langCode : langCode // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,locationData: null == locationData ? _self.locationData : locationData // ignore: cast_nullable_to_non_nullable
as LocationData,
  ));
}

/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDataCopyWith<$Res> get locationData {
  
  return $LocationDataCopyWith<$Res>(_self.locationData, (value) {
    return _then(_self.copyWith(locationData: value));
  });
}
}

// dart format on
