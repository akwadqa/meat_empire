// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_category_index_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchCategoryIndexController)
const searchCategoryIndexControllerProvider =
    SearchCategoryIndexControllerProvider._();

final class SearchCategoryIndexControllerProvider
    extends $NotifierProvider<SearchCategoryIndexController, bool> {
  const SearchCategoryIndexControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchCategoryIndexControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchCategoryIndexControllerHash();

  @$internal
  @override
  SearchCategoryIndexController create() => SearchCategoryIndexController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$searchCategoryIndexControllerHash() =>
    r'015758850b26be19b88481361d519ddd00e37d70';

abstract class _$SearchCategoryIndexController extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
