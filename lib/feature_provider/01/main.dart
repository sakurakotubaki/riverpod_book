import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_book/feature_provider/01/shared_preferences.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SharedPreferencesWithCache Demo',
      home: SharedPreferencesDemoView(),
    );
  }
}

class SharedPreferencesDemoView extends ConsumerWidget {
  const SharedPreferencesDemoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(sharedPreferencesWithCacheDemoProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreferencesWithCache Demo'),
      ),
      body: switch(counter) {
        AsyncData(:final value) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Text(
                '$value',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ref.read(sharedPreferencesWithCacheDemoProvider.notifier)
                    .incrementCounter();
                },
                child: const Text('Increment'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  ref.read(sharedPreferencesWithCacheDemoProvider.notifier)
                    .removeCounter();
                },
                child: const Text('Remove'),
              ),
            ],
          ),
        ),
        AsyncError(:final error) => Center(child: Text('Error: $error')),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}