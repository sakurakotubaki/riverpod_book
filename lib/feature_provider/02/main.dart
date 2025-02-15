import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'main.g.dart';

@riverpod
class Count extends _$Count {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }
}

// カウンターを１秒遅延させるFutureProvider
@riverpod
Future<int> delayedCounter(Ref ref) async {
  final count = ref.watch(countProvider); // 現在のカウント値を監視
  try {
    await Future.delayed(const Duration(seconds: 2));
    return count; // 遅延後に現在のカウント値を返す
  } catch (e) {
    return 0;
  } finally {
    debugPrint('実行: $count');
  }
}


void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SharedPreferencesWithCache Demo',
      home: CountView(),
    );
  }
}

class CountView extends ConsumerWidget {
  const CountView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countdelayed = ref.watch(delayedCounterProvider);
    final currentCount = ref.watch(countProvider); // 即時の値も監視

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Riverpod Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(countProvider.notifier).increment(),
        child: const Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Current Count: $currentCount'), // 即時の値
          const SizedBox(height: 20),
          switch(countdelayed) {
            AsyncData<int>(:final value) => Text('Delayed Value: $value'),
            AsyncError(:final error) => Text('Error: $error'),
            _ => const CircularProgressIndicator(),
          },
        ],
      ),
    );
  }
}