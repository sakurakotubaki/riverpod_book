import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

// family自体はどのプロバイダーでも使える
@riverpod
String hello(Ref ref, String input) {
  return 'これは, $input! です。';
}

// Streamでもできる
@riverpod
Stream<int> countStream(Ref ref, int count) {
  return Stream.periodic(const Duration(seconds: 1), (i) => i).take(count);
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
      home: const FamilyDemo(),
    );
  }
}

class FamilyDemo extends ConsumerWidget {
  const FamilyDemo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // プロバイダーを直接代入するのではなく、その値を受け取るように修正
    final helloValue = ref.watch(helloProvider('渡された引数'));
    final countStream = ref.watch(countStreamProvider(5));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Demo'),
      ),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // helloProviderの値を表示
            Text(helloValue),
            // countStreamProviderの値を表示（AsyncValueのハンドリング）
            switch (countStream) {
              AsyncData(:final value) => Text('Count: $value'),
              AsyncError(:final error) => Text('Error: $error'),
              _ => const CircularProgressIndicator(),
            },
          ],
        ),
      ),
    );
  }
}