// import 'dart:async';
// import 'package:flutter/foundation.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'shared_preferences.g.dart';

// @riverpod
// Future<SharedPreferencesWithCache> sharedPreferencesWithCache(Ref ref) async {
//   try {
//     return await SharedPreferencesWithCache.create(
//       cacheOptions: const SharedPreferencesWithCacheOptions(
//         // allowlistにcounterを追加
//         allowList: <String>{'repeat', 'action', 'counter', 'externalCounter'},
//       ),
//     );
//   } catch (e) {
//     throw Exception('Failed to create SharedPreferencesWithCache: $e');
//   } finally {
//     debugPrint('実行されました');
//   }
// }

// // このプロバイダーは、SharedPreferencesWithCacheDemoクラスのインスタンスを返します。
// @Riverpod(keepAlive: true)
// class SharedPreferencesWithCacheDemo extends _$SharedPreferencesWithCacheDemo {
//   @override
//   Future<int> build() async {
//     final prefs = await ref.watch(sharedPreferencesWithCacheProvider.future);
//     return prefs.getInt('counter') ?? 0;
//   }

//   Future<void> incrementCounter() async {
//     final prefs = await ref.read(sharedPreferencesWithCacheProvider.future);
//     final currentValue = await future;
//     await prefs.setInt('counter', currentValue + 1);
//     ref.invalidateSelf();
//   }

//   Future<int> getExternalCounter() async {
//     final prefs = await ref.read(sharedPreferencesWithCacheProvider.future);
//     return prefs.getInt('externalCounter') ?? 0;
//   }

//   Future<void> removeCounter() async {
//     final prefs = await ref.read(sharedPreferencesWithCacheProvider.future);
//     await prefs.remove('counter');
//     ref.invalidateSelf();
//   }
// }
