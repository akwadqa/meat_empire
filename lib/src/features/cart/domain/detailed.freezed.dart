// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Detailed {

 String? get objectId; String? get objectType; String? get type; String? get imagePath; String? get alt; String? get imageX; String? get imageY; String? get httpImagePath; String? get httpsImagePath; String? get absolutePath; String? get relativePath; bool? get isHighRes;
/// Create a copy of Detailed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailedCopyWith<Detailed> get copyWith => _$DetailedCopyWithImpl<Detailed>(this as Detailed, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Detailed&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.type, type) || other.type == type)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.alt, alt) || other.alt == alt)&&(identical(other.imageX, imageX) || other.imageX == imageX)&&(identical(other.imageY, imageY) || other.imageY == imageY)&&(identical(other.httpImagePath, httpImagePath) || other.httpImagePath == httpImagePath)&&(identical(other.httpsImagePath, httpsImagePath) || other.httpsImagePath == httpsImagePath)&&(identical(other.absolutePath, absolutePath) || other.absolutePath == absolutePath)&&(identical(other.relativePath, relativePath) || other.relativePath == relativePath)&&(identical(other.isHighRes, isHighRes) || other.isHighRes == isHighRes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectId,objectType,type,imagePath,alt,imageX,imageY,httpImagePath,httpsImagePath,absolutePath,relativePath,isHighRes);

@override
String toString() {
  return 'Detailed(objectId: $objectId, objectType: $objectType, type: $type, imagePath: $imagePath, alt: $alt, imageX: $imageX, imageY: $imageY, httpImagePath: $httpImagePath, httpsImagePath: $httpsImagePath, absolutePath: $absolutePath, relativePath: $relativePath, isHighRes: $isHighRes)';
}


}

/// @nodoc
abstract mixin class $DetailedCopyWith<$Res>  {
  factory $DetailedCopyWith(Detailed value, $Res Function(Detailed) _then) = _$DetailedCopyWithImpl;
@useResult
$Res call({
 String? objectId, String? objectType, String? type, String? imagePath, String? alt, String? imageX, String? imageY, String? httpImagePath, String? httpsImagePath, String? absolutePath, String? relativePath, bool? isHighRes
});




}
/// @nodoc
class _$DetailedCopyWithImpl<$Res>
    implements $DetailedCopyWith<$Res> {
  _$DetailedCopyWithImpl(this._self, this._then);

  final Detailed _self;
  final $Res Function(Detailed) _then;

/// Create a copy of Detailed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectId = freezed,Object? objectType = freezed,Object? type = freezed,Object? imagePath = freezed,Object? alt = freezed,Object? imageX = freezed,Object? imageY = freezed,Object? httpImagePath = freezed,Object? httpsImagePath = freezed,Object? absolutePath = freezed,Object? relativePath = freezed,Object? isHighRes = freezed,}) {
  return _then(_self.copyWith(
objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,objectType: freezed == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,alt: freezed == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as String?,imageX: freezed == imageX ? _self.imageX : imageX // ignore: cast_nullable_to_non_nullable
as String?,imageY: freezed == imageY ? _self.imageY : imageY // ignore: cast_nullable_to_non_nullable
as String?,httpImagePath: freezed == httpImagePath ? _self.httpImagePath : httpImagePath // ignore: cast_nullable_to_non_nullable
as String?,httpsImagePath: freezed == httpsImagePath ? _self.httpsImagePath : httpsImagePath // ignore: cast_nullable_to_non_nullable
as String?,absolutePath: freezed == absolutePath ? _self.absolutePath : absolutePath // ignore: cast_nullable_to_non_nullable
as String?,relativePath: freezed == relativePath ? _self.relativePath : relativePath // ignore: cast_nullable_to_non_nullable
as String?,isHighRes: freezed == isHighRes ? _self.isHighRes : isHighRes // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Detailed].
extension DetailedPatterns on Detailed {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Detailed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Detailed() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Detailed value)  $default,){
final _that = this;
switch (_that) {
case _Detailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Detailed value)?  $default,){
final _that = this;
switch (_that) {
case _Detailed() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? objectId,  String? objectType,  String? type,  String? imagePath,  String? alt,  String? imageX,  String? imageY,  String? httpImagePath,  String? httpsImagePath,  String? absolutePath,  String? relativePath,  bool? isHighRes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Detailed() when $default != null:
return $default(_that.objectId,_that.objectType,_that.type,_that.imagePath,_that.alt,_that.imageX,_that.imageY,_that.httpImagePath,_that.httpsImagePath,_that.absolutePath,_that.relativePath,_that.isHighRes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? objectId,  String? objectType,  String? type,  String? imagePath,  String? alt,  String? imageX,  String? imageY,  String? httpImagePath,  String? httpsImagePath,  String? absolutePath,  String? relativePath,  bool? isHighRes)  $default,) {final _that = this;
switch (_that) {
case _Detailed():
return $default(_that.objectId,_that.objectType,_that.type,_that.imagePath,_that.alt,_that.imageX,_that.imageY,_that.httpImagePath,_that.httpsImagePath,_that.absolutePath,_that.relativePath,_that.isHighRes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? objectId,  String? objectType,  String? type,  String? imagePath,  String? alt,  String? imageX,  String? imageY,  String? httpImagePath,  String? httpsImagePath,  String? absolutePath,  String? relativePath,  bool? isHighRes)?  $default,) {final _that = this;
switch (_that) {
case _Detailed() when $default != null:
return $default(_that.objectId,_that.objectType,_that.type,_that.imagePath,_that.alt,_that.imageX,_that.imageY,_that.httpImagePath,_that.httpsImagePath,_that.absolutePath,_that.relativePath,_that.isHighRes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Detailed implements Detailed {
   _Detailed({this.objectId, this.objectType, this.type, this.imagePath, this.alt, this.imageX, this.imageY, this.httpImagePath, this.httpsImagePath, this.absolutePath, this.relativePath, this.isHighRes});
  factory _Detailed.fromJson(Map<String, dynamic> json) => _$DetailedFromJson(json);

@override final  String? objectId;
@override final  String? objectType;
@override final  String? type;
@override final  String? imagePath;
@override final  String? alt;
@override final  String? imageX;
@override final  String? imageY;
@override final  String? httpImagePath;
@override final  String? httpsImagePath;
@override final  String? absolutePath;
@override final  String? relativePath;
@override final  bool? isHighRes;

/// Create a copy of Detailed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailedCopyWith<_Detailed> get copyWith => __$DetailedCopyWithImpl<_Detailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Detailed&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.type, type) || other.type == type)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.alt, alt) || other.alt == alt)&&(identical(other.imageX, imageX) || other.imageX == imageX)&&(identical(other.imageY, imageY) || other.imageY == imageY)&&(identical(other.httpImagePath, httpImagePath) || other.httpImagePath == httpImagePath)&&(identical(other.httpsImagePath, httpsImagePath) || other.httpsImagePath == httpsImagePath)&&(identical(other.absolutePath, absolutePath) || other.absolutePath == absolutePath)&&(identical(other.relativePath, relativePath) || other.relativePath == relativePath)&&(identical(other.isHighRes, isHighRes) || other.isHighRes == isHighRes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectId,objectType,type,imagePath,alt,imageX,imageY,httpImagePath,httpsImagePath,absolutePath,relativePath,isHighRes);

@override
String toString() {
  return 'Detailed(objectId: $objectId, objectType: $objectType, type: $type, imagePath: $imagePath, alt: $alt, imageX: $imageX, imageY: $imageY, httpImagePath: $httpImagePath, httpsImagePath: $httpsImagePath, absolutePath: $absolutePath, relativePath: $relativePath, isHighRes: $isHighRes)';
}


}

/// @nodoc
abstract mixin class _$DetailedCopyWith<$Res> implements $DetailedCopyWith<$Res> {
  factory _$DetailedCopyWith(_Detailed value, $Res Function(_Detailed) _then) = __$DetailedCopyWithImpl;
@override @useResult
$Res call({
 String? objectId, String? objectType, String? type, String? imagePath, String? alt, String? imageX, String? imageY, String? httpImagePath, String? httpsImagePath, String? absolutePath, String? relativePath, bool? isHighRes
});




}
/// @nodoc
class __$DetailedCopyWithImpl<$Res>
    implements _$DetailedCopyWith<$Res> {
  __$DetailedCopyWithImpl(this._self, this._then);

  final _Detailed _self;
  final $Res Function(_Detailed) _then;

/// Create a copy of Detailed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectId = freezed,Object? objectType = freezed,Object? type = freezed,Object? imagePath = freezed,Object? alt = freezed,Object? imageX = freezed,Object? imageY = freezed,Object? httpImagePath = freezed,Object? httpsImagePath = freezed,Object? absolutePath = freezed,Object? relativePath = freezed,Object? isHighRes = freezed,}) {
  return _then(_Detailed(
objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,objectType: freezed == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,alt: freezed == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as String?,imageX: freezed == imageX ? _self.imageX : imageX // ignore: cast_nullable_to_non_nullable
as String?,imageY: freezed == imageY ? _self.imageY : imageY // ignore: cast_nullable_to_non_nullable
as String?,httpImagePath: freezed == httpImagePath ? _self.httpImagePath : httpImagePath // ignore: cast_nullable_to_non_nullable
as String?,httpsImagePath: freezed == httpsImagePath ? _self.httpsImagePath : httpsImagePath // ignore: cast_nullable_to_non_nullable
as String?,absolutePath: freezed == absolutePath ? _self.absolutePath : absolutePath // ignore: cast_nullable_to_non_nullable
as String?,relativePath: freezed == relativePath ? _self.relativePath : relativePath // ignore: cast_nullable_to_non_nullable
as String?,isHighRes: freezed == isHighRes ? _self.isHighRes : isHighRes // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
