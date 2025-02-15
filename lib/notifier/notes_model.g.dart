// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotesModelImpl _$$NotesModelImplFromJson(Map<String, dynamic> json) =>
    _$NotesModelImpl(
      id: (json['id'] as num).toInt(),
      body: json['body'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$NotesModelImplToJson(_$NotesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'createdAt': instance.createdAt.toIso8601String(),
    };
