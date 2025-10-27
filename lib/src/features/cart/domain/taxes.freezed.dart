// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taxes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Taxes _$TaxesFromJson(Map<String, dynamic> json) {
  return _Taxes.fromJson(json);
}

/// @nodoc
mixin _$Taxes {
  String? get taxValue => throw _privateConstructorUsedError;
  String? get taxName => throw _privateConstructorUsedError;

  /// Create a copy of Taxes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxesCopyWith<Taxes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxesCopyWith<$Res> {
  factory $TaxesCopyWith(Taxes value, $Res Function(Taxes) then) =
      _$TaxesCopyWithImpl<$Res, Taxes>;
  @useResult
  $Res call({String? taxValue, String? taxName});
}

/// @nodoc
class _$TaxesCopyWithImpl<$Res, $Val extends Taxes>
    implements $TaxesCopyWith<$Res> {
  _$TaxesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Taxes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? taxValue = freezed, Object? taxName = freezed}) {
    return _then(
      _value.copyWith(
            taxValue: freezed == taxValue
                ? _value.taxValue
                : taxValue // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxName: freezed == taxName
                ? _value.taxName
                : taxName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaxesImplCopyWith<$Res> implements $TaxesCopyWith<$Res> {
  factory _$$TaxesImplCopyWith(
    _$TaxesImpl value,
    $Res Function(_$TaxesImpl) then,
  ) = __$$TaxesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? taxValue, String? taxName});
}

/// @nodoc
class __$$TaxesImplCopyWithImpl<$Res>
    extends _$TaxesCopyWithImpl<$Res, _$TaxesImpl>
    implements _$$TaxesImplCopyWith<$Res> {
  __$$TaxesImplCopyWithImpl(
    _$TaxesImpl _value,
    $Res Function(_$TaxesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Taxes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? taxValue = freezed, Object? taxName = freezed}) {
    return _then(
      _$TaxesImpl(
        taxValue: freezed == taxValue
            ? _value.taxValue
            : taxValue // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxName: freezed == taxName
            ? _value.taxName
            : taxName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$TaxesImpl implements _Taxes {
  _$TaxesImpl({this.taxValue, this.taxName});

  factory _$TaxesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxesImplFromJson(json);

  @override
  final String? taxValue;
  @override
  final String? taxName;

  @override
  String toString() {
    return 'Taxes(taxValue: $taxValue, taxName: $taxName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxesImpl &&
            (identical(other.taxValue, taxValue) ||
                other.taxValue == taxValue) &&
            (identical(other.taxName, taxName) || other.taxName == taxName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, taxValue, taxName);

  /// Create a copy of Taxes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxesImplCopyWith<_$TaxesImpl> get copyWith =>
      __$$TaxesImplCopyWithImpl<_$TaxesImpl>(this, _$identity);
}

abstract class _Taxes implements Taxes {
  factory _Taxes({final String? taxValue, final String? taxName}) = _$TaxesImpl;

  factory _Taxes.fromJson(Map<String, dynamic> json) = _$TaxesImpl.fromJson;

  @override
  String? get taxValue;
  @override
  String? get taxName;

  /// Create a copy of Taxes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxesImplCopyWith<_$TaxesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
