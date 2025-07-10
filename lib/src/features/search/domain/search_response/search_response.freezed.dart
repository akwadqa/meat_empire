// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchResponse {
  List<Product> get products => throw _privateConstructorUsedError;
  Search get search => throw _privateConstructorUsedError;
  List<Sorting> get sortings => throw _privateConstructorUsedError;
  dynamic get totalProducts => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
    SearchResponse value,
    $Res Function(SearchResponse) then,
  ) = _$SearchResponseCopyWithImpl<$Res, SearchResponse>;
  @useResult
  $Res call({
    List<Product> products,
    Search search,
    List<Sorting> sortings,
    dynamic totalProducts,
    String message,
    bool success,
  });

  $SearchCopyWith<$Res> get search;
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res, $Val extends SearchResponse>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? search = null,
    Object? sortings = null,
    Object? totalProducts = freezed,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(
      _value.copyWith(
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as List<Product>,
            search: null == search
                ? _value.search
                : search // ignore: cast_nullable_to_non_nullable
                      as Search,
            sortings: null == sortings
                ? _value.sortings
                : sortings // ignore: cast_nullable_to_non_nullable
                      as List<Sorting>,
            totalProducts: freezed == totalProducts
                ? _value.totalProducts
                : totalProducts // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCopyWith<$Res> get search {
    return $SearchCopyWith<$Res>(_value.search, (value) {
      return _then(_value.copyWith(search: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResponseImplCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$$SearchResponseImplCopyWith(
    _$SearchResponseImpl value,
    $Res Function(_$SearchResponseImpl) then,
  ) = __$$SearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Product> products,
    Search search,
    List<Sorting> sortings,
    dynamic totalProducts,
    String message,
    bool success,
  });

  @override
  $SearchCopyWith<$Res> get search;
}

/// @nodoc
class __$$SearchResponseImplCopyWithImpl<$Res>
    extends _$SearchResponseCopyWithImpl<$Res, _$SearchResponseImpl>
    implements _$$SearchResponseImplCopyWith<$Res> {
  __$$SearchResponseImplCopyWithImpl(
    _$SearchResponseImpl _value,
    $Res Function(_$SearchResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? search = null,
    Object? sortings = null,
    Object? totalProducts = freezed,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(
      _$SearchResponseImpl(
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<Product>,
        search: null == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as Search,
        sortings: null == sortings
            ? _value._sortings
            : sortings // ignore: cast_nullable_to_non_nullable
                  as List<Sorting>,
        totalProducts: freezed == totalProducts
            ? _value.totalProducts
            : totalProducts // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SearchResponseImpl implements _SearchResponse {
  _$SearchResponseImpl({
    required final List<Product> products,
    required this.search,
    required final List<Sorting> sortings,
    required this.totalProducts,
    required this.message,
    required this.success,
  }) : _products = products,
       _sortings = sortings;

  factory _$SearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResponseImplFromJson(json);

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final Search search;
  final List<Sorting> _sortings;
  @override
  List<Sorting> get sortings {
    if (_sortings is EqualUnmodifiableListView) return _sortings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortings);
  }

  @override
  final dynamic totalProducts;
  @override
  final String message;
  @override
  final bool success;

  @override
  String toString() {
    return 'SearchResponse(products: $products, search: $search, sortings: $sortings, totalProducts: $totalProducts, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResponseImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.search, search) || other.search == search) &&
            const DeepCollectionEquality().equals(other._sortings, _sortings) &&
            const DeepCollectionEquality().equals(
              other.totalProducts,
              totalProducts,
            ) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_products),
    search,
    const DeepCollectionEquality().hash(_sortings),
    const DeepCollectionEquality().hash(totalProducts),
    message,
    success,
  );

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResponseImplCopyWith<_$SearchResponseImpl> get copyWith =>
      __$$SearchResponseImplCopyWithImpl<_$SearchResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _SearchResponse implements SearchResponse {
  factory _SearchResponse({
    required final List<Product> products,
    required final Search search,
    required final List<Sorting> sortings,
    required final dynamic totalProducts,
    required final String message,
    required final bool success,
  }) = _$SearchResponseImpl;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$SearchResponseImpl.fromJson;

  @override
  List<Product> get products;
  @override
  Search get search;
  @override
  List<Sorting> get sortings;
  @override
  dynamic get totalProducts;
  @override
  String get message;
  @override
  bool get success;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResponseImplCopyWith<_$SearchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
