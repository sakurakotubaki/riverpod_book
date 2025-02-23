// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$helloHash() => r'bfbde661d2bf2eec552cafc6449acadf48337b0e';

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

/// See also [hello].
@ProviderFor(hello)
const helloProvider = HelloFamily();

/// See also [hello].
class HelloFamily extends Family<String> {
  /// See also [hello].
  const HelloFamily();

  /// See also [hello].
  HelloProvider call(String input) {
    return HelloProvider(input);
  }

  @override
  HelloProvider getProviderOverride(covariant HelloProvider provider) {
    return call(provider.input);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'helloProvider';
}

/// See also [hello].
class HelloProvider extends AutoDisposeProvider<String> {
  /// See also [hello].
  HelloProvider(String input)
    : this._internal(
        (ref) => hello(ref as HelloRef, input),
        from: helloProvider,
        name: r'helloProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$helloHash,
        dependencies: HelloFamily._dependencies,
        allTransitiveDependencies: HelloFamily._allTransitiveDependencies,
        input: input,
      );

  HelloProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.input,
  }) : super.internal();

  final String input;

  @override
  Override overrideWith(String Function(HelloRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: HelloProvider._internal(
        (ref) => create(ref as HelloRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        input: input,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _HelloProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HelloProvider && other.input == input;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, input.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HelloRef on AutoDisposeProviderRef<String> {
  /// The parameter `input` of this provider.
  String get input;
}

class _HelloProviderElement extends AutoDisposeProviderElement<String>
    with HelloRef {
  _HelloProviderElement(super.provider);

  @override
  String get input => (origin as HelloProvider).input;
}

String _$countStreamHash() => r'1ee1a0ead9a7bc0e11109e797895f468567db60a';

/// See also [countStream].
@ProviderFor(countStream)
const countStreamProvider = CountStreamFamily();

/// See also [countStream].
class CountStreamFamily extends Family<AsyncValue<int>> {
  /// See also [countStream].
  const CountStreamFamily();

  /// See also [countStream].
  CountStreamProvider call(int count) {
    return CountStreamProvider(count);
  }

  @override
  CountStreamProvider getProviderOverride(
    covariant CountStreamProvider provider,
  ) {
    return call(provider.count);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'countStreamProvider';
}

/// See also [countStream].
class CountStreamProvider extends AutoDisposeStreamProvider<int> {
  /// See also [countStream].
  CountStreamProvider(int count)
    : this._internal(
        (ref) => countStream(ref as CountStreamRef, count),
        from: countStreamProvider,
        name: r'countStreamProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$countStreamHash,
        dependencies: CountStreamFamily._dependencies,
        allTransitiveDependencies: CountStreamFamily._allTransitiveDependencies,
        count: count,
      );

  CountStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.count,
  }) : super.internal();

  final int count;

  @override
  Override overrideWith(Stream<int> Function(CountStreamRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: CountStreamProvider._internal(
        (ref) => create(ref as CountStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        count: count,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<int> createElement() {
    return _CountStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CountStreamProvider && other.count == count;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CountStreamRef on AutoDisposeStreamProviderRef<int> {
  /// The parameter `count` of this provider.
  int get count;
}

class _CountStreamProviderElement extends AutoDisposeStreamProviderElement<int>
    with CountStreamRef {
  _CountStreamProviderElement(super.provider);

  @override
  int get count => (origin as CountStreamProvider).count;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
