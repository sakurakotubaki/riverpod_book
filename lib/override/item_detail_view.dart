import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_book/override/item.dart';

class ItemDetailView extends StatelessWidget {
  const ItemDetailView({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [selectedItemProvider(item.id)],
      child: Scaffold(
        appBar: AppBar(title: const Text('Item Detail')),
        body: Center(
          child: Consumer(
            builder: (context, ref, _) {
              final selectedItem = ref.watch(selectedItemProvider(item.id));
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ID: ${selectedItem.id}'),
                  Text('Name: ${selectedItem.name}'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
