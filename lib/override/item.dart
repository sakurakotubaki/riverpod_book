import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const factory Item({@Default(0) int id, @Default('') String name}) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@riverpod
List<Item> items(Ref ref) {
  return [
    const Item(id: 1, name: 'apple'),
    const Item(id: 2, name: 'banana'),
    const Item(id: 3, name: 'grape'),
  ];
}

@Riverpod(dependencies: [])
class SelectedItem extends _$SelectedItem {
  @override
  Item build(int? id) => items(
    ref,
  ).firstWhere((item) => item.id == id, orElse: () => const Item());
}
