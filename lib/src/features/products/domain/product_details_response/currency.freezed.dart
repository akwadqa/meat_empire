// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  String get currencyCode => throw _privateConstructorUsedError;
  String get after => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get coefficient => throw _privateConstructorUsedError;
  String get decimalsSeparator => throw _privateConstructorUsedError;
  String get thousandsSeparator => throw _privateConstructorUsedError;
  String get decimals => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
  @useResult
  $Res call(
      {String currencyCode,
      String after,
      String symbol,
      String coefficient,
      String decimalsSeparator,
      String thousandsSeparator,
      String decimals,
      String description});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
    Object? after = null,
    Object? symbol = null,
    Object? coefficient = null,
    Object? decimalsSeparator = null,
    Object? thousandsSeparator = null,
    Object? decimals = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      after: null == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      coefficient: null == coefficient
          ? _value.coefficient
          : coefficient // ignore: cast_nullable_to_non_nullable
              as String,
      decimalsSeparator: null == decimalsSeparator
          ? _value.decimalsSeparator
          : decimalsSeparator // ignore: cast_nullable_to_non_nullable
              as String,
      thousandsSeparator: null == thousandsSeparator
          ? _value.thousandsSeparator
          : thousandsSeparator // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyImplCopyWith<$Res>
    implements $CurrencyCopyWith<$Res> {
  factory _$$CurrencyImplCopyWith(
          _$CurrencyImpl value, $Res Function(_$CurrencyImpl) then) =
      __$$CurrencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currencyCode,
      String after,
      String symbol,
      String coefficient,
      String decimalsSeparator,
      String thousandsSeparator,
      String decimals,
      String description});
}

/// @nodoc
class __$$CurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$CurrencyImpl>
    implements _$$CurrencyImplCopyWith<$Res> {
  __$$CurrencyImplCopyWithImpl(
      _$CurrencyImpl _value, $Res Function(_$CurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
    Object? after = null,
    Object? symbol = null,
    Object? coefficient = null,
    Object? decimalsSeparator = null,
    Object? thousandsSeparator = null,
    Object? decimals = null,
    Object? description = null,
  }) {
    return _then(_$CurrencyImpl(
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      after: null == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      coefficient: null == coefficient
          ? _value.coefficient
          : coefficient // ignore: cast_nullable_to_non_nullable
              as String,
      decimalsSeparator: null == decimalsSeparator
          ? _value.decimalsSeparator
          : decimalsSeparator // ignore: cast_nullable_to_non_nullable
              as String,
      thousandsSeparator: null == thousandsSeparator
          ? _value.thousandsSeparator
          : thousandsSeparator // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CurrencyImpl implements _Currency {
  _$CurrencyImpl(
      {required this.currencyCode,
      required this.after,
      required this.symbol,
      required this.coefficient,
      required this.decimalsSeparator,
      required this.thousandsSeparator,
      required this.decimals,
      required this.description});

  factory _$CurrencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyImplFromJson(json);

  @override
  final String currencyCode;
  @override
  final String after;
  @override
  final String symbol;
  @override
  final String coefficient;
  @override
  final String decimalsSeparator;
  @override
  final String thousandsSeparator;
  @override
  final String decimals;
  @override
  final String description;

  @override
  String toString() {
    return 'Currency(currencyCode: $currencyCode, after: $after, symbol: $symbol, coefficient: $coefficient, decimalsSeparator: $decimalsSeparator, thousandsSeparator: $thousandsSeparator, decimals: $decimals, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyImpl &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.after, after) || other.after == after) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.coefficient, coefficient) ||
                other.coefficient == coefficient) &&
            (identical(other.decimalsSeparator, decimalsSeparator) ||
                other.decimalsSeparator == decimalsSeparator) &&
            (identical(other.thousandsSeparator, thousandsSeparator) ||
                other.thousandsSeparator == thousandsSeparator) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currencyCode,
      after,
      symbol,
      coefficient,
      decimalsSeparator,
      thousandsSeparator,
      decimals,
      description);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      __$$CurrencyImplCopyWithImpl<_$CurrencyImpl>(this, _$identity);
}

abstract class _Currency implements Currency {
  factory _Currency(
      {required final String currencyCode,
      required final String after,
      required final String symbol,
      required final String coefficient,
      required final String decimalsSeparator,
      required final String thousandsSeparator,
      required final String decimals,
      required final String description}) = _$CurrencyImpl;

  factory _Currency.fromJson(Map<String, dynamic> json) =
      _$CurrencyImpl.fromJson;

  @override
  String get currencyCode;
  @override
  String get after;
  @override
  String get symbol;
  @override
  String get coefficient;
  @override
  String get decimalsSeparator;
  @override
  String get thousandsSeparator;
  @override
  String get decimals;
  @override
  String get description;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
