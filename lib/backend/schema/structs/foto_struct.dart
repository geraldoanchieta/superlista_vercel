// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FotoStruct extends BaseStruct {
  FotoStruct({
    int? id,
    String? foto,
  })  : _id = id,
        _foto = foto;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  static FotoStruct fromMap(Map<String, dynamic> data) => FotoStruct(
        id: castToType<int>(data['id']),
        foto: data['foto'] as String?,
      );

  static FotoStruct? maybeFromMap(dynamic data) =>
      data is Map ? FotoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'foto': _foto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
      }.withoutNulls;

  static FotoStruct fromSerializableMap(Map<String, dynamic> data) =>
      FotoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FotoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FotoStruct && id == other.id && foto == other.foto;
  }

  @override
  int get hashCode => const ListEquality().hash([id, foto]);
}

FotoStruct createFotoStruct({
  int? id,
  String? foto,
}) =>
    FotoStruct(
      id: id,
      foto: foto,
    );
