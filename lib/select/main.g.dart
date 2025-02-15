// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedItemHash() => r'a2528bb31dcbb3b6931af906ea3a1595f1bb9a90';

/// See also [selectedItem].
@ProviderFor(selectedItem)
final selectedItemProvider = AutoDisposeProvider<ItemState?>.internal(
  selectedItem,
  name: r'selectedItemProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$selectedItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SelectedItemRef = AutoDisposeProviderRef<ItemState?>;
String _$itemNotifierHash() => r'8e98b530218db03c51c98ef3a4f8f3f7fdea4f5d';

/// See also [ItemNotifier].
@ProviderFor(ItemNotifier)
final itemNotifierProvider =
    AutoDisposeNotifierProvider<ItemNotifier, List<ItemState>>.internal(
      ItemNotifier.new,
      name: r'itemNotifierProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$itemNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ItemNotifier = AutoDisposeNotifier<List<ItemState>>;
String _$selectedItemIdHash() => r'b16a35c8ba19046ccf229187125ce8a4a9208871';

/// See also [SelectedItemId].
@ProviderFor(SelectedItemId)
final selectedItemIdProvider =
    AutoDisposeNotifierProvider<SelectedItemId, int?>.internal(
      SelectedItemId.new,
      name: r'selectedItemIdProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$selectedItemIdHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SelectedItemId = AutoDisposeNotifier<int?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
