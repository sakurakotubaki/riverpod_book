import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_book/async_notifier/user_state.dart';

part 'user_future.g.dart';

@riverpod
FutureOr<List<UserState>> userHttp(Ref ref) async {
  ref.onDispose(() {
    debugPrint('[userListProvider] disposed');
  });
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/users'),
  );

  final List userList = jsonDecode(response.body);
  final users = [for (final user in userList) UserState.fromJson(user)];
  return users;
}
