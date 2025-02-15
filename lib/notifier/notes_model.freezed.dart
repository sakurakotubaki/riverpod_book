// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotesModel _$NotesModelFromJson(Map<String, dynamic> json) {
  return _NotesModel.fromJson(json);
}

/// @nodoc
mixin _$NotesModel {
  int get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this NotesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotesModelCopyWith<NotesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesModelCopyWith<$Res> {
  factory $NotesModelCopyWith(
    NotesModel value,
    $Res Function(NotesModel) then,
  ) = _$NotesModelCopyWithImpl<$Res, NotesModel>;
  @useResult
  $Res call({int id, String body, DateTime createdAt});
}

/// @nodoc
class _$NotesModelCopyWithImpl<$Res, $Val extends NotesModel>
    implements $NotesModelCopyWith<$Res> {
  _$NotesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            body:
                null == body
                    ? _value.body
                    : body // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotesModelImplCopyWith<$Res>
    implements $NotesModelCopyWith<$Res> {
  factory _$$NotesModelImplCopyWith(
    _$NotesModelImpl value,
    $Res Function(_$NotesModelImpl) then,
  ) = __$$NotesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String body, DateTime createdAt});
}

/// @nodoc
class __$$NotesModelImplCopyWithImpl<$Res>
    extends _$NotesModelCopyWithImpl<$Res, _$NotesModelImpl>
    implements _$$NotesModelImplCopyWith<$Res> {
  __$$NotesModelImplCopyWithImpl(
    _$NotesModelImpl _value,
    $Res Function(_$NotesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$NotesModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        body:
            null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotesModelImpl with DiagnosticableTreeMixin implements _NotesModel {
  const _$NotesModelImpl({
    required this.id,
    required this.body,
    required this.createdAt,
  });

  factory _$NotesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotesModelImplFromJson(json);

  @override
  final int id;
  @override
  final String body;
  @override
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesModel(id: $id, body: $body, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotesModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, body, createdAt);

  /// Create a copy of NotesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesModelImplCopyWith<_$NotesModelImpl> get copyWith =>
      __$$NotesModelImplCopyWithImpl<_$NotesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotesModelImplToJson(this);
  }
}

abstract class _NotesModel implements NotesModel {
  const factory _NotesModel({
    required final int id,
    required final String body,
    required final DateTime createdAt,
  }) = _$NotesModelImpl;

  factory _NotesModel.fromJson(Map<String, dynamic> json) =
      _$NotesModelImpl.fromJson;

  @override
  int get id;
  @override
  String get body;
  @override
  DateTime get createdAt;

  /// Create a copy of NotesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotesModelImplCopyWith<_$NotesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
