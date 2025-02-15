import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_book/async_notifier/user_async_notifier.dart';

class UserList extends ConsumerWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boredSuggestion = ref.watch(userAsyncNotifierProvider);
    // Perform a switch-case on the result to handle loading/error states
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('User List'),
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
