import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_book/override/item.dart';

void main() {
  group('ItemProvider Tests', () {
    test('itemsProvider should return stubbed items when overridden', () {
      // スタブデータの準備
      final stubItems = [
        Item(id: 1, name: 'apple'),
        Item(id: 2, name: 'banana'),
      ];

      // テスト用のコンテナを作成
      final container = ProviderContainer(
        overrides: [itemsProvider.overrideWith((ref) => stubItems)],
      );

      // クリーンアップを忘れずに
      addTearDown(container.dispose);

      // 結果の検証
      // 左が実際の値のactual、右が期待する値のmatcher
      expect(container.read(itemsProvider), stubItems);
      expect(container.read(itemsProvider).length, 2);
      // ここは値が異なるのでテストが失敗する。
      expect(container.read(itemsProvider)[0].name, 'りんご');
    });
  });
}
