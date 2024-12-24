// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  WithImages get withImages => throw _privateConstructorUsedError;
  OnlyBuyers get onlyBuyers => throw _privateConstructorUsedError;

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call({WithImages withImages, OnlyBuyers onlyBuyers});

  $WithImagesCopyWith<$Res> get withImages;
  $OnlyBuyersCopyWith<$Res> get onlyBuyers;
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withImages = null,
    Object? onlyBuyers = null,
  }) {
    return _then(_value.copyWith(
      withImages: null == withImages
          ? _value.withImages
          : withImages // ignore: cast_nullable_to_non_nullable
              as WithImages,
      onlyBuyers: null == onlyBuyers
          ? _value.onlyBuyers
          : onlyBuyers // ignore: cast_nullable_to_non_nullable
              as OnlyBuyers,
    ) as $Val);
  }

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WithImagesCopyWith<$Res> get withImages {
    return $WithImagesCopyWith<$Res>(_value.withImages, (value) {
      return _then(_value.copyWith(withImages: value) as $Val);
    });
  }

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OnlyBuyersCopyWith<$Res> get onlyBuyers {
    return $OnlyBuyersCopyWith<$Res>(_value.onlyBuyers, (value) {
      return _then(_value.copyWith(onlyBuyers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsImplCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$ItemsImplCopyWith(
          _$ItemsImpl value, $Res Function(_$ItemsImpl) then) =
      __$$ItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WithImages withImages, OnlyBuyers onlyBuyers});

  @override
  $WithImagesCopyWith<$Res> get withImages;
  @override
  $OnlyBuyersCopyWith<$Res> get onlyBuyers;
}

/// @nodoc
class __$$ItemsImplCopyWithImpl<$Res>
    extends _$ItemsCopyWithImpl<$Res, _$ItemsImpl>
    implements _$$ItemsImplCopyWith<$Res> {
  __$$ItemsImplCopyWithImpl(
      _$ItemsImpl _value, $Res Function(_$ItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withImages = null,
    Object? onlyBuyers = null,
  }) {
    return _then(_$ItemsImpl(
      withImages: null == withImages
          ? _value.withImages
          : withImages // ignore: cast_nullable_to_non_nullable
              as WithImages,
      onlyBuyers: null == onlyBuyers
          ? _value.onlyBuyers
          : onlyBuyers // ignore: cast_nullable_to_non_nullable
              as OnlyBuyers,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ItemsImpl implements _Items {
  _$ItemsImpl({required this.withImages, required this.onlyBuyers});

  factory _$ItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsImplFromJson(json);

  @override
  final WithImages withImages;
  @override
  final OnlyBuyers onlyBuyers;

  @override
  String toString() {
    return 'Items(withImages: $withImages, onlyBuyers: $onlyBuyers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsImpl &&
            (identical(other.withImages, withImages) ||
                other.withImages == withImages) &&
            (identical(other.onlyBuyers, onlyBuyers) ||
                other.onlyBuyers == onlyBuyers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, withImages, onlyBuyers);

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith =>
      __$$ItemsImplCopyWithImpl<_$ItemsImpl>(this, _$identity);
}

abstract class _Items implements Items {
  factory _Items(
      {required final WithImages withImages,
      required final OnlyBuyers onlyBuyers}) = _$ItemsImpl;

  factory _Items.fromJson(Map<String, dynamic> json) = _$ItemsImpl.fromJson;

  @override
  WithImages get withImages;
  @override
  OnlyBuyers get onlyBuyers;

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
