// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriasStruct extends BaseStruct {
  CategoriasStruct({
    int? id,
    String? nome,
    String? imagemUrl,
    int? posicao,
    String? criadoEm,
  })  : _id = id,
        _nome = nome,
        _imagemUrl = imagemUrl,
        _posicao = posicao,
        _criadoEm = criadoEm;

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

  // "imagem_url" field.
  String? _imagemUrl;
  String get imagemUrl => _imagemUrl ?? '';
  set imagemUrl(String? val) => _imagemUrl = val;

  bool hasImagemUrl() => _imagemUrl != null;

  // "posicao" field.
  int? _posicao;
  int get posicao => _posicao ?? 0;
  set posicao(int? val) => _posicao = val;

  void incrementPosicao(int amount) => posicao = posicao + amount;

  bool hasPosicao() => _posicao != null;

  // "criado_em" field.
  String? _criadoEm;
  String get criadoEm => _criadoEm ?? '';
  set criadoEm(String? val) => _criadoEm = val;

  bool hasCriadoEm() => _criadoEm != null;

  static CategoriasStruct fromMap(Map<String, dynamic> data) =>
      CategoriasStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        imagemUrl: data['imagem_url'] as String?,
        posicao: castToType<int>(data['posicao']),
        criadoEm: data['criado_em'] as String?,
      );

  static CategoriasStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'imagem_url': _imagemUrl,
        'posicao': _posicao,
        'criado_em': _criadoEm,
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
        'imagem_url': serializeParam(
          _imagemUrl,
          ParamType.String,
        ),
        'posicao': serializeParam(
          _posicao,
          ParamType.int,
        ),
        'criado_em': serializeParam(
          _criadoEm,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoriasStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriasStruct(
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
        imagemUrl: deserializeParam(
          data['imagem_url'],
          ParamType.String,
          false,
        ),
        posicao: deserializeParam(
          data['posicao'],
          ParamType.int,
          false,
        ),
        criadoEm: deserializeParam(
          data['criado_em'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoriasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoriasStruct &&
        id == other.id &&
        nome == other.nome &&
        imagemUrl == other.imagemUrl &&
        posicao == other.posicao &&
        criadoEm == other.criadoEm;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, nome, imagemUrl, posicao, criadoEm]);
}

CategoriasStruct createCategoriasStruct({
  int? id,
  String? nome,
  String? imagemUrl,
  int? posicao,
  String? criadoEm,
}) =>
    CategoriasStruct(
      id: id,
      nome: nome,
      imagemUrl: imagemUrl,
      posicao: posicao,
      criadoEm: criadoEm,
    );
