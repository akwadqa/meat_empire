// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'only_buyers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OnlyBuyers _$OnlyBuyersFromJson(Map<String, dynamic> json) {
  return _OnlyBuyers.fromJson(json);
}

/// @nodoc
mixin _$OnlyBuyers {
  String get param => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  /// Create a copy of OnlyBuyers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnlyBuyersCopyWith<OnlyBuyers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlyBuyersCopyWith<$Res> {
  factory $OnlyBuyersCopyWith(
    OnlyBuyers value,
    $Res Function(OnlyBuyers) then,
  ) = _$OnlyBuyersCopyWithImpl<$Res, OnlyBuyers>;
  @useResult
  $Res call({String param, String name, bool selected});
}

/// @nodoc
class _$OnlyBuyersCopyWithImpl<$Res, $Val extends OnlyBuyers>
    implements $OnlyBuyersCopyWith<$Res> {
  _$OnlyBuyersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnlyBuyers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
    Object? name = null,
    Object? selected = null,
  }) {
    return _then(
      _value.copyWith(
            param: null == param
                ? _value.param
                : param // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            selected: null == selected
                ? _value.selected
                : selected // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OnlyBuyersImplCopyWith<$Res>
    implements $OnlyBuyersCopyWith<$Res> {
  factory _$$OnlyBuyersImplCopyWith(
    _$OnlyBuyersImpl value,
    $Res Function(_$OnlyBuyersImpl) then,
  ) = __$$OnlyBuyersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String param, String name, bool selected});
}

/// @nodoc
class __$$OnlyBuyersImplCopyWithImpl<$Res>
    extends _$OnlyBuyersCopyWithImpl<$Res, _$OnlyBuyersImpl>
    implements _$$OnlyBuyersImplCopyWith<$Res> {
  __$$OnlyBuyersImplCopyWithImpl(
    _$OnlyBuyersImpl _value,
    $Res Function(_$OnlyBuyersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnlyBuyers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
    Object? name = null,
    Object? selected = null,
  }) {
    return _then(
      _$OnlyBuyersImpl(
        param: null == param
            ? _value.param
            : param // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        selected: null == selected
            ? _value.selected
            : selected // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$OnlyBuyersImpl implements _OnlyBuyers {
  _$OnlyBuyersImpl({
    required this.param,
    required this.name,
    required this.selected,
  });

  factory _$OnlyBuyersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlyBuyersImplFromJson(json);

  @override
  final String param;
  @override
  final String name;
  @override
  final bool selected;

  @override
  String toString() {
    return 'OnlyBuyers(param: $param, name: $name, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlyBuyersImpl &&
            (identical(other.param, param) || other.param == param) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, param, name, selected);

  /// Create a copy of OnlyBuyers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlyBuyersImplCopyWith<_$OnlyBuyersImpl> get copyWith =>
      __$$OnlyBuyersImplCopyWithImpl<_$OnlyBuyersImpl>(this, _$identity);
}

abstract class _OnlyBuyers implements OnlyBuyers {
  factory _OnlyBuyers({
    required final String param,
    required final String name,
    required final bool selected,
  }) = _$OnlyBuyersImpl;

  factory _OnlyBuyers.fromJson(Map<String, dynamic> json) =
      _$OnlyBuyersImpl.fromJson;

  @override
  String get param;
  @override
  String get name;
  @override
  bool get selected;

  /// Create a copy of OnlyBuyers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlyBuyersImplCopyWith<_$OnlyBuyersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
