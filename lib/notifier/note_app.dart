import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_book/notifier/notes_model.dart';

part 'note_app.g.dart'; // ファイル名に .g.dart をつける

// @riverpodのアノテーションをつける
@riverpod
class NoteApp extends _$NoteApp {
  @override
  List<NotesModel> build() => [];

  // 空っぽのクラスに、id、フォームの値、現在時刻を保存する.
  void addNote(NotesModel note) {
    state = [...state, note];
  }

  // ダミーのデータを削除する.
  void removeNoteById(int id) {
    state = state.where((note) => note.id != id).toList();
  }
}
