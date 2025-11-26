// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CotacaoStruct extends BaseStruct {
  CotacaoStruct({
    int? id,
    int? solicitacaoId,
    int? vendedorId,
    String? dataEnvio,
    String? dataValidadeProposta,
    int? pedidoId,
  })  : _id = id,
        _solicitacaoId = solicitacaoId,
        _vendedorId = vendedorId,
        _dataEnvio = dataEnvio,
        _dataValidadeProposta = dataValidadeProposta,
        _pedidoId = pedidoId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "solicitacao_id" field.
  int? _solicitacaoId;
  int get solicitacaoId => _solicitacaoId ?? 0;
  set solicitacaoId(int? val) => _solicitacaoId = val;

  void incrementSolicitacaoId(int amount) =>
      solicitacaoId = solicitacaoId + amount;

  bool hasSolicitacaoId() => _solicitacaoId != null;

  // "vendedor_id" field.
  int? _vendedorId;
  int get vendedorId => _vendedorId ?? 0;
  set vendedorId(int? val) => _vendedorId = val;

  void incrementVendedorId(int amount) => vendedorId = vendedorId + amount;

  bool hasVendedorId() => _vendedorId != null;

  // "data_envio" field.
  String? _dataEnvio;
  String get dataEnvio => _dataEnvio ?? '';
  set dataEnvio(String? val) => _dataEnvio = val;

  bool hasDataEnvio() => _dataEnvio != null;

  // "data_validade_proposta" field.
  String? _dataValidadeProposta;
  String get dataValidadeProposta => _dataValidadeProposta ?? '';
  set dataValidadeProposta(String? val) => _dataValidadeProposta = val;

  bool hasDataValidadeProposta() => _dataValidadeProposta != null;

  // "pedido_id" field.
  int? _pedidoId;
  int get pedidoId => _pedidoId ?? 0;
  set pedidoId(int? val) => _pedidoId = val;

  void incrementPedidoId(int amount) => pedidoId = pedidoId + amount;

  bool hasPedidoId() => _pedidoId != null;

  static CotacaoStruct fromMap(Map<String, dynamic> data) => CotacaoStruct(
        id: castToType<int>(data['id']),
        solicitacaoId: castToType<int>(data['solicitacao_id']),
        vendedorId: castToType<int>(data['vendedor_id']),
        dataEnvio: data['data_envio'] as String?,
        dataValidadeProposta: data['data_validade_proposta'] as String?,
        pedidoId: castToType<int>(data['pedido_id']),
      );

  static CotacaoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CotacaoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'solicitacao_id': _solicitacaoId,
        'vendedor_id': _vendedorId,
        'data_envio': _dataEnvio,
        'data_validade_proposta': _dataValidadeProposta,
        'pedido_id': _pedidoId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'solicitacao_id': serializeParam(
          _solicitacaoId,
          ParamType.int,
        ),
        'vendedor_id': serializeParam(
          _vendedorId,
          ParamType.int,
        ),
        'data_envio': serializeParam(
          _dataEnvio,
          ParamType.String,
        ),
        'data_validade_proposta': serializeParam(
          _dataValidadeProposta,
          ParamType.String,
        ),
        'pedido_id': serializeParam(
          _pedidoId,
          ParamType.int,
        ),
      }.withoutNulls;

  static CotacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CotacaoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        solicitacaoId: deserializeParam(
          data['solicitacao_id'],
          ParamType.int,
          false,
        ),
        vendedorId: deserializeParam(
          data['vendedor_id'],
          ParamType.int,
          false,
        ),
        dataEnvio: deserializeParam(
          data['data_envio'],
          ParamType.String,
          false,
        ),
        dataValidadeProposta: deserializeParam(
          data['data_validade_proposta'],
          ParamType.String,
          false,
        ),
        pedidoId: deserializeParam(
          data['pedido_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CotacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CotacaoStruct &&
        id == other.id &&
        solicitacaoId == other.solicitacaoId &&
        vendedorId == other.vendedorId &&
        dataEnvio == other.dataEnvio &&
        dataValidadeProposta == other.dataValidadeProposta &&
        pedidoId == other.pedidoId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        solicitacaoId,
        vendedorId,
        dataEnvio,
        dataValidadeProposta,
        pedidoId
      ]);
}

CotacaoStruct createCotacaoStruct({
  int? id,
  int? solicitacaoId,
  int? vendedorId,
  String? dataEnvio,
  String? dataValidadeProposta,
  int? pedidoId,
}) =>
    CotacaoStruct(
      id: id,
      solicitacaoId: solicitacaoId,
      vendedorId: vendedorId,
      dataEnvio: dataEnvio,
      dataValidadeProposta: dataValidadeProposta,
      pedidoId: pedidoId,
    );
