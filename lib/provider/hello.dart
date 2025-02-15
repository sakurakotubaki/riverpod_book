import 'package:flutter_riverpod/flutter_riverpod.dart'; // 2.6.0からはこのモジュールが必要
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'hello.g.dart'; // ファイル名に .g.dart をつける

// @riverpod状態が破棄されるautoDisposeを使う
@riverpod
String hello(Ref ref) {
  return 'Hello, Riverpod!';
}

// @Riverpod(keepAlive: true)は状態が破棄されない
@Riverpod(keepAlive: true)
String keepHello(Ref ref) {
  return 'Keep Hello, Riverpod!';
}
