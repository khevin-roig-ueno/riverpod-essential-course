// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'0436366d67fea6b96790fc97d5d94d6c74a3fad7';

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

abstract class _$Counter extends BuildlessAutoDisposeNotifier<int> {
  late final int initialValie;

  int build(
    int initialValie,
  );
}

/// See also [Counter].
@ProviderFor(Counter)
const counterProvider = CounterFamily();

/// See also [Counter].
class CounterFamily extends Family<int> {
  /// See also [Counter].
  const CounterFamily();

  /// See also [Counter].
  CounterProvider call(
    int initialValie,
  ) {
    return CounterProvider(
      initialValie,
    );
  }

  @override
  CounterProvider getProviderOverride(
    covariant CounterProvider provider,
  ) {
    return call(
      provider.initialValie,
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
  String? get name => r'counterProvider';
}

/// See also [Counter].
class CounterProvider extends AutoDisposeNotifierProviderImpl<Counter, int> {
  /// See also [Counter].
  CounterProvider(
    int initialValie,
  ) : this._internal(
          () => Counter()..initialValie = initialValie,
          from: counterProvider,
          name: r'counterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$counterHash,
          dependencies: CounterFamily._dependencies,
          allTransitiveDependencies: CounterFamily._allTransitiveDependencies,
          initialValie: initialValie,
        );

  CounterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialValie,
  }) : super.internal();

  final int initialValie;

  @override
  int runNotifierBuild(
    covariant Counter notifier,
  ) {
    return notifier.build(
      initialValie,
    );
  }

  @override
  Override overrideWith(Counter Function() create) {
    return ProviderOverride(
      origin: this,
      override: CounterProvider._internal(
        () => create()..initialValie = initialValie,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialValie: initialValie,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Counter, int> createElement() {
    return _CounterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CounterProvider && other.initialValie == initialValie;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialValie.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CounterRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `initialValie` of this provider.
  int get initialValie;
}

class _CounterProviderElement
    extends AutoDisposeNotifierProviderElement<Counter, int> with CounterRef {
  _CounterProviderElement(super.provider);

  @override
  int get initialValie => (origin as CounterProvider).initialValie;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
