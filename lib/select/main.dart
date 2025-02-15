import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState({
    required int id,
    required String name,
  }) = _ItemState;
}

@riverpod
class ItemNotifier extends _$ItemNotifier {

  @override
  List<ItemState> build() {
    return ItemRepository().fetchItems();
  }
}

// ダミー３件のスタブクラス
class ItemRepository {

  List<ItemState> fetchItems() {
    return [
      ItemState(id: 1, name: 'item1'),
      ItemState(id: 2, name: 'item2'),
      ItemState(id: 3, name: 'item3'),
    ];
  }
}

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ItemView(),
    );
  }
}

// 選択中のアイテムIDを管理するプロバイダーを追加
@riverpod
class SelectedItemId extends _$SelectedItemId {
  @override
  int? build() => null;

  void select(int id) => state = id;
}

// 選択中のアイテムを取得するプロバイダーを追加
@riverpod
ItemState? selectedItem(Ref ref) {
  final selectedId = ref.watch(selectedItemIdProvider);
  if (selectedId == null) return null;
  
  // selectを使用して、特定のIDのアイテムのみを監視
  return ref.watch(itemNotifierProvider.select(
    (items) => items.firstWhere((item) => item.id == selectedId)
  ));
}

class ItemView extends ConsumerWidget {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemNotifierProvider);
    final selectedId = ref.watch(selectedItemIdProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Item Demo'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.name),
            selected: selectedId == item.id,
            onTap: () {
              // タップしたアイテムのIDを選択状態にする
              ref.read(selectedItemIdProvider.notifier).select(item.id);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ItemDetailView(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// 詳細ページを修正
class ItemDetailView extends ConsumerWidget {
  const ItemDetailView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // selectedItemProviderを使用して選択中のアイテムを監視
    final selectedItem = ref.watch(selectedItemProvider);

    if (selectedItem == null) {
      return const Scaffold(
        body: Center(child: Text('No item selected')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(selectedItem.name),
      ),
      body: Card(
        margin: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Item Details',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              Text('ID: ${selectedItem.id}'),
              Text('Name: ${selectedItem.name}'),
            ],
          ),
        ),
      ),
    );
  }
}