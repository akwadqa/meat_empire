// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_login')
  String get userLogin => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_state')
  String? get bllingCity => throw _privateConstructorUsedError;
  @JsonKey(name: 's_state')
  String? get shippingCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_address')
  String? get billingStrete => throw _privateConstructorUsedError;
  @JsonKey(name: 's_address')
  String? get shippingStrete => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_zipcode')
  String? get billingCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 's_zipcode')
  String? get shippingCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_country')
  String? get defaultBillingCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 's_country')
  String? get defaultShippingCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_address_2')
  String? get billingBuildingNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 's_address_2')
  String? get shippingBuildingNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 's_address_type')
  String? get shippingBuildingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_name')
  String? get profileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'points')
  int get points => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
    UserProfile value,
    $Res Function(UserProfile) then,
  ) = _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') String userId,
    String status,
    @JsonKey(name: 'user_type') String userType,
    @JsonKey(name: 'user_login') String userLogin,
    String firstname,
    String lastname,
    String email,
    String phone,
    String password,
    @JsonKey(name: 'b_state') String? bllingCity,
    @JsonKey(name: 's_state') String? shippingCity,
    @JsonKey(name: 'b_address') String? billingStrete,
    @JsonKey(name: 's_address') String? shippingStrete,
    @JsonKey(name: 'b_zipcode') String? billingCountry,
    @JsonKey(name: 's_zipcode') String? shippingCountry,
    @JsonKey(name: 'b_country') String? defaultBillingCountry,
    @JsonKey(name: 's_country') String? defaultShippingCountry,
    @JsonKey(name: 'b_address_2') String? billingBuildingNumber,
    @JsonKey(name: 's_address_2') String? shippingBuildingNumber,
    @JsonKey(name: 's_address_type') String? shippingBuildingType,
    @JsonKey(name: 'profile_name') String? profileName,
    @JsonKey(name: 'points') int points,
  });
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? status = null,
    Object? userType = null,
    Object? userLogin = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
    Object? bllingCity = freezed,
    Object? shippingCity = freezed,
    Object? billingStrete = freezed,
    Object? shippingStrete = freezed,
    Object? billingCountry = freezed,
    Object? shippingCountry = freezed,
    Object? defaultBillingCountry = freezed,
    Object? defaultShippingCountry = freezed,
    Object? billingBuildingNumber = freezed,
    Object? shippingBuildingNumber = freezed,
    Object? shippingBuildingType = freezed,
    Object? profileName = freezed,
    Object? points = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            userType: null == userType
                ? _value.userType
                : userType // ignore: cast_nullable_to_non_nullable
                      as String,
            userLogin: null == userLogin
                ? _value.userLogin
                : userLogin // ignore: cast_nullable_to_non_nullable
                      as String,
            firstname: null == firstname
                ? _value.firstname
                : firstname // ignore: cast_nullable_to_non_nullable
                      as String,
            lastname: null == lastname
                ? _value.lastname
                : lastname // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            bllingCity: freezed == bllingCity
                ? _value.bllingCity
                : bllingCity // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingCity: freezed == shippingCity
                ? _value.shippingCity
                : shippingCity // ignore: cast_nullable_to_non_nullable
                      as String?,
            billingStrete: freezed == billingStrete
                ? _value.billingStrete
                : billingStrete // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingStrete: freezed == shippingStrete
                ? _value.shippingStrete
                : shippingStrete // ignore: cast_nullable_to_non_nullable
                      as String?,
            billingCountry: freezed == billingCountry
                ? _value.billingCountry
                : billingCountry // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingCountry: freezed == shippingCountry
                ? _value.shippingCountry
                : shippingCountry // ignore: cast_nullable_to_non_nullable
                      as String?,
            defaultBillingCountry: freezed == defaultBillingCountry
                ? _value.defaultBillingCountry
                : defaultBillingCountry // ignore: cast_nullable_to_non_nullable
                      as String?,
            defaultShippingCountry: freezed == defaultShippingCountry
                ? _value.defaultShippingCountry
                : defaultShippingCountry // ignore: cast_nullable_to_non_nullable
                      as String?,
            billingBuildingNumber: freezed == billingBuildingNumber
                ? _value.billingBuildingNumber
                : billingBuildingNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingBuildingNumber: freezed == shippingBuildingNumber
                ? _value.shippingBuildingNumber
                : shippingBuildingNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingBuildingType: freezed == shippingBuildingType
                ? _value.shippingBuildingType
                : shippingBuildingType // ignore: cast_nullable_to_non_nullable
                      as String?,
            profileName: freezed == profileName
                ? _value.profileName
                : profileName // ignore: cast_nullable_to_non_nullable
                      as String?,
            points: null == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
    _$UserProfileImpl value,
    $Res Function(_$UserProfileImpl) then,
  ) = __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') String userId,
    String status,
    @JsonKey(name: 'user_type') String userType,
    @JsonKey(name: 'user_login') String userLogin,
    String firstname,
    String lastname,
    String email,
    String phone,
    String password,
    @JsonKey(name: 'b_state') String? bllingCity,
    @JsonKey(name: 's_state') String? shippingCity,
    @JsonKey(name: 'b_address') String? billingStrete,
    @JsonKey(name: 's_address') String? shippingStrete,
    @JsonKey(name: 'b_zipcode') String? billingCountry,
    @JsonKey(name: 's_zipcode') String? shippingCountry,
    @JsonKey(name: 'b_country') String? defaultBillingCountry,
    @JsonKey(name: 's_country') String? defaultShippingCountry,
    @JsonKey(name: 'b_address_2') String? billingBuildingNumber,
    @JsonKey(name: 's_address_2') String? shippingBuildingNumber,
    @JsonKey(name: 's_address_type') String? shippingBuildingType,
    @JsonKey(name: 'profile_name') String? profileName,
    @JsonKey(name: 'points') int points,
  });
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
    _$UserProfileImpl _value,
    $Res Function(_$UserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? status = null,
    Object? userType = null,
    Object? userLogin = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
    Object? bllingCity = freezed,
    Object? shippingCity = freezed,
    Object? billingStrete = freezed,
    Object? shippingStrete = freezed,
    Object? billingCountry = freezed,
    Object? shippingCountry = freezed,
    Object? defaultBillingCountry = freezed,
    Object? defaultShippingCountry = freezed,
    Object? billingBuildingNumber = freezed,
    Object? shippingBuildingNumber = freezed,
    Object? shippingBuildingType = freezed,
    Object? profileName = freezed,
    Object? points = null,
  }) {
    return _then(
      _$UserProfileImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        userType: null == userType
            ? _value.userType
            : userType // ignore: cast_nullable_to_non_nullable
                  as String,
        userLogin: null == userLogin
            ? _value.userLogin
            : userLogin // ignore: cast_nullable_to_non_nullable
                  as String,
        firstname: null == firstname
            ? _value.firstname
            : firstname // ignore: cast_nullable_to_non_nullable
                  as String,
        lastname: null == lastname
            ? _value.lastname
            : lastname // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        bllingCity: freezed == bllingCity
            ? _value.bllingCity
            : bllingCity // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingCity: freezed == shippingCity
            ? _value.shippingCity
            : shippingCity // ignore: cast_nullable_to_non_nullable
                  as String?,
        billingStrete: freezed == billingStrete
            ? _value.billingStrete
            : billingStrete // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingStrete: freezed == shippingStrete
            ? _value.shippingStrete
            : shippingStrete // ignore: cast_nullable_to_non_nullable
                  as String?,
        billingCountry: freezed == billingCountry
            ? _value.billingCountry
            : billingCountry // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingCountry: freezed == shippingCountry
            ? _value.shippingCountry
            : shippingCountry // ignore: cast_nullable_to_non_nullable
                  as String?,
        defaultBillingCountry: freezed == defaultBillingCountry
            ? _value.defaultBillingCountry
            : defaultBillingCountry // ignore: cast_nullable_to_non_nullable
                  as String?,
        defaultShippingCountry: freezed == defaultShippingCountry
            ? _value.defaultShippingCountry
            : defaultShippingCountry // ignore: cast_nullable_to_non_nullable
                  as String?,
        billingBuildingNumber: freezed == billingBuildingNumber
            ? _value.billingBuildingNumber
            : billingBuildingNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingBuildingNumber: freezed == shippingBuildingNumber
            ? _value.shippingBuildingNumber
            : shippingBuildingNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingBuildingType: freezed == shippingBuildingType
            ? _value.shippingBuildingType
            : shippingBuildingType // ignore: cast_nullable_to_non_nullable
                  as String?,
        profileName: freezed == profileName
            ? _value.profileName
            : profileName // ignore: cast_nullable_to_non_nullable
                  as String?,
        points: null == points
            ? _value.points
            : points // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl({
    @JsonKey(name: 'user_id') required this.userId,
    required this.status,
    @JsonKey(name: 'user_type') required this.userType,
    @JsonKey(name: 'user_login') required this.userLogin,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.phone,
    required this.password,
    @JsonKey(name: 'b_state') this.bllingCity,
    @JsonKey(name: 's_state') this.shippingCity,
    @JsonKey(name: 'b_address') this.billingStrete,
    @JsonKey(name: 's_address') this.shippingStrete,
    @JsonKey(name: 'b_zipcode') this.billingCountry,
    @JsonKey(name: 's_zipcode') this.shippingCountry,
    @JsonKey(name: 'b_country') this.defaultBillingCountry,
    @JsonKey(name: 's_country') this.defaultShippingCountry,
    @JsonKey(name: 'b_address_2') this.billingBuildingNumber,
    @JsonKey(name: 's_address_2') this.shippingBuildingNumber,
    @JsonKey(name: 's_address_type') this.shippingBuildingType,
    @JsonKey(name: 'profile_name') this.profileName,
    @JsonKey(name: 'points') this.points = 0,
  });

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String status;
  @override
  @JsonKey(name: 'user_type')
  final String userType;
  @override
  @JsonKey(name: 'user_login')
  final String userLogin;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String password;
  @override
  @JsonKey(name: 'b_state')
  final String? bllingCity;
  @override
  @JsonKey(name: 's_state')
  final String? shippingCity;
  @override
  @JsonKey(name: 'b_address')
  final String? billingStrete;
  @override
  @JsonKey(name: 's_address')
  final String? shippingStrete;
  @override
  @JsonKey(name: 'b_zipcode')
  final String? billingCountry;
  @override
  @JsonKey(name: 's_zipcode')
  final String? shippingCountry;
  @override
  @JsonKey(name: 'b_country')
  final String? defaultBillingCountry;
  @override
  @JsonKey(name: 's_country')
  final String? defaultShippingCountry;
  @override
  @JsonKey(name: 'b_address_2')
  final String? billingBuildingNumber;
  @override
  @JsonKey(name: 's_address_2')
  final String? shippingBuildingNumber;
  @override
  @JsonKey(name: 's_address_type')
  final String? shippingBuildingType;
  @override
  @JsonKey(name: 'profile_name')
  final String? profileName;
  @override
  @JsonKey(name: 'points')
  final int points;

  @override
  String toString() {
    return 'UserProfile(userId: $userId, status: $status, userType: $userType, userLogin: $userLogin, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, password: $password, bllingCity: $bllingCity, shippingCity: $shippingCity, billingStrete: $billingStrete, shippingStrete: $shippingStrete, billingCountry: $billingCountry, shippingCountry: $shippingCountry, defaultBillingCountry: $defaultBillingCountry, defaultShippingCountry: $defaultShippingCountry, billingBuildingNumber: $billingBuildingNumber, shippingBuildingNumber: $shippingBuildingNumber, shippingBuildingType: $shippingBuildingType, profileName: $profileName, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.bllingCity, bllingCity) ||
                other.bllingCity == bllingCity) &&
            (identical(other.shippingCity, shippingCity) ||
                other.shippingCity == shippingCity) &&
            (identical(other.billingStrete, billingStrete) ||
                other.billingStrete == billingStrete) &&
            (identical(other.shippingStrete, shippingStrete) ||
                other.shippingStrete == shippingStrete) &&
            (identical(other.billingCountry, billingCountry) ||
                other.billingCountry == billingCountry) &&
            (identical(other.shippingCountry, shippingCountry) ||
                other.shippingCountry == shippingCountry) &&
            (identical(other.defaultBillingCountry, defaultBillingCountry) ||
                other.defaultBillingCountry == defaultBillingCountry) &&
            (identical(other.defaultShippingCountry, defaultShippingCountry) ||
                other.defaultShippingCountry == defaultShippingCountry) &&
            (identical(other.billingBuildingNumber, billingBuildingNumber) ||
                other.billingBuildingNumber == billingBuildingNumber) &&
            (identical(other.shippingBuildingNumber, shippingBuildingNumber) ||
                other.shippingBuildingNumber == shippingBuildingNumber) &&
            (identical(other.shippingBuildingType, shippingBuildingType) ||
                other.shippingBuildingType == shippingBuildingType) &&
            (identical(other.profileName, profileName) ||
                other.profileName == profileName) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    userId,
    status,
    userType,
    userLogin,
    firstname,
    lastname,
    email,
    phone,
    password,
    bllingCity,
    shippingCity,
    billingStrete,
    shippingStrete,
    billingCountry,
    shippingCountry,
    defaultBillingCountry,
    defaultShippingCountry,
    billingBuildingNumber,
    shippingBuildingNumber,
    shippingBuildingType,
    profileName,
    points,
  ]);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(this);
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile({
    @JsonKey(name: 'user_id') required final String userId,
    required final String status,
    @JsonKey(name: 'user_type') required final String userType,
    @JsonKey(name: 'user_login') required final String userLogin,
    required final String firstname,
    required final String lastname,
    required final String email,
    required final String phone,
    required final String password,
    @JsonKey(name: 'b_state') final String? bllingCity,
    @JsonKey(name: 's_state') final String? shippingCity,
    @JsonKey(name: 'b_address') final String? billingStrete,
    @JsonKey(name: 's_address') final String? shippingStrete,
    @JsonKey(name: 'b_zipcode') final String? billingCountry,
    @JsonKey(name: 's_zipcode') final String? shippingCountry,
    @JsonKey(name: 'b_country') final String? defaultBillingCountry,
    @JsonKey(name: 's_country') final String? defaultShippingCountry,
    @JsonKey(name: 'b_address_2') final String? billingBuildingNumber,
    @JsonKey(name: 's_address_2') final String? shippingBuildingNumber,
    @JsonKey(name: 's_address_type') final String? shippingBuildingType,
    @JsonKey(name: 'profile_name') final String? profileName,
    @JsonKey(name: 'points') final int points,
  }) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get status;
  @override
  @JsonKey(name: 'user_type')
  String get userType;
  @override
  @JsonKey(name: 'user_login')
  String get userLogin;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get password;
  @override
  @JsonKey(name: 'b_state')
  String? get bllingCity;
  @override
  @JsonKey(name: 's_state')
  String? get shippingCity;
  @override
  @JsonKey(name: 'b_address')
  String? get billingStrete;
  @override
  @JsonKey(name: 's_address')
  String? get shippingStrete;
  @override
  @JsonKey(name: 'b_zipcode')
  String? get billingCountry;
  @override
  @JsonKey(name: 's_zipcode')
  String? get shippingCountry;
  @override
  @JsonKey(name: 'b_country')
  String? get defaultBillingCountry;
  @override
  @JsonKey(name: 's_country')
  String? get defaultShippingCountry;
  @override
  @JsonKey(name: 'b_address_2')
  String? get billingBuildingNumber;
  @override
  @JsonKey(name: 's_address_2')
  String? get shippingBuildingNumber;
  @override
  @JsonKey(name: 's_address_type')
  String? get shippingBuildingType;
  @override
  @JsonKey(name: 'profile_name')
  String? get profileName;
  @override
  @JsonKey(name: 'points')
  int get points;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
