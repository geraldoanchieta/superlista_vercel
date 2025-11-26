// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoCotadoStruct extends BaseStruct {
  ProdutoCotadoStruct({
    int? itemSolicitacaoId,
    int? itemCotacaoId,
    int? cotacaoId,
  })  : _itemSolicitacaoId = itemSolicitacaoId,
        _itemCotacaoId = itemCotacaoId,
        _cotacaoId = cotacaoId;

  // "item_solicitacao_id" field.
  int? _itemSolicitacaoId;
  int get itemSolicitacaoId => _itemSolicitacaoId ?? 0;
  set itemSolicitacaoId(int? val) => _itemSolicitacaoId = val;

  void incrementItemSolicitacaoId(int amount) =>
      itemSolicitacaoId = itemSolicitacaoId + amount;

  bool hasItemSolicitacaoId() => _itemSolicitacaoId != null;

  // "item_cotacao_id" field.
  int? _itemCotacaoId;
  int get itemCotacaoId => _itemCotacaoId ?? 0;
  set itemCotacaoId(int? val) => _itemCotacaoId = val;

  void incrementItemCotacaoId(int amount) =>
      itemCotacaoId = itemCotacaoId + amount;

  bool hasItemCotacaoId() => _itemCotacaoId != null;

  // "cotacao_id" field.
  int? _cotacaoId;
  int get cotacaoId => _cotacaoId ?? 0;
  set cotacaoId(int? val) => _cotacaoId = val;

  void incrementCotacaoId(int amount) => cotacaoId = cotacaoId + amount;

  bool hasCotacaoId() => _cotacaoId != null;

  static ProdutoCotadoStruct fromMap(Map<String, dynamic> data) =>
      ProdutoCotadoStruct(
        itemSolicitacaoId: castToType<int>(data['item_solicitacao_id']),
        itemCotacaoId: castToType<int>(data['item_cotacao_id']),
        cotacaoId: castToType<int>(data['cotacao_id']),
      );

  static ProdutoCotadoStruct? maybeFromMap(dynamic data) => data is Map
      ? ProdutoCotadoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'item_solicitacao_id': _itemSolicitacaoId,
        'item_cotacao_id': _itemCotacaoId,
        'cotacao_id': _cotacaoId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'item_solicitacao_id': serializeParam(
          _itemSolicitacaoId,
          ParamType.int,
        ),
        'item_cotacao_id': serializeParam(
          _itemCotacaoId,
          ParamType.int,
        ),
        'cotacao_id': serializeParam(
          _cotacaoId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProdutoCotadoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutoCotadoStruct(
        itemSolicitacaoId: deserializeParam(
          data['item_solicitacao_id'],
          ParamType.int,
          false,
        ),
        itemCotacaoId: deserializeParam(
          data['item_cotacao_id'],
          ParamType.int,
          false,
        ),
        cotacaoId: deserializeParam(
          data['cotacao_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProdutoCotadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutoCotadoStruct &&
        itemSolicitacaoId == other.itemSolicitacaoId &&
        itemCotacaoId == other.itemCotacaoId &&
        cotacaoId == other.cotacaoId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([itemSolicitacaoId, itemCotacaoId, cotacaoId]);
}

ProdutoCotadoStruct createProdutoCotadoStruct({
  int? itemSolicitacaoId,
  int? itemCotacaoId,
  int? cotacaoId,
}) =>
    ProdutoCotadoStruct(
      itemSolicitacaoId: itemSolicitacaoId,
      itemCotacaoId: itemCotacaoId,
      cotacaoId: cotacaoId,
    );
