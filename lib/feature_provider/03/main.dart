import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required int id,
    required String name,
    required String email,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}

@riverpod
Future<List<UserState>> getUserFuture(Ref ref) async{
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );
    if (response.statusCode == 200) {
      final List<UserState> users = [];
      // JSONをDartのリストに変換
      final List<dynamic> jsonData = jsonDecode(response.body);
      for (final user in jsonData) {
        // freezedに値を渡して保持させる。
        users.add(UserState.fromJson(user));
      }

      return users;
    } else {
      throw Exception('Failed to load users');
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
      title: 'http Demo',
      home: UserList(),
    );
  }
}

class UserList extends ConsumerWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boredSuggestion = ref.watch(getUserFutureProvider);
    // Perform a switch-case on the result to handle loading/error states
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
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