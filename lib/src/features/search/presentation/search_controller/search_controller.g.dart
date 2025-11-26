// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchController)
const searchControllerProvider = SearchControllerFamily._();

final class SearchControllerProvider
    extends $AsyncNotifierProvider<SearchController, SearchResponse> {
  const SearchControllerProvider._({
    required SearchControllerFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'searchControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchControllerHash();

  @override
  String toString() {
    return r'searchControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SearchController create() => SearchController();

  @override
  bool operator ==(Object other) {
    return other is SearchControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchControllerHash() => r'1effdc6f00f35051a5906d706fff34f6b2f3cd5d';

final class SearchControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          SearchController,
          AsyncValue<SearchResponse>,
          SearchResponse,
          FutureOr<SearchResponse>,
          String?
        > {
  const SearchControllerFamily._()
    : super(
        retry: null,
        name: r'searchControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchControllerProvider call([String? categoryId]) =>
      SearchControllerProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'searchControllerProvider';
}

abstract class _$SearchController extends $AsyncNotifier<SearchResponse> {
  late final _$args = ref.$arg as String?;
  String? get categoryId => _$args;

  FutureOr<SearchResponse> build([String? categoryId]);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<SearchResponse>, SearchResponse>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<SearchResponse>, SearchResponse>,
              AsyncValue<SearchResponse>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
