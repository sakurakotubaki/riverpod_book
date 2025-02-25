import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_book/override/item.dart';
import 'item_detail_view.dart';

class ItemsView extends ConsumerWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Items')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.name),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ItemDetailView(item: item),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
