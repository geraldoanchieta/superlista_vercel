// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnidadesStruct extends BaseStruct {
  UnidadesStruct({
    int? id,
    String? nome,
    String? simbolo,
    String? tipoMedida,
    double? fatorParaBaseSi,
  })  : _id = id,
        _nome = nome,
        _simbolo = simbolo,
        _tipoMedida = tipoMedida,
        _fatorParaBaseSi = fatorParaBaseSi;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "simbolo" field.
  String? _simbolo;
  String get simbolo => _simbolo ?? '';
  set simbolo(String? val) => _simbolo = val;

  bool hasSimbolo() => _simbolo != null;

  // "tipo_medida" field.
  String? _tipoMedida;
  String get tipoMedida => _tipoMedida ?? '';
  set tipoMedida(String? val) => _tipoMedida = val;

  bool hasTipoMedida() => _tipoMedida != null;

  // "fator_para_base_si" field.
  double? _fatorParaBaseSi;
  double get fatorParaBaseSi => _fatorParaBaseSi ?? 0.0;
  set fatorParaBaseSi(double? val) => _fatorParaBaseSi = val;

  void incrementFatorParaBaseSi(double amount) =>
      fatorParaBaseSi = fatorParaBaseSi + amount;

  bool hasFatorParaBaseSi() => _fatorParaBaseSi != null;

  static UnidadesStruct fromMap(Map<String, dynamic> data) => UnidadesStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        simbolo: data['simbolo'] as String?,
        tipoMedida: data['tipo_medida'] as String?,
        fatorParaBaseSi: castToType<double>(data['fator_para_base_si']),
      );

  static UnidadesStruct? maybeFromMap(dynamic data) =>
      data is Map ? UnidadesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'simbolo': _simbolo,
        'tipo_medida': _tipoMedida,
        'fator_para_base_si': _fatorParaBaseSi,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'simbolo': serializeParam(
          _simbolo,
          ParamType.String,
        ),
        'tipo_medida': serializeParam(
          _tipoMedida,
          ParamType.String,
        ),
        'fator_para_base_si': serializeParam(
          _fatorParaBaseSi,
          ParamType.double,
        ),
      }.withoutNulls;

  static UnidadesStruct fromSerializableMap(Map<String, dynamic> data) =>
      UnidadesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        simbolo: deserializeParam(
          data['simbolo'],
          ParamType.String,
          false,
        ),
        tipoMedida: deserializeParam(
          data['tipo_medida'],
          ParamType.String,
          false,
        ),
        fatorParaBaseSi: deserializeParam(
          data['fator_para_base_si'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'UnidadesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UnidadesStruct &&
        id == other.id &&
        nome == other.nome &&
        simbolo == other.simbolo &&
        tipoMedida == other.tipoMedida &&
        fatorParaBaseSi == other.fatorParaBaseSi;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, nome, simbolo, tipoMedida, fatorParaBaseSi]);
}

UnidadesStruct createUnidadesStruct({
  int? id,
  String? nome,
  String? simbolo,
  String? tipoMedida,
  double? fatorParaBaseSi,
}) =>
    UnidadesStruct(
      id: id,
      nome: nome,
      simbolo: simbolo,
      tipoMedida: tipoMedida,
      fatorParaBaseSi: fatorParaBaseSi,
    );
