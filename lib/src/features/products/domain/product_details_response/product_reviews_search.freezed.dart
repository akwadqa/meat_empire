// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_reviews_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductReviewsSearch _$ProductReviewsSearchFromJson(Map<String, dynamic> json) {
  return _ProductReviewsSearch.fromJson(json);
}

/// @nodoc
mixin _$ProductReviewsSearch {
  int get page => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  bool get loadProductData => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get storefrontId => throw _privateConstructorUsedError;
  List<String> get availableFilters => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  dynamic get comment => throw _privateConstructorUsedError;
  dynamic get advantages => throw _privateConstructorUsedError;
  dynamic get disadvantages => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  String get sortOrder => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  String get sortOrderRev => throw _privateConstructorUsedError;
  Filtering get filtering => throw _privateConstructorUsedError;

  /// Create a copy of ProductReviewsSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductReviewsSearchCopyWith<ProductReviewsSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductReviewsSearchCopyWith<$Res> {
  factory $ProductReviewsSearchCopyWith(
    ProductReviewsSearch value,
    $Res Function(ProductReviewsSearch) then,
  ) = _$ProductReviewsSearchCopyWithImpl<$Res, ProductReviewsSearch>;
  @useResult
  $Res call({
    int page,
    int itemsPerPage,
    bool loadProductData,
    int productId,
    String status,
    int storefrontId,
    List<String> availableFilters,
    dynamic message,
    dynamic comment,
    dynamic advantages,
    dynamic disadvantages,
    int totalItems,
    String sortOrder,
    String sortBy,
    String sortOrderRev,
    Filtering filtering,
  });

  $FilteringCopyWith<$Res> get filtering;
}

/// @nodoc
class _$ProductReviewsSearchCopyWithImpl<
  $Res,
  $Val extends ProductReviewsSearch
>
    implements $ProductReviewsSearchCopyWith<$Res> {
  _$ProductReviewsSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductReviewsSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? itemsPerPage = null,
    Object? loadProductData = null,
    Object? productId = null,
    Object? status = null,
    Object? storefrontId = null,
    Object? availableFilters = null,
    Object? message = freezed,
    Object? comment = freezed,
    Object? advantages = freezed,
    Object? disadvantages = freezed,
    Object? totalItems = null,
    Object? sortOrder = null,
    Object? sortBy = null,
    Object? sortOrderRev = null,
    Object? filtering = null,
  }) {
    return _then(
      _value.copyWith(
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            itemsPerPage: null == itemsPerPage
                ? _value.itemsPerPage
                : itemsPerPage // ignore: cast_nullable_to_non_nullable
                      as int,
            loadProductData: null == loadProductData
                ? _value.loadProductData
                : loadProductData // ignore: cast_nullable_to_non_nullable
                      as bool,
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            storefrontId: null == storefrontId
                ? _value.storefrontId
                : storefrontId // ignore: cast_nullable_to_non_nullable
                      as int,
            availableFilters: null == availableFilters
                ? _value.availableFilters
                : availableFilters // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            advantages: freezed == advantages
                ? _value.advantages
                : advantages // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            disadvantages: freezed == disadvantages
                ? _value.disadvantages
                : disadvantages // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            totalItems: null == totalItems
                ? _value.totalItems
                : totalItems // ignore: cast_nullable_to_non_nullable
                      as int,
            sortOrder: null == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                      as String,
            sortBy: null == sortBy
                ? _value.sortBy
                : sortBy // ignore: cast_nullable_to_non_nullable
                      as String,
            sortOrderRev: null == sortOrderRev
                ? _value.sortOrderRev
                : sortOrderRev // ignore: cast_nullable_to_non_nullable
                      as String,
            filtering: null == filtering
                ? _value.filtering
                : filtering // ignore: cast_nullable_to_non_nullable
                      as Filtering,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductReviewsSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilteringCopyWith<$Res> get filtering {
    return $FilteringCopyWith<$Res>(_value.filtering, (value) {
      return _then(_value.copyWith(filtering: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductReviewsSearchImplCopyWith<$Res>
    implements $ProductReviewsSearchCopyWith<$Res> {
  factory _$$ProductReviewsSearchImplCopyWith(
    _$ProductReviewsSearchImpl value,
    $Res Function(_$ProductReviewsSearchImpl) then,
  ) = __$$ProductReviewsSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int page,
    int itemsPerPage,
    bool loadProductData,
    int productId,
    String status,
    int storefrontId,
    List<String> availableFilters,
    dynamic message,
    dynamic comment,
    dynamic advantages,
    dynamic disadvantages,
    int totalItems,
    String sortOrder,
    String sortBy,
    String sortOrderRev,
    Filtering filtering,
  });

  @override
  $FilteringCopyWith<$Res> get filtering;
}

/// @nodoc
class __$$ProductReviewsSearchImplCopyWithImpl<$Res>
    extends _$ProductReviewsSearchCopyWithImpl<$Res, _$ProductReviewsSearchImpl>
    implements _$$ProductReviewsSearchImplCopyWith<$Res> {
  __$$ProductReviewsSearchImplCopyWithImpl(
    _$ProductReviewsSearchImpl _value,
    $Res Function(_$ProductReviewsSearchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductReviewsSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? itemsPerPage = null,
    Object? loadProductData = null,
    Object? productId = null,
    Object? status = null,
    Object? storefrontId = null,
    Object? availableFilters = null,
    Object? message = freezed,
    Object? comment = freezed,
    Object? advantages = freezed,
    Object? disadvantages = freezed,
    Object? totalItems = null,
    Object? sortOrder = null,
    Object? sortBy = null,
    Object? sortOrderRev = null,
    Object? filtering = null,
  }) {
    return _then(
      _$ProductReviewsSearchImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        itemsPerPage: null == itemsPerPage
            ? _value.itemsPerPage
            : itemsPerPage // ignore: cast_nullable_to_non_nullable
                  as int,
        loadProductData: null == loadProductData
            ? _value.loadProductData
            : loadProductData // ignore: cast_nullable_to_non_nullable
                  as bool,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        storefrontId: null == storefrontId
            ? _value.storefrontId
            : storefrontId // ignore: cast_nullable_to_non_nullable
                  as int,
        availableFilters: null == availableFilters
            ? _value._availableFilters
            : availableFilters // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        advantages: freezed == advantages
            ? _value.advantages
            : advantages // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        disadvantages: freezed == disadvantages
            ? _value.disadvantages
            : disadvantages // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        totalItems: null == totalItems
            ? _value.totalItems
            : totalItems // ignore: cast_nullable_to_non_nullable
                  as int,
        sortOrder: null == sortOrder
            ? _value.sortOrder
            : sortOrder // ignore: cast_nullable_to_non_nullable
                  as String,
        sortBy: null == sortBy
            ? _value.sortBy
            : sortBy // ignore: cast_nullable_to_non_nullable
                  as String,
        sortOrderRev: null == sortOrderRev
            ? _value.sortOrderRev
            : sortOrderRev // ignore: cast_nullable_to_non_nullable
                  as String,
        filtering: null == filtering
            ? _value.filtering
            : filtering // ignore: cast_nullable_to_non_nullable
                  as Filtering,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ProductReviewsSearchImpl implements _ProductReviewsSearch {
  _$ProductReviewsSearchImpl({
    required this.page,
    required this.itemsPerPage,
    required this.loadProductData,
    required this.productId,
    required this.status,
    required this.storefrontId,
    required final List<String> availableFilters,
    required this.message,
    required this.comment,
    required this.advantages,
    required this.disadvantages,
    required this.totalItems,
    required this.sortOrder,
    required this.sortBy,
    required this.sortOrderRev,
    required this.filtering,
  }) : _availableFilters = availableFilters;

  factory _$ProductReviewsSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductReviewsSearchImplFromJson(json);

  @override
  final int page;
  @override
  final int itemsPerPage;
  @override
  final bool loadProductData;
  @override
  final int productId;
  @override
  final String status;
  @override
  final int storefrontId;
  final List<String> _availableFilters;
  @override
  List<String> get availableFilters {
    if (_availableFilters is EqualUnmodifiableListView)
      return _availableFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableFilters);
  }

  @override
  final dynamic message;
  @override
  final dynamic comment;
  @override
  final dynamic advantages;
  @override
  final dynamic disadvantages;
  @override
  final int totalItems;
  @override
  final String sortOrder;
  @override
  final String sortBy;
  @override
  final String sortOrderRev;
  @override
  final Filtering filtering;

  @override
  String toString() {
    return 'ProductReviewsSearch(page: $page, itemsPerPage: $itemsPerPage, loadProductData: $loadProductData, productId: $productId, status: $status, storefrontId: $storefrontId, availableFilters: $availableFilters, message: $message, comment: $comment, advantages: $advantages, disadvantages: $disadvantages, totalItems: $totalItems, sortOrder: $sortOrder, sortBy: $sortBy, sortOrderRev: $sortOrderRev, filtering: $filtering)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductReviewsSearchImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.loadProductData, loadProductData) ||
                other.loadProductData == loadProductData) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.storefrontId, storefrontId) ||
                other.storefrontId == storefrontId) &&
            const DeepCollectionEquality().equals(
              other._availableFilters,
              _availableFilters,
            ) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(
              other.advantages,
              advantages,
            ) &&
            const DeepCollectionEquality().equals(
              other.disadvantages,
              disadvantages,
            ) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrderRev, sortOrderRev) ||
                other.sortOrderRev == sortOrderRev) &&
            (identical(other.filtering, filtering) ||
                other.filtering == filtering));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    page,
    itemsPerPage,
    loadProductData,
    productId,
    status,
    storefrontId,
    const DeepCollectionEquality().hash(_availableFilters),
    const DeepCollectionEquality().hash(message),
    const DeepCollectionEquality().hash(comment),
    const DeepCollectionEquality().hash(advantages),
    const DeepCollectionEquality().hash(disadvantages),
    totalItems,
    sortOrder,
    sortBy,
    sortOrderRev,
    filtering,
  );

  /// Create a copy of ProductReviewsSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductReviewsSearchImplCopyWith<_$ProductReviewsSearchImpl>
  get copyWith =>
      __$$ProductReviewsSearchImplCopyWithImpl<_$ProductReviewsSearchImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductReviewsSearch implements ProductReviewsSearch {
  factory _ProductReviewsSearch({
    required final int page,
    required final int itemsPerPage,
    required final bool loadProductData,
    required final int productId,
    required final String status,
    required final int storefrontId,
    required final List<String> availableFilters,
    required final dynamic message,
    required final dynamic comment,
    required final dynamic advantages,
    required final dynamic disadvantages,
    required final int totalItems,
    required final String sortOrder,
    required final String sortBy,
    required final String sortOrderRev,
    required final Filtering filtering,
  }) = _$ProductReviewsSearchImpl;

  factory _ProductReviewsSearch.fromJson(Map<String, dynamic> json) =
      _$ProductReviewsSearchImpl.fromJson;

  @override
  int get page;
  @override
  int get itemsPerPage;
  @override
  bool get loadProductData;
  @override
  int get productId;
  @override
  String get status;
  @override
  int get storefrontId;
  @override
  List<String> get availableFilters;
  @override
  dynamic get message;
  @override
  dynamic get comment;
  @override
  dynamic get advantages;
  @override
  dynamic get disadvantages;
  @override
  int get totalItems;
  @override
  String get sortOrder;
  @override
  String get sortBy;
  @override
  String get sortOrderRev;
  @override
  Filtering get filtering;

  /// Create a copy of ProductReviewsSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductReviewsSearchImplCopyWith<_$ProductReviewsSearchImpl>
  get copyWith => throw _privateConstructorUsedError;
}
