// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_language.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentLanguageHash() => r'bb68bf5ca776735d01d1af727392965270acc666';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CurrentLanguage extends BuildlessNotifier<String> {
  late final BuildContext? context;

  String build([
    BuildContext? context,
  ]);
}

/// See also [CurrentLanguage].
@ProviderFor(CurrentLanguage)
const currentLanguageProvider = CurrentLanguageFamily();

/// See also [CurrentLanguage].
class CurrentLanguageFamily extends Family<String> {
  /// See also [CurrentLanguage].
  const CurrentLanguageFamily();

  /// See also [CurrentLanguage].
  CurrentLanguageProvider call([
    BuildContext? context,
  ]) {
    return CurrentLanguageProvider(
      context,
    );
  }

  @override
  CurrentLanguageProvider getProviderOverride(
    covariant CurrentLanguageProvider provider,
  ) {
    return call(
      provider.context,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'currentLanguageProvider';
}

/// See also [CurrentLanguage].
class CurrentLanguageProvider
    extends NotifierProviderImpl<CurrentLanguage, String> {
  /// See also [CurrentLanguage].
  CurrentLanguageProvider([
    BuildContext? context,
  ]) : this._internal(
          () => CurrentLanguage()..context = context,
          from: currentLanguageProvider,
          name: r'currentLanguageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$currentLanguageHash,
          dependencies: CurrentLanguageFamily._dependencies,
          allTransitiveDependencies:
              CurrentLanguageFamily._allTransitiveDependencies,
          context: context,
        );

  CurrentLanguageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final BuildContext? context;

  @override
  String runNotifierBuild(
    covariant CurrentLanguage notifier,
  ) {
    return notifier.build(
      context,
    );
  }

  @override
  Override overrideWith(CurrentLanguage Function() create) {
    return ProviderOverride(
      origin: this,
      override: CurrentLanguageProvider._internal(
        () => create()..context = context,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  NotifierProviderElement<CurrentLanguage, String> createElement() {
    return _CurrentLanguageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentLanguageProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CurrentLanguageRef on NotifierProviderRef<String> {
  /// The parameter `context` of this provider.
  BuildContext? get context;
}

class _CurrentLanguageProviderElement
    extends NotifierProviderElement<CurrentLanguage, String>
    with CurrentLanguageRef {
  _CurrentLanguageProviderElement(super.provider);

  @override
  BuildContext? get context => (origin as CurrentLanguageProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
