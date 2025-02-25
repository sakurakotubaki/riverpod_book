// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
);

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemsHash() => r'9e4fdde6d80d18cf70914cc1887a0f6d496b6aea';

/// See also [items].
@ProviderFor(items)
final itemsProvider = AutoDisposeProvider<List<Item>>.internal(
  items,
  name: r'itemsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ItemsRef = AutoDisposeProviderRef<List<Item>>;
String _$selectedItemHash() => r'a82754566b322e226e26e3df2ae42c0d78a9a557';

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

abstract class _$SelectedItem extends BuildlessAutoDisposeNotifier<Item> {
  late final int? id;

  Item build(int? id);
}

/// See also [SelectedItem].
@ProviderFor(SelectedItem)
const selectedItemProvider = SelectedItemFamily();

/// See also [SelectedItem].
class SelectedItemFamily extends Family<Item> {
  /// See also [SelectedItem].
  const SelectedItemFamily();

  /// See also [SelectedItem].
  SelectedItemProvider call(int? id) {
    return SelectedItemProvider(id);
  }

  @override
  SelectedItemProvider getProviderOverride(
    covariant SelectedItemProvider provider,
  ) {
    return call(provider.id);
  }

  static final Iterable<ProviderOrFamily> _dependencies =
      const <ProviderOrFamily>[];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      const <ProviderOrFamily>{};

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'selectedItemProvider';
}

/// See also [SelectedItem].
class SelectedItemProvider
    extends AutoDisposeNotifierProviderImpl<SelectedItem, Item> {
  /// See also [SelectedItem].
  SelectedItemProvider(int? id)
    : this._internal(
        () => SelectedItem()..id = id,
        from: selectedItemProvider,
        name: r'selectedItemProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$selectedItemHash,
        dependencies: SelectedItemFamily._dependencies,
        allTransitiveDependencies:
            SelectedItemFamily._allTransitiveDependencies,
        id: id,
      );

  SelectedItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int? id;

  @override
  Item runNotifierBuild(covariant SelectedItem notifier) {
    return notifier.build(id);
  }

  @override
  Override overrideWith(SelectedItem Function() create) {
    return ProviderOverride(
      origin: this,
      override: SelectedItemProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SelectedItem, Item> createElement() {
    return _SelectedItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedItemProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SelectedItemRef on AutoDisposeNotifierProviderRef<Item> {
  /// The parameter `id` of this provider.
  int? get id;
}

class _SelectedItemProviderElement
    extends AutoDisposeNotifierProviderElement<SelectedItem, Item>
    with SelectedItemRef {
  _SelectedItemProviderElement(super.provider);

  @override
  int? get id => (origin as SelectedItemProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
