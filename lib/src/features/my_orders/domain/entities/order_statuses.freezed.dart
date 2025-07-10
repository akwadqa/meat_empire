// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_statuses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderStatuses _$OrderStatusesFromJson(Map<String, dynamic> json) {
  return _OrderStatuses.fromJson(json);
}

/// @nodoc
mixin _$OrderStatuses {
  String get value => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of OrderStatuses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStatusesCopyWith<OrderStatuses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusesCopyWith<$Res> {
  factory $OrderStatusesCopyWith(
    OrderStatuses value,
    $Res Function(OrderStatuses) then,
  ) = _$OrderStatusesCopyWithImpl<$Res, OrderStatuses>;
  @useResult
  $Res call({String value, String name});
}

/// @nodoc
class _$OrderStatusesCopyWithImpl<$Res, $Val extends OrderStatuses>
    implements $OrderStatusesCopyWith<$Res> {
  _$OrderStatusesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderStatuses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderStatusesImplCopyWith<$Res>
    implements $OrderStatusesCopyWith<$Res> {
  factory _$$OrderStatusesImplCopyWith(
    _$OrderStatusesImpl value,
    $Res Function(_$OrderStatusesImpl) then,
  ) = __$$OrderStatusesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String name});
}

/// @nodoc
class __$$OrderStatusesImplCopyWithImpl<$Res>
    extends _$OrderStatusesCopyWithImpl<$Res, _$OrderStatusesImpl>
    implements _$$OrderStatusesImplCopyWith<$Res> {
  __$$OrderStatusesImplCopyWithImpl(
    _$OrderStatusesImpl _value,
    $Res Function(_$OrderStatusesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderStatuses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? name = null}) {
    return _then(
      _$OrderStatusesImpl(
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$OrderStatusesImpl implements _OrderStatuses {
  const _$OrderStatusesImpl({required this.value, required this.name});

  factory _$OrderStatusesImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusesImplFromJson(json);

  @override
  final String value;
  @override
  final String name;

  @override
  String toString() {
    return 'OrderStatuses(value: $value, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusesImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, name);

  /// Create a copy of OrderStatuses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusesImplCopyWith<_$OrderStatusesImpl> get copyWith =>
      __$$OrderStatusesImplCopyWithImpl<_$OrderStatusesImpl>(this, _$identity);
}

abstract class _OrderStatuses implements OrderStatuses {
  const factory _OrderStatuses({
    required final String value,
    required final String name,
  }) = _$OrderStatusesImpl;

  factory _OrderStatuses.fromJson(Map<String, dynamic> json) =
      _$OrderStatusesImpl.fromJson;

  @override
  String get value;
  @override
  String get name;

  /// Create a copy of OrderStatuses
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStatusesImplCopyWith<_$OrderStatusesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
