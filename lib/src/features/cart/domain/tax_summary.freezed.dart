// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaxSummary _$TaxSummaryFromJson(Map<String, dynamic> json) {
  return _TaxSummary.fromJson(json);
}

/// @nodoc
mixin _$TaxSummary {
  double? get included => throw _privateConstructorUsedError;
  int? get added => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;

  /// Create a copy of TaxSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxSummaryCopyWith<TaxSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxSummaryCopyWith<$Res> {
  factory $TaxSummaryCopyWith(
          TaxSummary value, $Res Function(TaxSummary) then) =
      _$TaxSummaryCopyWithImpl<$Res, TaxSummary>;
  @useResult
  $Res call({double? included, int? added, double? total});
}

/// @nodoc
class _$TaxSummaryCopyWithImpl<$Res, $Val extends TaxSummary>
    implements $TaxSummaryCopyWith<$Res> {
  _$TaxSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaxSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? included = freezed,
    Object? added = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      included: freezed == included
          ? _value.included
          : included // ignore: cast_nullable_to_non_nullable
              as double?,
      added: freezed == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaxSummaryImplCopyWith<$Res>
    implements $TaxSummaryCopyWith<$Res> {
  factory _$$TaxSummaryImplCopyWith(
          _$TaxSummaryImpl value, $Res Function(_$TaxSummaryImpl) then) =
      __$$TaxSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? included, int? added, double? total});
}

/// @nodoc
class __$$TaxSummaryImplCopyWithImpl<$Res>
    extends _$TaxSummaryCopyWithImpl<$Res, _$TaxSummaryImpl>
    implements _$$TaxSummaryImplCopyWith<$Res> {
  __$$TaxSummaryImplCopyWithImpl(
      _$TaxSummaryImpl _value, $Res Function(_$TaxSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaxSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? included = freezed,
    Object? added = freezed,
    Object? total = freezed,
  }) {
    return _then(_$TaxSummaryImpl(
      included: freezed == included
          ? _value.included
          : included // ignore: cast_nullable_to_non_nullable
              as double?,
      added: freezed == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$TaxSummaryImpl implements _TaxSummary {
  _$TaxSummaryImpl({this.included, this.added, this.total});

  factory _$TaxSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxSummaryImplFromJson(json);

  @override
  final double? included;
  @override
  final int? added;
  @override
  final double? total;

  @override
  String toString() {
    return 'TaxSummary(included: $included, added: $added, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxSummaryImpl &&
            (identical(other.included, included) ||
                other.included == included) &&
            (identical(other.added, added) || other.added == added) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, included, added, total);

  /// Create a copy of TaxSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxSummaryImplCopyWith<_$TaxSummaryImpl> get copyWith =>
      __$$TaxSummaryImplCopyWithImpl<_$TaxSummaryImpl>(this, _$identity);
}

abstract class _TaxSummary implements TaxSummary {
  factory _TaxSummary(
      {final double? included,
      final int? added,
      final double? total}) = _$TaxSummaryImpl;

  factory _TaxSummary.fromJson(Map<String, dynamic> json) =
      _$TaxSummaryImpl.fromJson;

  @override
  double? get included;
  @override
  int? get added;
  @override
  double? get total;

  /// Create a copy of TaxSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxSummaryImplCopyWith<_$TaxSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
