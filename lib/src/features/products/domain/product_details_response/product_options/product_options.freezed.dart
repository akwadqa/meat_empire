// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductOptions {

 List<Option> get options; List<SelectedOption> get selectedOptions;
/// Create a copy of ProductOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductOptionsCopyWith<ProductOptions> get copyWith => _$ProductOptionsCopyWithImpl<ProductOptions>(this as ProductOptions, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductOptions&&const DeepCollectionEquality().equals(other.options, options)&&const DeepCollectionEquality().equals(other.selectedOptions, selectedOptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(options),const DeepCollectionEquality().hash(selectedOptions));

@override
String toString() {
  return 'ProductOptions(options: $options, selectedOptions: $selectedOptions)';
}


}

/// @nodoc
abstract mixin class $ProductOptionsCopyWith<$Res>  {
  factory $ProductOptionsCopyWith(ProductOptions value, $Res Function(ProductOptions) _then) = _$ProductOptionsCopyWithImpl;
@useResult
$Res call({
 List<Option> options, List<SelectedOption> selectedOptions
});




}
/// @nodoc
class _$ProductOptionsCopyWithImpl<$Res>
    implements $ProductOptionsCopyWith<$Res> {
  _$ProductOptionsCopyWithImpl(this._self, this._then);

  final ProductOptions _self;
  final $Res Function(ProductOptions) _then;

/// Create a copy of ProductOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? options = null,Object? selectedOptions = null,}) {
  return _then(_self.copyWith(
options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<Option>,selectedOptions: null == selectedOptions ? _self.selectedOptions : selectedOptions // ignore: cast_nullable_to_non_nullable
as List<SelectedOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductOptions].
extension ProductOptionsPatterns on ProductOptions {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductOptions() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductOptions value)  $default,){
final _that = this;
switch (_that) {
case _ProductOptions():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductOptions value)?  $default,){
final _that = this;
switch (_that) {
case _ProductOptions() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Option> options,  List<SelectedOption> selectedOptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductOptions() when $default != null:
return $default(_that.options,_that.selectedOptions);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Option> options,  List<SelectedOption> selectedOptions)  $default,) {final _that = this;
switch (_that) {
case _ProductOptions():
return $default(_that.options,_that.selectedOptions);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Option> options,  List<SelectedOption> selectedOptions)?  $default,) {final _that = this;
switch (_that) {
case _ProductOptions() when $default != null:
return $default(_that.options,_that.selectedOptions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ProductOptions implements ProductOptions {
   _ProductOptions({required final  List<Option> options, required final  List<SelectedOption> selectedOptions}): _options = options,_selectedOptions = selectedOptions;
  factory _ProductOptions.fromJson(Map<String, dynamic> json) => _$ProductOptionsFromJson(json);

 final  List<Option> _options;
@override List<Option> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

 final  List<SelectedOption> _selectedOptions;
@override List<SelectedOption> get selectedOptions {
  if (_selectedOptions is EqualUnmodifiableListView) return _selectedOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedOptions);
}


/// Create a copy of ProductOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductOptionsCopyWith<_ProductOptions> get copyWith => __$ProductOptionsCopyWithImpl<_ProductOptions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductOptions&&const DeepCollectionEquality().equals(other._options, _options)&&const DeepCollectionEquality().equals(other._selectedOptions, _selectedOptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_options),const DeepCollectionEquality().hash(_selectedOptions));

@override
String toString() {
  return 'ProductOptions(options: $options, selectedOptions: $selectedOptions)';
}


}

/// @nodoc
abstract mixin class _$ProductOptionsCopyWith<$Res> implements $ProductOptionsCopyWith<$Res> {
  factory _$ProductOptionsCopyWith(_ProductOptions value, $Res Function(_ProductOptions) _then) = __$ProductOptionsCopyWithImpl;
@override @useResult
$Res call({
 List<Option> options, List<SelectedOption> selectedOptions
});




}
/// @nodoc
class __$ProductOptionsCopyWithImpl<$Res>
    implements _$ProductOptionsCopyWith<$Res> {
  __$ProductOptionsCopyWithImpl(this._self, this._then);

  final _ProductOptions _self;
  final $Res Function(_ProductOptions) _then;

/// Create a copy of ProductOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? options = null,Object? selectedOptions = null,}) {
  return _then(_ProductOptions(
options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<Option>,selectedOptions: null == selectedOptions ? _self._selectedOptions : selectedOptions // ignore: cast_nullable_to_non_nullable
as List<SelectedOption>,
  ));
}


}

// dart format on
