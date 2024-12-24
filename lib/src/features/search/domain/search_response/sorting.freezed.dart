// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sorting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sorting _$SortingFromJson(Map<String, dynamic> json) {
  return _Sorting.fromJson(json);
}

/// @nodoc
mixin _$Sorting {
  String get name => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  String get sortOrder => throw _privateConstructorUsedError;

  /// Create a copy of Sorting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SortingCopyWith<Sorting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortingCopyWith<$Res> {
  factory $SortingCopyWith(Sorting value, $Res Function(Sorting) then) =
      _$SortingCopyWithImpl<$Res, Sorting>;
  @useResult
  $Res call({String name, String sortBy, String sortOrder});
}

/// @nodoc
class _$SortingCopyWithImpl<$Res, $Val extends Sorting>
    implements $SortingCopyWith<$Res> {
  _$SortingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sorting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sortBy = null,
    Object? sortOrder = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortingImplCopyWith<$Res> implements $SortingCopyWith<$Res> {
  factory _$$SortingImplCopyWith(
          _$SortingImpl value, $Res Function(_$SortingImpl) then) =
      __$$SortingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String sortBy, String sortOrder});
}

/// @nodoc
class __$$SortingImplCopyWithImpl<$Res>
    extends _$SortingCopyWithImpl<$Res, _$SortingImpl>
    implements _$$SortingImplCopyWith<$Res> {
  __$$SortingImplCopyWithImpl(
      _$SortingImpl _value, $Res Function(_$SortingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sorting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sortBy = null,
    Object? sortOrder = null,
  }) {
    return _then(_$SortingImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SortingImpl implements _Sorting {
  _$SortingImpl(
      {required this.name, required this.sortBy, required this.sortOrder});

  factory _$SortingImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortingImplFromJson(json);

  @override
  final String name;
  @override
  final String sortBy;
  @override
  final String sortOrder;

  @override
  String toString() {
    return 'Sorting(name: $name, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, sortBy, sortOrder);

  /// Create a copy of Sorting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortingImplCopyWith<_$SortingImpl> get copyWith =>
      __$$SortingImplCopyWithImpl<_$SortingImpl>(this, _$identity);
}

abstract class _Sorting implements Sorting {
  factory _Sorting(
      {required final String name,
      required final String sortBy,
      required final String sortOrder}) = _$SortingImpl;

  factory _Sorting.fromJson(Map<String, dynamic> json) = _$SortingImpl.fromJson;

  @override
  String get name;
  @override
  String get sortBy;
  @override
  String get sortOrder;

  /// Create a copy of Sorting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortingImplCopyWith<_$SortingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
