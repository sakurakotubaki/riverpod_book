import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'notes_model.freezed.dart';
part 'notes_model.g.dart';

@freezed
class NotesModel with _$NotesModel {
  const factory NotesModel({
    required int id,
    required String body,
    required DateTime createdAt,
  }) = _NotesModel;

  factory NotesModel.fromJson(Map<String, dynamic> json) =>
      _$NotesModelFromJson(json);
}
