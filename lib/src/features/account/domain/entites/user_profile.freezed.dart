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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  @JsonKey(name: 'b_firstname')
  String? get bFirstname => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_lastname')
  String? get bLastname => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_address')
  String? get bAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_city')
  String? get bCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_state')
  String? get bState => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_country')
  String? get bCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_phone')
  String? get bPhone => throw _privateConstructorUsedError;
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
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      String status,
      @JsonKey(name: 'user_type') String userType,
      @JsonKey(name: 'user_login') String userLogin,
      String firstname,
      String lastname,
      String email,
      String phone,
      @JsonKey(name: 'b_firstname') String? bFirstname,
      @JsonKey(name: 'b_lastname') String? bLastname,
      @JsonKey(name: 'b_address') String? bAddress,
      @JsonKey(name: 'b_city') String? bCity,
      @JsonKey(name: 'b_state') String? bState,
      @JsonKey(name: 'b_country') String? bCountry,
      @JsonKey(name: 'b_phone') String? bPhone,
      @JsonKey(name: 'profile_name') String? profileName,
      @JsonKey(name: 'points') int points});
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
    Object? bFirstname = freezed,
    Object? bLastname = freezed,
    Object? bAddress = freezed,
    Object? bCity = freezed,
    Object? bState = freezed,
    Object? bCountry = freezed,
    Object? bPhone = freezed,
    Object? profileName = freezed,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
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
      bFirstname: freezed == bFirstname
          ? _value.bFirstname
          : bFirstname // ignore: cast_nullable_to_non_nullable
              as String?,
      bLastname: freezed == bLastname
          ? _value.bLastname
          : bLastname // ignore: cast_nullable_to_non_nullable
              as String?,
      bAddress: freezed == bAddress
          ? _value.bAddress
          : bAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      bCity: freezed == bCity
          ? _value.bCity
          : bCity // ignore: cast_nullable_to_non_nullable
              as String?,
      bState: freezed == bState
          ? _value.bState
          : bState // ignore: cast_nullable_to_non_nullable
              as String?,
      bCountry: freezed == bCountry
          ? _value.bCountry
          : bCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      bPhone: freezed == bPhone
          ? _value.bPhone
          : bPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileName: freezed == profileName
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String?,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      String status,
      @JsonKey(name: 'user_type') String userType,
      @JsonKey(name: 'user_login') String userLogin,
      String firstname,
      String lastname,
      String email,
      String phone,
      @JsonKey(name: 'b_firstname') String? bFirstname,
      @JsonKey(name: 'b_lastname') String? bLastname,
      @JsonKey(name: 'b_address') String? bAddress,
      @JsonKey(name: 'b_city') String? bCity,
      @JsonKey(name: 'b_state') String? bState,
      @JsonKey(name: 'b_country') String? bCountry,
      @JsonKey(name: 'b_phone') String? bPhone,
      @JsonKey(name: 'profile_name') String? profileName,
      @JsonKey(name: 'points') int points});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

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
    Object? bFirstname = freezed,
    Object? bLastname = freezed,
    Object? bAddress = freezed,
    Object? bCity = freezed,
    Object? bState = freezed,
    Object? bCountry = freezed,
    Object? bPhone = freezed,
    Object? profileName = freezed,
    Object? points = null,
  }) {
    return _then(_$UserProfileImpl(
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
      bFirstname: freezed == bFirstname
          ? _value.bFirstname
          : bFirstname // ignore: cast_nullable_to_non_nullable
              as String?,
      bLastname: freezed == bLastname
          ? _value.bLastname
          : bLastname // ignore: cast_nullable_to_non_nullable
              as String?,
      bAddress: freezed == bAddress
          ? _value.bAddress
          : bAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      bCity: freezed == bCity
          ? _value.bCity
          : bCity // ignore: cast_nullable_to_non_nullable
              as String?,
      bState: freezed == bState
          ? _value.bState
          : bState // ignore: cast_nullable_to_non_nullable
              as String?,
      bCountry: freezed == bCountry
          ? _value.bCountry
          : bCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      bPhone: freezed == bPhone
          ? _value.bPhone
          : bPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileName: freezed == profileName
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String?,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      required this.status,
      @JsonKey(name: 'user_type') required this.userType,
      @JsonKey(name: 'user_login') required this.userLogin,
      required this.firstname,
      required this.lastname,
      required this.email,
      required this.phone,
      @JsonKey(name: 'b_firstname') this.bFirstname,
      @JsonKey(name: 'b_lastname') this.bLastname,
      @JsonKey(name: 'b_address') this.bAddress,
      @JsonKey(name: 'b_city') this.bCity,
      @JsonKey(name: 'b_state') this.bState,
      @JsonKey(name: 'b_country') this.bCountry,
      @JsonKey(name: 'b_phone') this.bPhone,
      @JsonKey(name: 'profile_name') this.profileName,
      @JsonKey(name: 'points') this.points = 0});

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
  @JsonKey(name: 'b_firstname')
  final String? bFirstname;
  @override
  @JsonKey(name: 'b_lastname')
  final String? bLastname;
  @override
  @JsonKey(name: 'b_address')
  final String? bAddress;
  @override
  @JsonKey(name: 'b_city')
  final String? bCity;
  @override
  @JsonKey(name: 'b_state')
  final String? bState;
  @override
  @JsonKey(name: 'b_country')
  final String? bCountry;
  @override
  @JsonKey(name: 'b_phone')
  final String? bPhone;
  @override
  @JsonKey(name: 'profile_name')
  final String? profileName;
  @override
  @JsonKey(name: 'points')
  final int points;

  @override
  String toString() {
    return 'UserProfile(userId: $userId, status: $status, userType: $userType, userLogin: $userLogin, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, bFirstname: $bFirstname, bLastname: $bLastname, bAddress: $bAddress, bCity: $bCity, bState: $bState, bCountry: $bCountry, bPhone: $bPhone, profileName: $profileName, points: $points)';
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
            (identical(other.bFirstname, bFirstname) ||
                other.bFirstname == bFirstname) &&
            (identical(other.bLastname, bLastname) ||
                other.bLastname == bLastname) &&
            (identical(other.bAddress, bAddress) ||
                other.bAddress == bAddress) &&
            (identical(other.bCity, bCity) || other.bCity == bCity) &&
            (identical(other.bState, bState) || other.bState == bState) &&
            (identical(other.bCountry, bCountry) ||
                other.bCountry == bCountry) &&
            (identical(other.bPhone, bPhone) || other.bPhone == bPhone) &&
            (identical(other.profileName, profileName) ||
                other.profileName == profileName) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      status,
      userType,
      userLogin,
      firstname,
      lastname,
      email,
      phone,
      bFirstname,
      bLastname,
      bAddress,
      bCity,
      bState,
      bCountry,
      bPhone,
      profileName,
      points);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {@JsonKey(name: 'user_id') required final String userId,
      required final String status,
      @JsonKey(name: 'user_type') required final String userType,
      @JsonKey(name: 'user_login') required final String userLogin,
      required final String firstname,
      required final String lastname,
      required final String email,
      required final String phone,
      @JsonKey(name: 'b_firstname') final String? bFirstname,
      @JsonKey(name: 'b_lastname') final String? bLastname,
      @JsonKey(name: 'b_address') final String? bAddress,
      @JsonKey(name: 'b_city') final String? bCity,
      @JsonKey(name: 'b_state') final String? bState,
      @JsonKey(name: 'b_country') final String? bCountry,
      @JsonKey(name: 'b_phone') final String? bPhone,
      @JsonKey(name: 'profile_name') final String? profileName,
      @JsonKey(name: 'points') final int points}) = _$UserProfileImpl;

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
  @JsonKey(name: 'b_firstname')
  String? get bFirstname;
  @override
  @JsonKey(name: 'b_lastname')
  String? get bLastname;
  @override
  @JsonKey(name: 'b_address')
  String? get bAddress;
  @override
  @JsonKey(name: 'b_city')
  String? get bCity;
  @override
  @JsonKey(name: 'b_state')
  String? get bState;
  @override
  @JsonKey(name: 'b_country')
  String? get bCountry;
  @override
  @JsonKey(name: 'b_phone')
  String? get bPhone;
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
