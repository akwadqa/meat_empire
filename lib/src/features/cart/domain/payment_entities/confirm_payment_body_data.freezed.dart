// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_payment_body_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConfirmPaymentBodyData _$ConfirmPaymentBodyDataFromJson(
  Map<String, dynamic> json,
) {
  return _ConfirmPaymentBodyData.fromJson(json);
}

/// @nodoc
mixin _$ConfirmPaymentBodyData {
  int get userId => throw _privateConstructorUsedError;
  int get selectedPaymentMethod => throw _privateConstructorUsedError;
  String get ecTimeSlot => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this ConfirmPaymentBodyData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmPaymentBodyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmPaymentBodyDataCopyWith<ConfirmPaymentBodyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPaymentBodyDataCopyWith<$Res> {
  factory $ConfirmPaymentBodyDataCopyWith(
    ConfirmPaymentBodyData value,
    $Res Function(ConfirmPaymentBodyData) then,
  ) = _$ConfirmPaymentBodyDataCopyWithImpl<$Res, ConfirmPaymentBodyData>;
  @useResult
  $Res call({
    int userId,
    int selectedPaymentMethod,
    String ecTimeSlot,
    String? notes,
  });
}

/// @nodoc
class _$ConfirmPaymentBodyDataCopyWithImpl<
  $Res,
  $Val extends ConfirmPaymentBodyData
>
    implements $ConfirmPaymentBodyDataCopyWith<$Res> {
  _$ConfirmPaymentBodyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmPaymentBodyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? selectedPaymentMethod = null,
    Object? ecTimeSlot = null,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            selectedPaymentMethod: null == selectedPaymentMethod
                ? _value.selectedPaymentMethod
                : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
                      as int,
            ecTimeSlot: null == ecTimeSlot
                ? _value.ecTimeSlot
                : ecTimeSlot // ignore: cast_nullable_to_non_nullable
                      as String,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConfirmPaymentBodyDataImplCopyWith<$Res>
    implements $ConfirmPaymentBodyDataCopyWith<$Res> {
  factory _$$ConfirmPaymentBodyDataImplCopyWith(
    _$ConfirmPaymentBodyDataImpl value,
    $Res Function(_$ConfirmPaymentBodyDataImpl) then,
  ) = __$$ConfirmPaymentBodyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int userId,
    int selectedPaymentMethod,
    String ecTimeSlot,
    String? notes,
  });
}

/// @nodoc
class __$$ConfirmPaymentBodyDataImplCopyWithImpl<$Res>
    extends
        _$ConfirmPaymentBodyDataCopyWithImpl<$Res, _$ConfirmPaymentBodyDataImpl>
    implements _$$ConfirmPaymentBodyDataImplCopyWith<$Res> {
  __$$ConfirmPaymentBodyDataImplCopyWithImpl(
    _$ConfirmPaymentBodyDataImpl _value,
    $Res Function(_$ConfirmPaymentBodyDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConfirmPaymentBodyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? selectedPaymentMethod = null,
    Object? ecTimeSlot = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$ConfirmPaymentBodyDataImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        selectedPaymentMethod: null == selectedPaymentMethod
            ? _value.selectedPaymentMethod
            : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
                  as int,
        ecTimeSlot: null == ecTimeSlot
            ? _value.ecTimeSlot
            : ecTimeSlot // ignore: cast_nullable_to_non_nullable
                  as String,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConfirmPaymentBodyDataImpl implements _ConfirmPaymentBodyData {
  const _$ConfirmPaymentBodyDataImpl({
    required this.userId,
    required this.selectedPaymentMethod,
    required this.ecTimeSlot,
    this.notes,
  });

  factory _$ConfirmPaymentBodyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmPaymentBodyDataImplFromJson(json);

  @override
  final int userId;
  @override
  final int selectedPaymentMethod;
  @override
  final String ecTimeSlot;
  @override
  final String? notes;

  @override
  String toString() {
    return 'ConfirmPaymentBodyData(userId: $userId, selectedPaymentMethod: $selectedPaymentMethod, ecTimeSlot: $ecTimeSlot, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPaymentBodyDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(other.ecTimeSlot, ecTimeSlot) ||
                other.ecTimeSlot == ecTimeSlot) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    selectedPaymentMethod,
    ecTimeSlot,
    notes,
  );

  /// Create a copy of ConfirmPaymentBodyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPaymentBodyDataImplCopyWith<_$ConfirmPaymentBodyDataImpl>
  get copyWith =>
      __$$ConfirmPaymentBodyDataImplCopyWithImpl<_$ConfirmPaymentBodyDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmPaymentBodyDataImplToJson(this);
  }
}

abstract class _ConfirmPaymentBodyData implements ConfirmPaymentBodyData {
  const factory _ConfirmPaymentBodyData({
    required final int userId,
    required final int selectedPaymentMethod,
    required final String ecTimeSlot,
    final String? notes,
  }) = _$ConfirmPaymentBodyDataImpl;

  factory _ConfirmPaymentBodyData.fromJson(Map<String, dynamic> json) =
      _$ConfirmPaymentBodyDataImpl.fromJson;

  @override
  int get userId;
  @override
  int get selectedPaymentMethod;
  @override
  String get ecTimeSlot;
  @override
  String? get notes;

  /// Create a copy of ConfirmPaymentBodyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmPaymentBodyDataImplCopyWith<_$ConfirmPaymentBodyDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
