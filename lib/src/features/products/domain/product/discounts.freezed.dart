// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discounts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Discounts _$DiscountsFromJson(Map<String, dynamic> json) {
  return _Discounts.fromJson(json);
}

/// @nodoc
mixin _$Discounts {
  @JsonKey(name: 'A')
  int get a => throw _privateConstructorUsedError;
  @JsonKey(name: 'P')
  int get p => throw _privateConstructorUsedError;

  /// Create a copy of Discounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountsCopyWith<Discounts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountsCopyWith<$Res> {
  factory $DiscountsCopyWith(Discounts value, $Res Function(Discounts) then) =
      _$DiscountsCopyWithImpl<$Res, Discounts>;
  @useResult
  $Res call({@JsonKey(name: 'A') int a, @JsonKey(name: 'P') int p});
}

/// @nodoc
class _$DiscountsCopyWithImpl<$Res, $Val extends Discounts>
    implements $DiscountsCopyWith<$Res> {
  _$DiscountsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Discounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? p = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountsImplCopyWith<$Res>
    implements $DiscountsCopyWith<$Res> {
  factory _$$DiscountsImplCopyWith(
          _$DiscountsImpl value, $Res Function(_$DiscountsImpl) then) =
      __$$DiscountsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'A') int a, @JsonKey(name: 'P') int p});
}

/// @nodoc
class __$$DiscountsImplCopyWithImpl<$Res>
    extends _$DiscountsCopyWithImpl<$Res, _$DiscountsImpl>
    implements _$$DiscountsImplCopyWith<$Res> {
  __$$DiscountsImplCopyWithImpl(
      _$DiscountsImpl _value, $Res Function(_$DiscountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Discounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? p = null,
  }) {
    return _then(_$DiscountsImpl(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$DiscountsImpl implements _Discounts {
  _$DiscountsImpl(
      {@JsonKey(name: 'A') required this.a,
      @JsonKey(name: 'P') required this.p});

  factory _$DiscountsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountsImplFromJson(json);

  @override
  @JsonKey(name: 'A')
  final int a;
  @override
  @JsonKey(name: 'P')
  final int p;

  @override
  String toString() {
    return 'Discounts(a: $a, p: $p)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountsImpl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.p, p) || other.p == p));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a, p);

  /// Create a copy of Discounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountsImplCopyWith<_$DiscountsImpl> get copyWith =>
      __$$DiscountsImplCopyWithImpl<_$DiscountsImpl>(this, _$identity);
}

abstract class _Discounts implements Discounts {
  factory _Discounts(
      {@JsonKey(name: 'A') required final int a,
      @JsonKey(name: 'P') required final int p}) = _$DiscountsImpl;

  factory _Discounts.fromJson(Map<String, dynamic> json) =
      _$DiscountsImpl.fromJson;

  @override
  @JsonKey(name: 'A')
  int get a;
  @override
  @JsonKey(name: 'P')
  int get p;

  /// Create a copy of Discounts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountsImplCopyWith<_$DiscountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
