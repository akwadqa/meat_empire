// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) {
  return _PaymentResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponse {
  bool? get allowMultipleProfiles => throw _privateConstructorUsedError;
  bool? get allowToApplyWallet => throw _privateConstructorUsedError;
  PaymentInfoEntity get paymentInfo => throw _privateConstructorUsedError;
  List<PaymentInfoEntity> get paymentMethods =>
      throw _privateConstructorUsedError;
  List<UserProfile>? get userProfiles => throw _privateConstructorUsedError;
  Cart? get cart => throw _privateConstructorUsedError;
  String? get totalProducts => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentResponseCopyWith<PaymentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseCopyWith<$Res> {
  factory $PaymentResponseCopyWith(
    PaymentResponse value,
    $Res Function(PaymentResponse) then,
  ) = _$PaymentResponseCopyWithImpl<$Res, PaymentResponse>;
  @useResult
  $Res call({
    bool? allowMultipleProfiles,
    bool? allowToApplyWallet,
    PaymentInfoEntity paymentInfo,
    List<PaymentInfoEntity> paymentMethods,
    List<UserProfile>? userProfiles,
    Cart? cart,
    String? totalProducts,
    String message,
    bool success,
  });

  $PaymentInfoEntityCopyWith<$Res> get paymentInfo;
  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res, $Val extends PaymentResponse>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowMultipleProfiles = freezed,
    Object? allowToApplyWallet = freezed,
    Object? paymentInfo = null,
    Object? paymentMethods = null,
    Object? userProfiles = freezed,
    Object? cart = freezed,
    Object? totalProducts = freezed,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(
      _value.copyWith(
            allowMultipleProfiles: freezed == allowMultipleProfiles
                ? _value.allowMultipleProfiles
                : allowMultipleProfiles // ignore: cast_nullable_to_non_nullable
                      as bool?,
            allowToApplyWallet: freezed == allowToApplyWallet
                ? _value.allowToApplyWallet
                : allowToApplyWallet // ignore: cast_nullable_to_non_nullable
                      as bool?,
            paymentInfo: null == paymentInfo
                ? _value.paymentInfo
                : paymentInfo // ignore: cast_nullable_to_non_nullable
                      as PaymentInfoEntity,
            paymentMethods: null == paymentMethods
                ? _value.paymentMethods
                : paymentMethods // ignore: cast_nullable_to_non_nullable
                      as List<PaymentInfoEntity>,
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
                      as String?,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentInfoEntityCopyWith<$Res> get paymentInfo {
    return $PaymentInfoEntityCopyWith<$Res>(_value.paymentInfo, (value) {
      return _then(_value.copyWith(paymentInfo: value) as $Val);
    });
  }

  /// Create a copy of PaymentResponse
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
abstract class _$$PaymentResponseImplCopyWith<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  factory _$$PaymentResponseImplCopyWith(
    _$PaymentResponseImpl value,
    $Res Function(_$PaymentResponseImpl) then,
  ) = __$$PaymentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool? allowMultipleProfiles,
    bool? allowToApplyWallet,
    PaymentInfoEntity paymentInfo,
    List<PaymentInfoEntity> paymentMethods,
    List<UserProfile>? userProfiles,
    Cart? cart,
    String? totalProducts,
    String message,
    bool success,
  });

  @override
  $PaymentInfoEntityCopyWith<$Res> get paymentInfo;
  @override
  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class __$$PaymentResponseImplCopyWithImpl<$Res>
    extends _$PaymentResponseCopyWithImpl<$Res, _$PaymentResponseImpl>
    implements _$$PaymentResponseImplCopyWith<$Res> {
  __$$PaymentResponseImplCopyWithImpl(
    _$PaymentResponseImpl _value,
    $Res Function(_$PaymentResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowMultipleProfiles = freezed,
    Object? allowToApplyWallet = freezed,
    Object? paymentInfo = null,
    Object? paymentMethods = null,
    Object? userProfiles = freezed,
    Object? cart = freezed,
    Object? totalProducts = freezed,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(
      _$PaymentResponseImpl(
        allowMultipleProfiles: freezed == allowMultipleProfiles
            ? _value.allowMultipleProfiles
            : allowMultipleProfiles // ignore: cast_nullable_to_non_nullable
                  as bool?,
        allowToApplyWallet: freezed == allowToApplyWallet
            ? _value.allowToApplyWallet
            : allowToApplyWallet // ignore: cast_nullable_to_non_nullable
                  as bool?,
        paymentInfo: null == paymentInfo
            ? _value.paymentInfo
            : paymentInfo // ignore: cast_nullable_to_non_nullable
                  as PaymentInfoEntity,
        paymentMethods: null == paymentMethods
            ? _value._paymentMethods
            : paymentMethods // ignore: cast_nullable_to_non_nullable
                  as List<PaymentInfoEntity>,
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
                  as String?,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$PaymentResponseImpl implements _PaymentResponse {
  _$PaymentResponseImpl({
    this.allowMultipleProfiles,
    this.allowToApplyWallet,
    required this.paymentInfo,
    required final List<PaymentInfoEntity> paymentMethods,
    final List<UserProfile>? userProfiles,
    this.cart,
    this.totalProducts,
    required this.message,
    required this.success,
  }) : _paymentMethods = paymentMethods,
       _userProfiles = userProfiles;

  factory _$PaymentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResponseImplFromJson(json);

  @override
  final bool? allowMultipleProfiles;
  @override
  final bool? allowToApplyWallet;
  @override
  final PaymentInfoEntity paymentInfo;
  final List<PaymentInfoEntity> _paymentMethods;
  @override
  List<PaymentInfoEntity> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

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
  final String? totalProducts;
  @override
  final String message;
  @override
  final bool success;

  @override
  String toString() {
    return 'PaymentResponse(allowMultipleProfiles: $allowMultipleProfiles, allowToApplyWallet: $allowToApplyWallet, paymentInfo: $paymentInfo, paymentMethods: $paymentMethods, userProfiles: $userProfiles, cart: $cart, totalProducts: $totalProducts, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResponseImpl &&
            (identical(other.allowMultipleProfiles, allowMultipleProfiles) ||
                other.allowMultipleProfiles == allowMultipleProfiles) &&
            (identical(other.allowToApplyWallet, allowToApplyWallet) ||
                other.allowToApplyWallet == allowToApplyWallet) &&
            (identical(other.paymentInfo, paymentInfo) ||
                other.paymentInfo == paymentInfo) &&
            const DeepCollectionEquality().equals(
              other._paymentMethods,
              _paymentMethods,
            ) &&
            const DeepCollectionEquality().equals(
              other._userProfiles,
              _userProfiles,
            ) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    allowMultipleProfiles,
    allowToApplyWallet,
    paymentInfo,
    const DeepCollectionEquality().hash(_paymentMethods),
    const DeepCollectionEquality().hash(_userProfiles),
    cart,
    totalProducts,
    message,
    success,
  );

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResponseImplCopyWith<_$PaymentResponseImpl> get copyWith =>
      __$$PaymentResponseImplCopyWithImpl<_$PaymentResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _PaymentResponse implements PaymentResponse {
  factory _PaymentResponse({
    final bool? allowMultipleProfiles,
    final bool? allowToApplyWallet,
    required final PaymentInfoEntity paymentInfo,
    required final List<PaymentInfoEntity> paymentMethods,
    final List<UserProfile>? userProfiles,
    final Cart? cart,
    final String? totalProducts,
    required final String message,
    required final bool success,
  }) = _$PaymentResponseImpl;

  factory _PaymentResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentResponseImpl.fromJson;

  @override
  bool? get allowMultipleProfiles;
  @override
  bool? get allowToApplyWallet;
  @override
  PaymentInfoEntity get paymentInfo;
  @override
  List<PaymentInfoEntity> get paymentMethods;
  @override
  List<UserProfile>? get userProfiles;
  @override
  Cart? get cart;
  @override
  String? get totalProducts;
  @override
  String get message;
  @override
  bool get success;

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentResponseImplCopyWith<_$PaymentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
