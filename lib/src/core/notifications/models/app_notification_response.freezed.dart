// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppNotificationResponse {

@JsonKey(name: "notification") NotificationModel get notification; String get message; bool get success;
/// Create a copy of AppNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppNotificationResponseCopyWith<AppNotificationResponse> get copyWith => _$AppNotificationResponseCopyWithImpl<AppNotificationResponse>(this as AppNotificationResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppNotificationResponse&&(identical(other.notification, notification) || other.notification == notification)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notification,message,success);

@override
String toString() {
  return 'AppNotificationResponse(notification: $notification, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $AppNotificationResponseCopyWith<$Res>  {
  factory $AppNotificationResponseCopyWith(AppNotificationResponse value, $Res Function(AppNotificationResponse) _then) = _$AppNotificationResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "notification") NotificationModel notification, String message, bool success
});


$NotificationModelCopyWith<$Res> get notification;

}
/// @nodoc
class _$AppNotificationResponseCopyWithImpl<$Res>
    implements $AppNotificationResponseCopyWith<$Res> {
  _$AppNotificationResponseCopyWithImpl(this._self, this._then);

  final AppNotificationResponse _self;
  final $Res Function(AppNotificationResponse) _then;

/// Create a copy of AppNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notification = null,Object? message = null,Object? success = null,}) {
  return _then(_self.copyWith(
notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as NotificationModel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AppNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<$Res> get notification {
  
  return $NotificationModelCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppNotificationResponse].
extension AppNotificationResponsePatterns on AppNotificationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppNotificationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppNotificationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppNotificationResponse value)  $default,){
final _that = this;
switch (_that) {
case _AppNotificationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppNotificationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AppNotificationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "notification")  NotificationModel notification,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppNotificationResponse() when $default != null:
return $default(_that.notification,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "notification")  NotificationModel notification,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _AppNotificationResponse():
return $default(_that.notification,_that.message,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "notification")  NotificationModel notification,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _AppNotificationResponse() when $default != null:
return $default(_that.notification,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _AppNotificationResponse implements AppNotificationResponse {
  const _AppNotificationResponse({@JsonKey(name: "notification") required this.notification, required this.message, required this.success});
  factory _AppNotificationResponse.fromJson(Map<String, dynamic> json) => _$AppNotificationResponseFromJson(json);

@override@JsonKey(name: "notification") final  NotificationModel notification;
@override final  String message;
@override final  bool success;

/// Create a copy of AppNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppNotificationResponseCopyWith<_AppNotificationResponse> get copyWith => __$AppNotificationResponseCopyWithImpl<_AppNotificationResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppNotificationResponse&&(identical(other.notification, notification) || other.notification == notification)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notification,message,success);

@override
String toString() {
  return 'AppNotificationResponse(notification: $notification, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$AppNotificationResponseCopyWith<$Res> implements $AppNotificationResponseCopyWith<$Res> {
  factory _$AppNotificationResponseCopyWith(_AppNotificationResponse value, $Res Function(_AppNotificationResponse) _then) = __$AppNotificationResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "notification") NotificationModel notification, String message, bool success
});


@override $NotificationModelCopyWith<$Res> get notification;

}
/// @nodoc
class __$AppNotificationResponseCopyWithImpl<$Res>
    implements _$AppNotificationResponseCopyWith<$Res> {
  __$AppNotificationResponseCopyWithImpl(this._self, this._then);

  final _AppNotificationResponse _self;
  final $Res Function(_AppNotificationResponse) _then;

/// Create a copy of AppNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notification = null,Object? message = null,Object? success = null,}) {
  return _then(_AppNotificationResponse(
notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as NotificationModel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AppNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<$Res> get notification {
  
  return $NotificationModelCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

// dart format on
