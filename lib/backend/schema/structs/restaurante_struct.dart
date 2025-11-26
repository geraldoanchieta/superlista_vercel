// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestauranteStruct extends BaseStruct {
  RestauranteStruct({
    int? id,
    String? nomeFantasia,
    String? razaoSocial,
    String? cnpj,
    String? endereco,
    String? logoUrl,
    String? adminProfileId,
    String? criadoEm,
  })  : _id = id,
        _nomeFantasia = nomeFantasia,
        _razaoSocial = razaoSocial,
        _cnpj = cnpj,
        _endereco = endereco,
        _logoUrl = logoUrl,
        _adminProfileId = adminProfileId,
        _criadoEm = criadoEm;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nome_fantasia" field.
  String? _nomeFantasia;
  String get nomeFantasia => _nomeFantasia ?? '';
  set nomeFantasia(String? val) => _nomeFantasia = val;

  bool hasNomeFantasia() => _nomeFantasia != null;

  // "razao_social" field.
  String? _razaoSocial;
  String get razaoSocial => _razaoSocial ?? '';
  set razaoSocial(String? val) => _razaoSocial = val;

  bool hasRazaoSocial() => _razaoSocial != null;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;

  bool hasCnpj() => _cnpj != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  // "logo_url" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  set logoUrl(String? val) => _logoUrl = val;

  bool hasLogoUrl() => _logoUrl != null;

  // "admin_profile_id" field.
  String? _adminProfileId;
  String get adminProfileId => _adminProfileId ?? '';
  set adminProfileId(String? val) => _adminProfileId = val;

  bool hasAdminProfileId() => _adminProfileId != null;

  // "criado_em" field.
  String? _criadoEm;
  String get criadoEm => _criadoEm ?? '';
  set criadoEm(String? val) => _criadoEm = val;

  bool hasCriadoEm() => _criadoEm != null;

  static RestauranteStruct fromMap(Map<String, dynamic> data) =>
      RestauranteStruct(
        id: castToType<int>(data['id']),
        nomeFantasia: data['nome_fantasia'] as String?,
        razaoSocial: data['razao_social'] as String?,
        cnpj: data['cnpj'] as String?,
        endereco: data['endereco'] as String?,
        logoUrl: data['logo_url'] as String?,
        adminProfileId: data['admin_profile_id'] as String?,
        criadoEm: data['criado_em'] as String?,
      );

  static RestauranteStruct? maybeFromMap(dynamic data) => data is Map
      ? RestauranteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome_fantasia': _nomeFantasia,
        'razao_social': _razaoSocial,
        'cnpj': _cnpj,
        'endereco': _endereco,
        'logo_url': _logoUrl,
        'admin_profile_id': _adminProfileId,
        'criado_em': _criadoEm,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nome_fantasia': serializeParam(
          _nomeFantasia,
          ParamType.String,
        ),
        'razao_social': serializeParam(
          _razaoSocial,
          ParamType.String,
        ),
        'cnpj': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'logo_url': serializeParam(
          _logoUrl,
          ParamType.String,
        ),
        'admin_profile_id': serializeParam(
          _adminProfileId,
          ParamType.String,
        ),
        'criado_em': serializeParam(
          _criadoEm,
          ParamType.String,
        ),
      }.withoutNulls;

  static RestauranteStruct fromSerializableMap(Map<String, dynamic> data) =>
      RestauranteStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nomeFantasia: deserializeParam(
          data['nome_fantasia'],
          ParamType.String,
          false,
        ),
        razaoSocial: deserializeParam(
          data['razao_social'],
          ParamType.String,
          false,
        ),
        cnpj: deserializeParam(
          data['cnpj'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
        logoUrl: deserializeParam(
          data['logo_url'],
          ParamType.String,
          false,
        ),
        adminProfileId: deserializeParam(
          data['admin_profile_id'],
          ParamType.String,
          false,
        ),
        criadoEm: deserializeParam(
          data['criado_em'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RestauranteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RestauranteStruct &&
        id == other.id &&
        nomeFantasia == other.nomeFantasia &&
        razaoSocial == other.razaoSocial &&
        cnpj == other.cnpj &&
        endereco == other.endereco &&
        logoUrl == other.logoUrl &&
        adminProfileId == other.adminProfileId &&
        criadoEm == other.criadoEm;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nomeFantasia,
        razaoSocial,
        cnpj,
        endereco,
        logoUrl,
        adminProfileId,
        criadoEm
      ]);
}

RestauranteStruct createRestauranteStruct({
  int? id,
  String? nomeFantasia,
  String? razaoSocial,
  String? cnpj,
  String? endereco,
  String? logoUrl,
  String? adminProfileId,
  String? criadoEm,
}) =>
    RestauranteStruct(
      id: id,
      nomeFantasia: nomeFantasia,
      razaoSocial: razaoSocial,
      cnpj: cnpj,
      endereco: endereco,
      logoUrl: logoUrl,
      adminProfileId: adminProfileId,
      criadoEm: criadoEm,
    );
