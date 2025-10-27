// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Slot _$SlotFromJson(Map<String, dynamic> json) {
  return _Slot.fromJson(json);
}

/// @nodoc
mixin _$Slot {
  String? get slot => throw _privateConstructorUsedError;
  String? get formatSlot => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Create a copy of Slot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotCopyWith<Slot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotCopyWith<$Res> {
  factory $SlotCopyWith(Slot value, $Res Function(Slot) then) =
      _$SlotCopyWithImpl<$Res, Slot>;
  @useResult
  $Res call({
    String? slot,
    String? formatSlot,
    String? from,
    String? to,
    String? note,
  });
}

/// @nodoc
class _$SlotCopyWithImpl<$Res, $Val extends Slot>
    implements $SlotCopyWith<$Res> {
  _$SlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Slot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? formatSlot = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _value.copyWith(
            slot: freezed == slot
                ? _value.slot
                : slot // ignore: cast_nullable_to_non_nullable
                      as String?,
            formatSlot: freezed == formatSlot
                ? _value.formatSlot
                : formatSlot // ignore: cast_nullable_to_non_nullable
                      as String?,
            from: freezed == from
                ? _value.from
                : from // ignore: cast_nullable_to_non_nullable
                      as String?,
            to: freezed == to
                ? _value.to
                : to // ignore: cast_nullable_to_non_nullable
                      as String?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SlotImplCopyWith<$Res> implements $SlotCopyWith<$Res> {
  factory _$$SlotImplCopyWith(
    _$SlotImpl value,
    $Res Function(_$SlotImpl) then,
  ) = __$$SlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? slot,
    String? formatSlot,
    String? from,
    String? to,
    String? note,
  });
}

/// @nodoc
class __$$SlotImplCopyWithImpl<$Res>
    extends _$SlotCopyWithImpl<$Res, _$SlotImpl>
    implements _$$SlotImplCopyWith<$Res> {
  __$$SlotImplCopyWithImpl(_$SlotImpl _value, $Res Function(_$SlotImpl) _then)
    : super(_value, _then);

  /// Create a copy of Slot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? formatSlot = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _$SlotImpl(
        slot: freezed == slot
            ? _value.slot
            : slot // ignore: cast_nullable_to_non_nullable
                  as String?,
        formatSlot: freezed == formatSlot
            ? _value.formatSlot
            : formatSlot // ignore: cast_nullable_to_non_nullable
                  as String?,
        from: freezed == from
            ? _value.from
            : from // ignore: cast_nullable_to_non_nullable
                  as String?,
        to: freezed == to
            ? _value.to
            : to // ignore: cast_nullable_to_non_nullable
                  as String?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SlotImpl implements _Slot {
  _$SlotImpl({this.slot, this.formatSlot, this.from, this.to, this.note});

  factory _$SlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlotImplFromJson(json);

  @override
  final String? slot;
  @override
  final String? formatSlot;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? note;

  @override
  String toString() {
    return 'Slot(slot: $slot, formatSlot: $formatSlot, from: $from, to: $to, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.formatSlot, formatSlot) ||
                other.formatSlot == formatSlot) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, slot, formatSlot, from, to, note);

  /// Create a copy of Slot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotImplCopyWith<_$SlotImpl> get copyWith =>
      __$$SlotImplCopyWithImpl<_$SlotImpl>(this, _$identity);
}

abstract class _Slot implements Slot {
  factory _Slot({
    final String? slot,
    final String? formatSlot,
    final String? from,
    final String? to,
    final String? note,
  }) = _$SlotImpl;

  factory _Slot.fromJson(Map<String, dynamic> json) = _$SlotImpl.fromJson;

  @override
  String? get slot;
  @override
  String? get formatSlot;
  @override
  String? get from;
  @override
  String? get to;
  @override
  String? get note;

  /// Create a copy of Slot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotImplCopyWith<_$SlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
