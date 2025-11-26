// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TutorialStruct extends BaseStruct {
  TutorialStruct({
    String? nome,
    int? ordem,
    String? video,
    String? capa,
    String? publico,
    String? descricao,
  })  : _nome = nome,
        _ordem = ordem,
        _video = video,
        _capa = capa,
        _publico = publico,
        _descricao = descricao;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  set ordem(int? val) => _ordem = val;

  void incrementOrdem(int amount) => ordem = ordem + amount;

  bool hasOrdem() => _ordem != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  set video(String? val) => _video = val;

  bool hasVideo() => _video != null;

  // "capa" field.
  String? _capa;
  String get capa => _capa ?? '';
  set capa(String? val) => _capa = val;

  bool hasCapa() => _capa != null;

  // "publico" field.
  String? _publico;
  String get publico => _publico ?? '';
  set publico(String? val) => _publico = val;

  bool hasPublico() => _publico != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  static TutorialStruct fromMap(Map<String, dynamic> data) => TutorialStruct(
        nome: data['nome'] as String?,
        ordem: castToType<int>(data['ordem']),
        video: data['video'] as String?,
        capa: data['capa'] as String?,
        publico: data['publico'] as String?,
        descricao: data['descricao'] as String?,
      );

  static TutorialStruct? maybeFromMap(dynamic data) =>
      data is Map ? TutorialStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'ordem': _ordem,
        'video': _video,
        'capa': _capa,
        'publico': _publico,
        'descricao': _descricao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'ordem': serializeParam(
          _ordem,
          ParamType.int,
        ),
        'video': serializeParam(
          _video,
          ParamType.String,
        ),
        'capa': serializeParam(
          _capa,
          ParamType.String,
        ),
        'publico': serializeParam(
          _publico,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static TutorialStruct fromSerializableMap(Map<String, dynamic> data) =>
      TutorialStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        ordem: deserializeParam(
          data['ordem'],
          ParamType.int,
          false,
        ),
        video: deserializeParam(
          data['video'],
          ParamType.String,
          false,
        ),
        capa: deserializeParam(
          data['capa'],
          ParamType.String,
          false,
        ),
        publico: deserializeParam(
          data['publico'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TutorialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TutorialStruct &&
        nome == other.nome &&
        ordem == other.ordem &&
        video == other.video &&
        capa == other.capa &&
        publico == other.publico &&
        descricao == other.descricao;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, ordem, video, capa, publico, descricao]);
}

TutorialStruct createTutorialStruct({
  String? nome,
  int? ordem,
  String? video,
  String? capa,
  String? publico,
  String? descricao,
}) =>
    TutorialStruct(
      nome: nome,
      ordem: ordem,
      video: video,
      capa: capa,
      publico: publico,
      descricao: descricao,
    );
