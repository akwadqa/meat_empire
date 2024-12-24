// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filtering.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Filtering _$FilteringFromJson(Map<String, dynamic> json) {
  return _Filtering.fromJson(json);
}

/// @nodoc
mixin _$Filtering {
  Items get items => throw _privateConstructorUsedError;

  /// Create a copy of Filtering
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilteringCopyWith<Filtering> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteringCopyWith<$Res> {
  factory $FilteringCopyWith(Filtering value, $Res Function(Filtering) then) =
      _$FilteringCopyWithImpl<$Res, Filtering>;
  @useResult
  $Res call({Items items});

  $ItemsCopyWith<$Res> get items;
}

/// @nodoc
class _$FilteringCopyWithImpl<$Res, $Val extends Filtering>
    implements $FilteringCopyWith<$Res> {
  _$FilteringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Filtering
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Items,
    ) as $Val);
  }

  /// Create a copy of Filtering
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemsCopyWith<$Res> get items {
    return $ItemsCopyWith<$Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilteringImplCopyWith<$Res>
    implements $FilteringCopyWith<$Res> {
  factory _$$FilteringImplCopyWith(
          _$FilteringImpl value, $Res Function(_$FilteringImpl) then) =
      __$$FilteringImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Items items});

  @override
  $ItemsCopyWith<$Res> get items;
}

/// @nodoc
class __$$FilteringImplCopyWithImpl<$Res>
    extends _$FilteringCopyWithImpl<$Res, _$FilteringImpl>
    implements _$$FilteringImplCopyWith<$Res> {
  __$$FilteringImplCopyWithImpl(
      _$FilteringImpl _value, $Res Function(_$FilteringImpl) _then)
      : super(_value, _then);

  /// Create a copy of Filtering
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$FilteringImpl(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Items,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$FilteringImpl implements _Filtering {
  _$FilteringImpl({required this.items});

  factory _$FilteringImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilteringImplFromJson(json);

  @override
  final Items items;

  @override
  String toString() {
    return 'Filtering(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteringImpl &&
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, items);

  /// Create a copy of Filtering
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilteringImplCopyWith<_$FilteringImpl> get copyWith =>
      __$$FilteringImplCopyWithImpl<_$FilteringImpl>(this, _$identity);
}

abstract class _Filtering implements Filtering {
  factory _Filtering({required final Items items}) = _$FilteringImpl;

  factory _Filtering.fromJson(Map<String, dynamic> json) =
      _$FilteringImpl.fromJson;

  @override
  Items get items;

  /// Create a copy of Filtering
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilteringImplCopyWith<_$FilteringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
