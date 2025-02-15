import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'shared_preferences_with_cache.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sharedPreferencesAsyncValue = ref.watch(sharedPreferencesWithCacheProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences with Cache'),
      ),
      body: Center(
        child: switch (sharedPreferencesAsyncValue) {
          AsyncData(:final value) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () async {
                    await value.setToken('example_token');
                    ref.invalidate(sharedPreferencesWithCacheProvider);
                  },
                  child: const Text('Set Token'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final token = value.getToken();
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text('Token: $token'),
                      ),
                    );
                  },
                  child: const Text('Get Token'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await value.removeToken();
                    ref.invalidate(sharedPreferencesWithCacheProvider);
                  },
                  child: const Text('Remove Token'),
                ),
              ],
            ),
          AsyncLoading() => const CircularProgressIndicator(),
          AsyncError(:final error) => Text('Error: $error'),
          _ => const SizedBox.shrink()
        },
      ),
    );
  }
}
