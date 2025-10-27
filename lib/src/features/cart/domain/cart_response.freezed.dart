// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CartResponse _$CartResponseFromJson(Map<String, dynamic> json) {
  return _CartResponse.fromJson(json);
}

/// @nodoc
mixin _$CartResponse {
  bool? get allowMultipleProfiles => throw _privateConstructorUsedError;
  List<UserProfile>? get userProfiles => throw _privateConstructorUsedError;
  Cart? get cart => throw _privateConstructorUsedError;
  dynamic get totalProducts => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartResponseCopyWith<CartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartResponseCopyWith<$Res> {
  factory $CartResponseCopyWith(
    CartResponse value,
    $Res Function(CartResponse) then,
  ) = _$CartResponseCopyWithImpl<$Res, CartResponse>;
  @useResult
  $Res call({
    bool? allowMultipleProfiles,
    List<UserProfile>? userProfiles,
    Cart? cart,
    dynamic totalProducts,
    String? message,
    bool? success,
  });

  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class _$CartResponseCopyWithImpl<$Res, $Val extends CartResponse>
    implements $CartResponseCopyWith<$Res> {
  _$CartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowMultipleProfiles = freezed,
    Object? userProfiles = freezed,
    Object? cart = freezed,
    Object? totalProducts = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(
      _value.copyWith(
            allowMultipleProfiles: freezed == allowMultipleProfiles
                ? _value.allowMultipleProfiles
                : allowMultipleProfiles // ignore: cast_nullable_to_non_nullable
                      as bool?,
            userProfiles: freezed == userProfiles
                ? _value.userProfiles
                : userProfiles // ignore: cast_nullable_to_non_nullable
                      as List<UserProfile>?,
            cart: freezed == cart
                ? _value.cart
                : cart // ignore: cast_nullable_to_non_nullable
                      as Cart?,
            totalProducts: freezed == totalProducts
                ? _value.totalProducts
                : totalProducts // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            success: freezed == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res>? get cart {
    if (_value.cart == null) {
      return null;
    }

    return $CartCopyWith<$Res>(_value.cart!, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartResponseImplCopyWith<$Res>
    implements $CartResponseCopyWith<$Res> {
  factory _$$CartResponseImplCopyWith(
    _$CartResponseImpl value,
    $Res Function(_$CartResponseImpl) then,
  ) = __$$CartResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool? allowMultipleProfiles,
    List<UserProfile>? userProfiles,
    Cart? cart,
    dynamic totalProducts,
    String? message,
    bool? success,
  });

  @override
  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class __$$CartResponseImplCopyWithImpl<$Res>
    extends _$CartResponseCopyWithImpl<$Res, _$CartResponseImpl>
    implements _$$CartResponseImplCopyWith<$Res> {
  __$$CartResponseImplCopyWithImpl(
    _$CartResponseImpl _value,
    $Res Function(_$CartResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowMultipleProfiles = freezed,
    Object? userProfiles = freezed,
    Object? cart = freezed,
    Object? totalProducts = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(
      _$CartResponseImpl(
        allowMultipleProfiles: freezed == allowMultipleProfiles
            ? _value.allowMultipleProfiles
            : allowMultipleProfiles // ignore: cast_nullable_to_non_nullable
                  as bool?,
        userProfiles: freezed == userProfiles
            ? _value._userProfiles
            : userProfiles // ignore: cast_nullable_to_non_nullable
                  as List<UserProfile>?,
        cart: freezed == cart
            ? _value.cart
            : cart // ignore: cast_nullable_to_non_nullable
                  as Cart?,
        totalProducts: freezed == totalProducts
            ? _value.totalProducts
            : totalProducts // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        success: freezed == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CartResponseImpl implements _CartResponse {
  _$CartResponseImpl({
    this.allowMultipleProfiles,
    final List<UserProfile>? userProfiles,
    this.cart,
    this.totalProducts,
    this.message,
    this.success,
  }) : _userProfiles = userProfiles;

  factory _$CartResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartResponseImplFromJson(json);

  @override
  final bool? allowMultipleProfiles;
  final List<UserProfile>? _userProfiles;
  @override
  List<UserProfile>? get userProfiles {
    final value = _userProfiles;
    if (value == null) return null;
    if (_userProfiles is EqualUnmodifiableListView) return _userProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Cart? cart;
  @override
  final dynamic totalProducts;
  @override
  final String? message;
  @override
  final bool? success;

  @override
  String toString() {
    return 'CartResponse(allowMultipleProfiles: $allowMultipleProfiles, userProfiles: $userProfiles, cart: $cart, totalProducts: $totalProducts, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartResponseImpl &&
            (identical(other.allowMultipleProfiles, allowMultipleProfiles) ||
                other.allowMultipleProfiles == allowMultipleProfiles) &&
            const DeepCollectionEquality().equals(
              other._userProfiles,
              _userProfiles,
            ) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            const DeepCollectionEquality().equals(
              other.totalProducts,
              totalProducts,
            ) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    allowMultipleProfiles,
    const DeepCollectionEquality().hash(_userProfiles),
    cart,
    const DeepCollectionEquality().hash(totalProducts),
    message,
    success,
  );

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartResponseImplCopyWith<_$CartResponseImpl> get copyWith =>
      __$$CartResponseImplCopyWithImpl<_$CartResponseImpl>(this, _$identity);
}

abstract class _CartResponse implements CartResponse {
  factory _CartResponse({
    final bool? allowMultipleProfiles,
    final List<UserProfile>? userProfiles,
    final Cart? cart,
    final dynamic totalProducts,
    final String? message,
    final bool? success,
  }) = _$CartResponseImpl;

  factory _CartResponse.fromJson(Map<String, dynamic> json) =
      _$CartResponseImpl.fromJson;

  @override
  bool? get allowMultipleProfiles;
  @override
  List<UserProfile>? get userProfiles;
  @override
  Cart? get cart;
  @override
  dynamic get totalProducts;
  @override
  String? get message;
  @override
  bool? get success;

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartResponseImplCopyWith<_$CartResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
