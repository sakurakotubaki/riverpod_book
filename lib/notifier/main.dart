import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_book/notifier/note_generate_page.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigoAccent, // AppBarの色.
          foregroundColor: Colors.grey, // AppBarのフォントの色.
          centerTitle: true, // AppBarのAndroidのタイトルを中央寄せにする.
        ),
      ),
      home: const NoteGeneratePage(),
    );
  }
}
