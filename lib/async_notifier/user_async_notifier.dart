import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_book/async_notifier/user_state.dart';
part 'user_async_notifier.g.dart';

@riverpod
class UserAsyncNotifier extends _$UserAsyncNotifier {
  // ここでは、initStateのようなものを定義している。
  // 昔はコンストラクタで初期化していた。
  @override
  FutureOr<List<UserState>> build() {
    return fetchUsers();
  }

  FutureOr<List<UserState>> fetchUsers() async {
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
}
