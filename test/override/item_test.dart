import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod/riverpod.dart';
import 'package:your_app_name/override/item.dart';

void main() {
  group('ItemProvider Tests', () {
    test('itemsProvider should return stubbed items when overridden', () {
      // スタブデータの準備
      final stubItems = [
        Item(id: '1', name: 'Stub Item 1', price: 1000),
        Item(id: '2', name: 'Stub Item 2', price: 2000),
      ];

      // テスト用のコンテナを作成
      final container = ProviderContainer(
        overrides: [itemsProvider.overrideWith((ref) => stubItems)],
      );

      // クリーンアップを忘れずに
      addTearDown(container.dispose);

      // 結果の検証
      expect(container.read(itemsProvider), stubItems);
      expect(container.read(itemsProvider).length, 2);
      expect(container.read(itemsProvider)[0].name, 'Stub Item 1');
      expect(container.read(itemsProvider)[1].price, 2000);
    });

    test('selectedItemProvider should return stubbed item when overridden', () {
      // スタブデータの準備
      final stubItem = Item(id: '1', name: 'Selected Stub Item', price: 1500);

      final container = ProviderContainer(
        overrides: [selectedItemProvider.overrideWith((ref) => stubItem)],
      );

      addTearDown(container.dispose);

      // 結果の検証
      final selectedItem = container.read(selectedItemProvider);
      expect(selectedItem.id, '1');
      expect(selectedItem.name, 'Selected Stub Item');
      expect(selectedItem.price, 1500);
    });

    test('複数のProviderを同時にオーバーライドするテスト', () {
      final stubItems = [
        Item(id: '1', name: 'Item 1', price: 1000),
        Item(id: '2', name: 'Item 2', price: 2000),
      ];
      final stubSelectedItem = Item(id: '1', name: 'Item 1', price: 1000);

      final container = ProviderContainer(
        overrides: [
          itemsProvider.overrideWith((ref) => stubItems),
          selectedItemProvider.overrideWith((ref) => stubSelectedItem),
        ],
      );

      addTearDown(container.dispose);

      // itemsProviderの検証
      expect(container.read(itemsProvider), stubItems);

      // selectedItemProviderの検証
      final selectedItem = container.read(selectedItemProvider);
      expect(selectedItem, stubSelectedItem);
      expect(selectedItem.id, stubItems[0].id); // 選択されたアイテムが存在することを確認
    });
  });
}
