import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_book/feature_provider/03/user_future.dart';

class HttpUserList extends ConsumerWidget {
  const HttpUserList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boredSuggestion = ref.watch(userHttpProvider);
    // Perform a switch-case on the result to handle loading/error states
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('http for'),
      ),
      body: switch (boredSuggestion) {
        AsyncData(:final value) => ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) {
            final user = value[index];
            return ListTile(title: Text(user.name), subtitle: Text(user.email));
          },
        ),
        AsyncError(:final error) => Text('error: $error'),
        _ => const Text('loading'),
      },
    );
  }
}
