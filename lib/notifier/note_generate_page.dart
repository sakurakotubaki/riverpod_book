import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_book/notifier/note_app.dart';
import 'package:riverpod_book/notifier/notes_model.dart' as notes_model;

class NoteGeneratePage extends ConsumerWidget {
  const NoteGeneratePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watchで、初期値が空のリストを呼び出して、監視する。
    final noteAppGenerater = ref.watch(noteAppProvider);
    // 入力フォームの値をリストに保存するTextEditingController.
    final bodyController = TextEditingController();
    // ランダムな数値を作り出す変数.
    final randomId = Random().nextInt(100) + 50;
    // 現在時刻を表取得する変数.
    DateTime createdAt = DateTime.now();

    return Scaffold(
      appBar: AppBar(title: const Text('Notes Generate')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: bodyController,
                  decoration: InputDecoration(
                    labelText: 'Content',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // NoteModelクラスに、ダミーのデータを引数として渡して保存する.
                  ref
                      .read(noteAppProvider.notifier)
                      .addNote(
                        notes_model.NotesModel(
                          id: randomId,
                          body: bodyController.text,
                          createdAt: createdAt,
                        ),
                      );
                },
                child: const Text('Add note'),
              ),
              const SizedBox(height: 20),
              noteAppGenerater.isEmpty
                  ? const Text('Add notes ')
                  : ListView.builder(
                    itemCount:
                        noteAppGenerater
                            .length, // StateNotifierのリストに追加されたデータの数を数える.
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final note = noteAppGenerater[index];
                      return ListTile(
                        title: Text(
                          'id: ${note} memo: ${note.body}',
                        ), // idとフォームから入力された値を表示.
                        subtitle: Text(
                          note.createdAt.toIso8601String(),
                        ), // リストにデータを追加した時刻を表示.
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            // リストのidを取得してボタンを押したリストだけ削除する.
                            ref
                                .read(noteAppProvider.notifier)
                                .removeNoteById(note.id);
                          },
                        ),
                      );
                    },
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
