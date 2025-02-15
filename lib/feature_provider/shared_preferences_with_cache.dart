import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shared_preferences_with_cache.g.dart';

// 後でriverpod_generatorによって自動生成されるコード用のスケルトン
// このメソッドは@riverpodアノテーションで置き換えられます
@riverpod
Future<SharedPreferencesWithCache> sharedPreferencesWithCache(Ref ref) async {
  return SharedPreferencesWithCache.create();
}

class SharedPreferencesWithCache {
  final SharedPreferences _prefs;

  SharedPreferencesWithCache._(this._prefs);

  static Future<SharedPreferencesWithCache> create() async {
    final prefs = await SharedPreferences.getInstance();
    return SharedPreferencesWithCache._(prefs);
  }

  Future<void> setToken(String token) async {
    await _prefs.setString('token', token);
  }

  String? getToken() {
    return _prefs.getString('token');
  }

  Future<void> removeToken() async {
    await _prefs.remove('token');
  }
}