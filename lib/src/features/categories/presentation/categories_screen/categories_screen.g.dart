// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_screen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Riverpod providers for managing category state

@ProviderFor(IsExpandedCategoriesBar)
const isExpandedCategoriesBarProvider = IsExpandedCategoriesBarProvider._();

/// Riverpod providers for managing category state
final class IsExpandedCategoriesBarProvider
    extends $NotifierProvider<IsExpandedCategoriesBar, bool> {
  /// Riverpod providers for managing category state
  const IsExpandedCategoriesBarProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isExpandedCategoriesBarProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isExpandedCategoriesBarHash();

  @$internal
  @override
  IsExpandedCategoriesBar create() => IsExpandedCategoriesBar();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isExpandedCategoriesBarHash() =>
    r'745d360ed1debf7f6b9def36cbf2cdc03ef85c23';

/// Riverpod providers for managing category state

abstract class _$IsExpandedCategoriesBar extends $Notifier<bool> {
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
