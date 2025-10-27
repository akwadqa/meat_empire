// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductOptions _$ProductOptionsFromJson(Map<String, dynamic> json) {
  return _ProductOptions.fromJson(json);
}

/// @nodoc
mixin _$ProductOptions {
  List<Option> get options => throw _privateConstructorUsedError;
  List<SelectedOption> get selectedOptions =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductOptionsCopyWith<ProductOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOptionsCopyWith<$Res> {
  factory $ProductOptionsCopyWith(
    ProductOptions value,
    $Res Function(ProductOptions) then,
  ) = _$ProductOptionsCopyWithImpl<$Res, ProductOptions>;
  @useResult
  $Res call({List<Option> options, List<SelectedOption> selectedOptions});
}

/// @nodoc
class _$ProductOptionsCopyWithImpl<$Res, $Val extends ProductOptions>
    implements $ProductOptionsCopyWith<$Res> {
  _$ProductOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? options = null, Object? selectedOptions = null}) {
    return _then(
      _value.copyWith(
            options: null == options
                ? _value.options
                : options // ignore: cast_nullable_to_non_nullable
                      as List<Option>,
            selectedOptions: null == selectedOptions
                ? _value.selectedOptions
                : selectedOptions // ignore: cast_nullable_to_non_nullable
                      as List<SelectedOption>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductOptionsImplCopyWith<$Res>
    implements $ProductOptionsCopyWith<$Res> {
  factory _$$ProductOptionsImplCopyWith(
    _$ProductOptionsImpl value,
    $Res Function(_$ProductOptionsImpl) then,
  ) = __$$ProductOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Option> options, List<SelectedOption> selectedOptions});
}

/// @nodoc
class __$$ProductOptionsImplCopyWithImpl<$Res>
    extends _$ProductOptionsCopyWithImpl<$Res, _$ProductOptionsImpl>
    implements _$$ProductOptionsImplCopyWith<$Res> {
  __$$ProductOptionsImplCopyWithImpl(
    _$ProductOptionsImpl _value,
    $Res Function(_$ProductOptionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? options = null, Object? selectedOptions = null}) {
    return _then(
      _$ProductOptionsImpl(
        options: null == options
            ? _value._options
            : options // ignore: cast_nullable_to_non_nullable
                  as List<Option>,
        selectedOptions: null == selectedOptions
            ? _value._selectedOptions
            : selectedOptions // ignore: cast_nullable_to_non_nullable
                  as List<SelectedOption>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ProductOptionsImpl implements _ProductOptions {
  _$ProductOptionsImpl({
    required final List<Option> options,
    required final List<SelectedOption> selectedOptions,
  }) : _options = options,
       _selectedOptions = selectedOptions;

  factory _$ProductOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductOptionsImplFromJson(json);

  final List<Option> _options;
  @override
  List<Option> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  final List<SelectedOption> _selectedOptions;
  @override
  List<SelectedOption> get selectedOptions {
    if (_selectedOptions is EqualUnmodifiableListView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOptions);
  }

  @override
  String toString() {
    return 'ProductOptions(options: $options, selectedOptions: $selectedOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOptionsImpl &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality().equals(
              other._selectedOptions,
              _selectedOptions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_options),
    const DeepCollectionEquality().hash(_selectedOptions),
  );

  /// Create a copy of ProductOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOptionsImplCopyWith<_$ProductOptionsImpl> get copyWith =>
      __$$ProductOptionsImplCopyWithImpl<_$ProductOptionsImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductOptions implements ProductOptions {
  factory _ProductOptions({
    required final List<Option> options,
    required final List<SelectedOption> selectedOptions,
  }) = _$ProductOptionsImpl;

  factory _ProductOptions.fromJson(Map<String, dynamic> json) =
      _$ProductOptionsImpl.fromJson;

  @override
  List<Option> get options;
  @override
  List<SelectedOption> get selectedOptions;

  /// Create a copy of ProductOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductOptionsImplCopyWith<_$ProductOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
