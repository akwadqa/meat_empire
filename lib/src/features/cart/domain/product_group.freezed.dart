// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductGroup _$ProductGroupFromJson(Map<String, dynamic> json) {
  return _ProductGroup.fromJson(json);
}

/// @nodoc
mixin _$ProductGroup {
  int? get groupId => throw _privateConstructorUsedError;
  int? get companyId => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  List<Shipping>? get shippings => throw _privateConstructorUsedError;
  dynamic get selectedShippingId => throw _privateConstructorUsedError;
  dynamic get shippingCost => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;

  /// Create a copy of ProductGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductGroupCopyWith<ProductGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductGroupCopyWith<$Res> {
  factory $ProductGroupCopyWith(
          ProductGroup value, $Res Function(ProductGroup) then) =
      _$ProductGroupCopyWithImpl<$Res, ProductGroup>;
  @useResult
  $Res call(
      {int? groupId,
      int? companyId,
      String? companyName,
      List<Shipping>? shippings,
      dynamic selectedShippingId,
      dynamic shippingCost,
      List<Product>? products});
}

/// @nodoc
class _$ProductGroupCopyWithImpl<$Res, $Val extends ProductGroup>
    implements $ProductGroupCopyWith<$Res> {
  _$ProductGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? companyId = freezed,
    Object? companyName = freezed,
    Object? shippings = freezed,
    Object? selectedShippingId = freezed,
    Object? shippingCost = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      shippings: freezed == shippings
          ? _value.shippings
          : shippings // ignore: cast_nullable_to_non_nullable
              as List<Shipping>?,
      selectedShippingId: freezed == selectedShippingId
          ? _value.selectedShippingId
          : selectedShippingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shippingCost: freezed == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductGroupImplCopyWith<$Res>
    implements $ProductGroupCopyWith<$Res> {
  factory _$$ProductGroupImplCopyWith(
          _$ProductGroupImpl value, $Res Function(_$ProductGroupImpl) then) =
      __$$ProductGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? groupId,
      int? companyId,
      String? companyName,
      List<Shipping>? shippings,
      dynamic selectedShippingId,
      dynamic shippingCost,
      List<Product>? products});
}

/// @nodoc
class __$$ProductGroupImplCopyWithImpl<$Res>
    extends _$ProductGroupCopyWithImpl<$Res, _$ProductGroupImpl>
    implements _$$ProductGroupImplCopyWith<$Res> {
  __$$ProductGroupImplCopyWithImpl(
      _$ProductGroupImpl _value, $Res Function(_$ProductGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? companyId = freezed,
    Object? companyName = freezed,
    Object? shippings = freezed,
    Object? selectedShippingId = freezed,
    Object? shippingCost = freezed,
    Object? products = freezed,
  }) {
    return _then(_$ProductGroupImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      shippings: freezed == shippings
          ? _value._shippings
          : shippings // ignore: cast_nullable_to_non_nullable
              as List<Shipping>?,
      selectedShippingId: freezed == selectedShippingId
          ? _value.selectedShippingId
          : selectedShippingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shippingCost: freezed == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ProductGroupImpl implements _ProductGroup {
  _$ProductGroupImpl(
      {this.groupId,
      this.companyId,
      this.companyName,
      final List<Shipping>? shippings,
      this.selectedShippingId,
      this.shippingCost,
      final List<Product>? products})
      : _shippings = shippings,
        _products = products;

  factory _$ProductGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductGroupImplFromJson(json);

  @override
  final int? groupId;
  @override
  final int? companyId;
  @override
  final String? companyName;
  final List<Shipping>? _shippings;
  @override
  List<Shipping>? get shippings {
    final value = _shippings;
    if (value == null) return null;
    if (_shippings is EqualUnmodifiableListView) return _shippings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic selectedShippingId;
  @override
  final dynamic shippingCost;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductGroup(groupId: $groupId, companyId: $companyId, companyName: $companyName, shippings: $shippings, selectedShippingId: $selectedShippingId, shippingCost: $shippingCost, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductGroupImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality()
                .equals(other._shippings, _shippings) &&
            const DeepCollectionEquality()
                .equals(other.selectedShippingId, selectedShippingId) &&
            const DeepCollectionEquality()
                .equals(other.shippingCost, shippingCost) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupId,
      companyId,
      companyName,
      const DeepCollectionEquality().hash(_shippings),
      const DeepCollectionEquality().hash(selectedShippingId),
      const DeepCollectionEquality().hash(shippingCost),
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductGroupImplCopyWith<_$ProductGroupImpl> get copyWith =>
      __$$ProductGroupImplCopyWithImpl<_$ProductGroupImpl>(this, _$identity);
}

abstract class _ProductGroup implements ProductGroup {
  factory _ProductGroup(
      {final int? groupId,
      final int? companyId,
      final String? companyName,
      final List<Shipping>? shippings,
      final dynamic selectedShippingId,
      final dynamic shippingCost,
      final List<Product>? products}) = _$ProductGroupImpl;

  factory _ProductGroup.fromJson(Map<String, dynamic> json) =
      _$ProductGroupImpl.fromJson;

  @override
  int? get groupId;
  @override
  int? get companyId;
  @override
  String? get companyName;
  @override
  List<Shipping>? get shippings;
  @override
  dynamic get selectedShippingId;
  @override
  dynamic get shippingCost;
  @override
  List<Product>? get products;

  /// Create a copy of ProductGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductGroupImplCopyWith<_$ProductGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
