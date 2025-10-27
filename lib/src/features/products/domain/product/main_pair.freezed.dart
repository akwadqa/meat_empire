// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MainPair _$MainPairFromJson(Map<String, dynamic> json) {
  return _MainPair.fromJson(json);
}

/// @nodoc
mixin _$MainPair {
  String get pairId => throw _privateConstructorUsedError;
  String get imageId => throw _privateConstructorUsedError;
  String get detailedId => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get objectId => throw _privateConstructorUsedError;
  String get objectType => throw _privateConstructorUsedError;
  Detailed get detailed => throw _privateConstructorUsedError;

  /// Create a copy of MainPair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainPairCopyWith<MainPair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPairCopyWith<$Res> {
  factory $MainPairCopyWith(MainPair value, $Res Function(MainPair) then) =
      _$MainPairCopyWithImpl<$Res, MainPair>;
  @useResult
  $Res call({
    String pairId,
    String imageId,
    String detailedId,
    String position,
    String objectId,
    String objectType,
    Detailed detailed,
  });

  $DetailedCopyWith<$Res> get detailed;
}

/// @nodoc
class _$MainPairCopyWithImpl<$Res, $Val extends MainPair>
    implements $MainPairCopyWith<$Res> {
  _$MainPairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainPair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pairId = null,
    Object? imageId = null,
    Object? detailedId = null,
    Object? position = null,
    Object? objectId = null,
    Object? objectType = null,
    Object? detailed = null,
  }) {
    return _then(
      _value.copyWith(
            pairId: null == pairId
                ? _value.pairId
                : pairId // ignore: cast_nullable_to_non_nullable
                      as String,
            imageId: null == imageId
                ? _value.imageId
                : imageId // ignore: cast_nullable_to_non_nullable
                      as String,
            detailedId: null == detailedId
                ? _value.detailedId
                : detailedId // ignore: cast_nullable_to_non_nullable
                      as String,
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as String,
            objectId: null == objectId
                ? _value.objectId
                : objectId // ignore: cast_nullable_to_non_nullable
                      as String,
            objectType: null == objectType
                ? _value.objectType
                : objectType // ignore: cast_nullable_to_non_nullable
                      as String,
            detailed: null == detailed
                ? _value.detailed
                : detailed // ignore: cast_nullable_to_non_nullable
                      as Detailed,
          )
          as $Val,
    );
  }

  /// Create a copy of MainPair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailedCopyWith<$Res> get detailed {
    return $DetailedCopyWith<$Res>(_value.detailed, (value) {
      return _then(_value.copyWith(detailed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainPairImplCopyWith<$Res>
    implements $MainPairCopyWith<$Res> {
  factory _$$MainPairImplCopyWith(
    _$MainPairImpl value,
    $Res Function(_$MainPairImpl) then,
  ) = __$$MainPairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String pairId,
    String imageId,
    String detailedId,
    String position,
    String objectId,
    String objectType,
    Detailed detailed,
  });

  @override
  $DetailedCopyWith<$Res> get detailed;
}

/// @nodoc
class __$$MainPairImplCopyWithImpl<$Res>
    extends _$MainPairCopyWithImpl<$Res, _$MainPairImpl>
    implements _$$MainPairImplCopyWith<$Res> {
  __$$MainPairImplCopyWithImpl(
    _$MainPairImpl _value,
    $Res Function(_$MainPairImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainPair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pairId = null,
    Object? imageId = null,
    Object? detailedId = null,
    Object? position = null,
    Object? objectId = null,
    Object? objectType = null,
    Object? detailed = null,
  }) {
    return _then(
      _$MainPairImpl(
        pairId: null == pairId
            ? _value.pairId
            : pairId // ignore: cast_nullable_to_non_nullable
                  as String,
        imageId: null == imageId
            ? _value.imageId
            : imageId // ignore: cast_nullable_to_non_nullable
                  as String,
        detailedId: null == detailedId
            ? _value.detailedId
            : detailedId // ignore: cast_nullable_to_non_nullable
                  as String,
        position: null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as String,
        objectId: null == objectId
            ? _value.objectId
            : objectId // ignore: cast_nullable_to_non_nullable
                  as String,
        objectType: null == objectType
            ? _value.objectType
            : objectType // ignore: cast_nullable_to_non_nullable
                  as String,
        detailed: null == detailed
            ? _value.detailed
            : detailed // ignore: cast_nullable_to_non_nullable
                  as Detailed,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$MainPairImpl implements _MainPair {
  _$MainPairImpl({
    required this.pairId,
    required this.imageId,
    required this.detailedId,
    required this.position,
    required this.objectId,
    required this.objectType,
    required this.detailed,
  });

  factory _$MainPairImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainPairImplFromJson(json);

  @override
  final String pairId;
  @override
  final String imageId;
  @override
  final String detailedId;
  @override
  final String position;
  @override
  final String objectId;
  @override
  final String objectType;
  @override
  final Detailed detailed;

  @override
  String toString() {
    return 'MainPair(pairId: $pairId, imageId: $imageId, detailedId: $detailedId, position: $position, objectId: $objectId, objectType: $objectType, detailed: $detailed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPairImpl &&
            (identical(other.pairId, pairId) || other.pairId == pairId) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.detailedId, detailedId) ||
                other.detailedId == detailedId) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.objectType, objectType) ||
                other.objectType == objectType) &&
            (identical(other.detailed, detailed) ||
                other.detailed == detailed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    pairId,
    imageId,
    detailedId,
    position,
    objectId,
    objectType,
    detailed,
  );

  /// Create a copy of MainPair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainPairImplCopyWith<_$MainPairImpl> get copyWith =>
      __$$MainPairImplCopyWithImpl<_$MainPairImpl>(this, _$identity);
}

abstract class _MainPair implements MainPair {
  factory _MainPair({
    required final String pairId,
    required final String imageId,
    required final String detailedId,
    required final String position,
    required final String objectId,
    required final String objectType,
    required final Detailed detailed,
  }) = _$MainPairImpl;

  factory _MainPair.fromJson(Map<String, dynamic> json) =
      _$MainPairImpl.fromJson;

  @override
  String get pairId;
  @override
  String get imageId;
  @override
  String get detailedId;
  @override
  String get position;
  @override
  String get objectId;
  @override
  String get objectType;
  @override
  Detailed get detailed;

  /// Create a copy of MainPair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainPairImplCopyWith<_$MainPairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
