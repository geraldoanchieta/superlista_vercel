// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendedorStruct extends BaseStruct {
  VendedorStruct({
    int? id,
    String? nome,
    String? telefoneWhatsapp,
    String? fotoUrl,
    String? chatId,
    String? criadoPorCompradorId,
    String? authUserId,
    bool? ativo,
    String? criadoEm,
    String? nomeEmpresa,
    String? ddd,
  })  : _id = id,
        _nome = nome,
        _telefoneWhatsapp = telefoneWhatsapp,
        _fotoUrl = fotoUrl,
        _chatId = chatId,
        _criadoPorCompradorId = criadoPorCompradorId,
        _authUserId = authUserId,
        _ativo = ativo,
        _criadoEm = criadoEm,
        _nomeEmpresa = nomeEmpresa,
        _ddd = ddd;

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

  // "telefone_whatsapp" field.
  String? _telefoneWhatsapp;
  String get telefoneWhatsapp => _telefoneWhatsapp ?? '';
  set telefoneWhatsapp(String? val) => _telefoneWhatsapp = val;

  bool hasTelefoneWhatsapp() => _telefoneWhatsapp != null;

  // "foto_url" field.
  String? _fotoUrl;
  String get fotoUrl => _fotoUrl ?? '';
  set fotoUrl(String? val) => _fotoUrl = val;

  bool hasFotoUrl() => _fotoUrl != null;

  // "chat_id" field.
  String? _chatId;
  String get chatId => _chatId ?? '';
  set chatId(String? val) => _chatId = val;

  bool hasChatId() => _chatId != null;

  // "criado_por_comprador_id" field.
  String? _criadoPorCompradorId;
  String get criadoPorCompradorId => _criadoPorCompradorId ?? '';
  set criadoPorCompradorId(String? val) => _criadoPorCompradorId = val;

  bool hasCriadoPorCompradorId() => _criadoPorCompradorId != null;

  // "auth_user_id" field.
  String? _authUserId;
  String get authUserId => _authUserId ?? '';
  set authUserId(String? val) => _authUserId = val;

  bool hasAuthUserId() => _authUserId != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  // "criado_em" field.
  String? _criadoEm;
  String get criadoEm => _criadoEm ?? '';
  set criadoEm(String? val) => _criadoEm = val;

  bool hasCriadoEm() => _criadoEm != null;

  // "nome_empresa" field.
  String? _nomeEmpresa;
  String get nomeEmpresa => _nomeEmpresa ?? '';
  set nomeEmpresa(String? val) => _nomeEmpresa = val;

  bool hasNomeEmpresa() => _nomeEmpresa != null;

  // "ddd" field.
  String? _ddd;
  String get ddd => _ddd ?? '';
  set ddd(String? val) => _ddd = val;

  bool hasDdd() => _ddd != null;

  static VendedorStruct fromMap(Map<String, dynamic> data) => VendedorStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        telefoneWhatsapp: data['telefone_whatsapp'] as String?,
        fotoUrl: data['foto_url'] as String?,
        chatId: data['chat_id'] as String?,
        criadoPorCompradorId: data['criado_por_comprador_id'] as String?,
        authUserId: data['auth_user_id'] as String?,
        ativo: data['ativo'] as bool?,
        criadoEm: data['criado_em'] as String?,
        nomeEmpresa: data['nome_empresa'] as String?,
        ddd: data['ddd'] as String?,
      );

  static VendedorStruct? maybeFromMap(dynamic data) =>
      data is Map ? VendedorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'telefone_whatsapp': _telefoneWhatsapp,
        'foto_url': _fotoUrl,
        'chat_id': _chatId,
        'criado_por_comprador_id': _criadoPorCompradorId,
        'auth_user_id': _authUserId,
        'ativo': _ativo,
        'criado_em': _criadoEm,
        'nome_empresa': _nomeEmpresa,
        'ddd': _ddd,
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
        'telefone_whatsapp': serializeParam(
          _telefoneWhatsapp,
          ParamType.String,
        ),
        'foto_url': serializeParam(
          _fotoUrl,
          ParamType.String,
        ),
        'chat_id': serializeParam(
          _chatId,
          ParamType.String,
        ),
        'criado_por_comprador_id': serializeParam(
          _criadoPorCompradorId,
          ParamType.String,
        ),
        'auth_user_id': serializeParam(
          _authUserId,
          ParamType.String,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
        'criado_em': serializeParam(
          _criadoEm,
          ParamType.String,
        ),
        'nome_empresa': serializeParam(
          _nomeEmpresa,
          ParamType.String,
        ),
        'ddd': serializeParam(
          _ddd,
          ParamType.String,
        ),
      }.withoutNulls;

  static VendedorStruct fromSerializableMap(Map<String, dynamic> data) =>
      VendedorStruct(
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
        telefoneWhatsapp: deserializeParam(
          data['telefone_whatsapp'],
          ParamType.String,
          false,
        ),
        fotoUrl: deserializeParam(
          data['foto_url'],
          ParamType.String,
          false,
        ),
        chatId: deserializeParam(
          data['chat_id'],
          ParamType.String,
          false,
        ),
        criadoPorCompradorId: deserializeParam(
          data['criado_por_comprador_id'],
          ParamType.String,
          false,
        ),
        authUserId: deserializeParam(
          data['auth_user_id'],
          ParamType.String,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
        criadoEm: deserializeParam(
          data['criado_em'],
          ParamType.String,
          false,
        ),
        nomeEmpresa: deserializeParam(
          data['nome_empresa'],
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
  String toString() => 'VendedorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VendedorStruct &&
        id == other.id &&
        nome == other.nome &&
        telefoneWhatsapp == other.telefoneWhatsapp &&
        fotoUrl == other.fotoUrl &&
        chatId == other.chatId &&
        criadoPorCompradorId == other.criadoPorCompradorId &&
        authUserId == other.authUserId &&
        ativo == other.ativo &&
        criadoEm == other.criadoEm &&
        nomeEmpresa == other.nomeEmpresa &&
        ddd == other.ddd;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        telefoneWhatsapp,
        fotoUrl,
        chatId,
        criadoPorCompradorId,
        authUserId,
        ativo,
        criadoEm,
        nomeEmpresa,
        ddd
      ]);
}

VendedorStruct createVendedorStruct({
  int? id,
  String? nome,
  String? telefoneWhatsapp,
  String? fotoUrl,
  String? chatId,
  String? criadoPorCompradorId,
  String? authUserId,
  bool? ativo,
  String? criadoEm,
  String? nomeEmpresa,
  String? ddd,
}) =>
    VendedorStruct(
      id: id,
      nome: nome,
      telefoneWhatsapp: telefoneWhatsapp,
      fotoUrl: fotoUrl,
      chatId: chatId,
      criadoPorCompradorId: criadoPorCompradorId,
      authUserId: authUserId,
      ativo: ativo,
      criadoEm: criadoEm,
      nomeEmpresa: nomeEmpresa,
      ddd: ddd,
    );
