// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliverySlot _$DeliverySlotFromJson(Map<String, dynamic> json) {
  return _DeliverySlot.fromJson(json);
}

/// @nodoc
mixin _$DeliverySlot {
  String? get date => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  String? get heading => throw _privateConstructorUsedError;
  String? get subheading => throw _privateConstructorUsedError;
  bool? get unavailable => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  List<Slot>? get slots => throw _privateConstructorUsedError;

  /// Create a copy of DeliverySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliverySlotCopyWith<DeliverySlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverySlotCopyWith<$Res> {
  factory $DeliverySlotCopyWith(
          DeliverySlot value, $Res Function(DeliverySlot) then) =
      _$DeliverySlotCopyWithImpl<$Res, DeliverySlot>;
  @useResult
  $Res call(
      {String? date,
      int? timestamp,
      String? heading,
      String? subheading,
      bool? unavailable,
      String? reason,
      List<Slot>? slots});
}

/// @nodoc
class _$DeliverySlotCopyWithImpl<$Res, $Val extends DeliverySlot>
    implements $DeliverySlotCopyWith<$Res> {
  _$DeliverySlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliverySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? timestamp = freezed,
    Object? heading = freezed,
    Object? subheading = freezed,
    Object? unavailable = freezed,
    Object? reason = freezed,
    Object? slots = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String?,
      subheading: freezed == subheading
          ? _value.subheading
          : subheading // ignore: cast_nullable_to_non_nullable
              as String?,
      unavailable: freezed == unavailable
          ? _value.unavailable
          : unavailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      slots: freezed == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<Slot>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliverySlotImplCopyWith<$Res>
    implements $DeliverySlotCopyWith<$Res> {
  factory _$$DeliverySlotImplCopyWith(
          _$DeliverySlotImpl value, $Res Function(_$DeliverySlotImpl) then) =
      __$$DeliverySlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      int? timestamp,
      String? heading,
      String? subheading,
      bool? unavailable,
      String? reason,
      List<Slot>? slots});
}

/// @nodoc
class __$$DeliverySlotImplCopyWithImpl<$Res>
    extends _$DeliverySlotCopyWithImpl<$Res, _$DeliverySlotImpl>
    implements _$$DeliverySlotImplCopyWith<$Res> {
  __$$DeliverySlotImplCopyWithImpl(
      _$DeliverySlotImpl _value, $Res Function(_$DeliverySlotImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliverySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? timestamp = freezed,
    Object? heading = freezed,
    Object? subheading = freezed,
    Object? unavailable = freezed,
    Object? reason = freezed,
    Object? slots = freezed,
  }) {
    return _then(_$DeliverySlotImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String?,
      subheading: freezed == subheading
          ? _value.subheading
          : subheading // ignore: cast_nullable_to_non_nullable
              as String?,
      unavailable: freezed == unavailable
          ? _value.unavailable
          : unavailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      slots: freezed == slots
          ? _value._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<Slot>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$DeliverySlotImpl implements _DeliverySlot {
  _$DeliverySlotImpl(
      {this.date,
      this.timestamp,
      this.heading,
      this.subheading,
      this.unavailable,
      this.reason,
      final List<Slot>? slots})
      : _slots = slots;

  factory _$DeliverySlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliverySlotImplFromJson(json);

  @override
  final String? date;
  @override
  final int? timestamp;
  @override
  final String? heading;
  @override
  final String? subheading;
  @override
  final bool? unavailable;
  @override
  final String? reason;
  final List<Slot>? _slots;
  @override
  List<Slot>? get slots {
    final value = _slots;
    if (value == null) return null;
    if (_slots is EqualUnmodifiableListView) return _slots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeliverySlot(date: $date, timestamp: $timestamp, heading: $heading, subheading: $subheading, unavailable: $unavailable, reason: $reason, slots: $slots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliverySlotImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.subheading, subheading) ||
                other.subheading == subheading) &&
            (identical(other.unavailable, unavailable) ||
                other.unavailable == unavailable) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            const DeepCollectionEquality().equals(other._slots, _slots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      timestamp,
      heading,
      subheading,
      unavailable,
      reason,
      const DeepCollectionEquality().hash(_slots));

  /// Create a copy of DeliverySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliverySlotImplCopyWith<_$DeliverySlotImpl> get copyWith =>
      __$$DeliverySlotImplCopyWithImpl<_$DeliverySlotImpl>(this, _$identity);
}

abstract class _DeliverySlot implements DeliverySlot {
  factory _DeliverySlot(
      {final String? date,
      final int? timestamp,
      final String? heading,
      final String? subheading,
      final bool? unavailable,
      final String? reason,
      final List<Slot>? slots}) = _$DeliverySlotImpl;

  factory _DeliverySlot.fromJson(Map<String, dynamic> json) =
      _$DeliverySlotImpl.fromJson;

  @override
  String? get date;
  @override
  int? get timestamp;
  @override
  String? get heading;
  @override
  String? get subheading;
  @override
  bool? get unavailable;
  @override
  String? get reason;
  @override
  List<Slot>? get slots;

  /// Create a copy of DeliverySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliverySlotImplCopyWith<_$DeliverySlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
