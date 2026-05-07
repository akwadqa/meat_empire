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

String _$searchControllerHash() => r'97a6264bb2ebb5d387e25fb83bb24294ae07310e';

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

@ProviderFor(SelectedSubcategory)
const selectedSubcategoryProvider = SelectedSubcategoryProvider._();

final class SelectedSubcategoryProvider
    extends $NotifierProvider<SelectedSubcategory, String?> {
  const SelectedSubcategoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedSubcategoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedSubcategoryHash();

  @$internal
  @override
  SelectedSubcategory create() => SelectedSubcategory();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$selectedSubcategoryHash() =>
    r'0410d6fdc94b3ccce44d11b46adc69dd0ab01c6d';

abstract class _$SelectedSubcategory extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
