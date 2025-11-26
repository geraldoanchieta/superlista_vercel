// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileStruct extends BaseStruct {
  ProfileStruct({
    String? id,
    int? restauranteId,
    String? nomeCompleto,
    String? fotoUrl,
    String? telefone,
    String? chatId,
    String? tipoUsuario,
    String? atualizadoEm,
    String? ddd,
  })  : _id = id,
        _restauranteId = restauranteId,
        _nomeCompleto = nomeCompleto,
        _fotoUrl = fotoUrl,
        _telefone = telefone,
        _chatId = chatId,
        _tipoUsuario = tipoUsuario,
        _atualizadoEm = atualizadoEm,
        _ddd = ddd;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "restaurante_id" field.
  int? _restauranteId;
  int get restauranteId => _restauranteId ?? 0;
  set restauranteId(int? val) => _restauranteId = val;

  void incrementRestauranteId(int amount) =>
      restauranteId = restauranteId + amount;

  bool hasRestauranteId() => _restauranteId != null;

  // "nome_completo" field.
  String? _nomeCompleto;
  String get nomeCompleto => _nomeCompleto ?? '';
  set nomeCompleto(String? val) => _nomeCompleto = val;

  bool hasNomeCompleto() => _nomeCompleto != null;

  // "foto_url" field.
  String? _fotoUrl;
  String get fotoUrl => _fotoUrl ?? '';
  set fotoUrl(String? val) => _fotoUrl = val;

  bool hasFotoUrl() => _fotoUrl != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "chat_id" field.
  String? _chatId;
  String get chatId => _chatId ?? '';
  set chatId(String? val) => _chatId = val;

  bool hasChatId() => _chatId != null;

  // "tipo_usuario" field.
  String? _tipoUsuario;
  String get tipoUsuario => _tipoUsuario ?? '';
  set tipoUsuario(String? val) => _tipoUsuario = val;

  bool hasTipoUsuario() => _tipoUsuario != null;

  // "atualizado_em" field.
  String? _atualizadoEm;
  String get atualizadoEm => _atualizadoEm ?? '';
  set atualizadoEm(String? val) => _atualizadoEm = val;

  bool hasAtualizadoEm() => _atualizadoEm != null;

  // "ddd" field.
  String? _ddd;
  String get ddd => _ddd ?? '';
  set ddd(String? val) => _ddd = val;

  bool hasDdd() => _ddd != null;

  static ProfileStruct fromMap(Map<String, dynamic> data) => ProfileStruct(
        id: data['id'] as String?,
        restauranteId: castToType<int>(data['restaurante_id']),
        nomeCompleto: data['nome_completo'] as String?,
        fotoUrl: data['foto_url'] as String?,
        telefone: data['telefone'] as String?,
        chatId: data['chat_id'] as String?,
        tipoUsuario: data['tipo_usuario'] as String?,
        atualizadoEm: data['atualizado_em'] as String?,
        ddd: data['ddd'] as String?,
      );

  static ProfileStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProfileStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'restaurante_id': _restauranteId,
        'nome_completo': _nomeCompleto,
        'foto_url': _fotoUrl,
        'telefone': _telefone,
        'chat_id': _chatId,
        'tipo_usuario': _tipoUsuario,
        'atualizado_em': _atualizadoEm,
        'ddd': _ddd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'restaurante_id': serializeParam(
          _restauranteId,
          ParamType.int,
        ),
        'nome_completo': serializeParam(
          _nomeCompleto,
          ParamType.String,
        ),
        'foto_url': serializeParam(
          _fotoUrl,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'chat_id': serializeParam(
          _chatId,
          ParamType.String,
        ),
        'tipo_usuario': serializeParam(
          _tipoUsuario,
          ParamType.String,
        ),
        'atualizado_em': serializeParam(
          _atualizadoEm,
          ParamType.String,
        ),
        'ddd': serializeParam(
          _ddd,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfileStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        restauranteId: deserializeParam(
          data['restaurante_id'],
          ParamType.int,
          false,
        ),
        nomeCompleto: deserializeParam(
          data['nome_completo'],
          ParamType.String,
          false,
        ),
        fotoUrl: deserializeParam(
          data['foto_url'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        chatId: deserializeParam(
          data['chat_id'],
          ParamType.String,
          false,
        ),
        tipoUsuario: deserializeParam(
          data['tipo_usuario'],
          ParamType.String,
          false,
        ),
        atualizadoEm: deserializeParam(
          data['atualizado_em'],
          ParamType.String,
          false,
        ),
        ddd: deserializeParam(
          data['ddd'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfileStruct &&
        id == other.id &&
        restauranteId == other.restauranteId &&
        nomeCompleto == other.nomeCompleto &&
        fotoUrl == other.fotoUrl &&
        telefone == other.telefone &&
        chatId == other.chatId &&
        tipoUsuario == other.tipoUsuario &&
        atualizadoEm == other.atualizadoEm &&
        ddd == other.ddd;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        restauranteId,
        nomeCompleto,
        fotoUrl,
        telefone,
        chatId,
        tipoUsuario,
        atualizadoEm,
        ddd
      ]);
}

ProfileStruct createProfileStruct({
  String? id,
  int? restauranteId,
  String? nomeCompleto,
  String? fotoUrl,
  String? telefone,
  String? chatId,
  String? tipoUsuario,
  String? atualizadoEm,
  String? ddd,
}) =>
    ProfileStruct(
      id: id,
      restauranteId: restauranteId,
      nomeCompleto: nomeCompleto,
      fotoUrl: fotoUrl,
      telefone: telefone,
      chatId: chatId,
      tipoUsuario: tipoUsuario,
      atualizadoEm: atualizadoEm,
      ddd: ddd,
    );
