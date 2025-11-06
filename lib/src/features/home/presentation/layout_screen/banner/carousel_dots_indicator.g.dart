// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_dots_indicator.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CarouselPageIndex)
const carouselPageIndexProvider = CarouselPageIndexProvider._();

final class CarouselPageIndexProvider
    extends $NotifierProvider<CarouselPageIndex, int> {
  const CarouselPageIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'carouselPageIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$carouselPageIndexHash();

  @$internal
  @override
  CarouselPageIndex create() => CarouselPageIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$carouselPageIndexHash() => r'3cef0ce5e44c68618455ffa73f6a334c8bffc10c';

abstract class _$CarouselPageIndex extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
