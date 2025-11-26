// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatalogoComPrecoStruct extends BaseStruct {
  CatalogoComPrecoStruct({
    int? catalogoProdutoId,
    int? vendedorId,
    int? produtoMasterId,
    String? nomeEspecifico,
    String? marca,
    String? statusCatalogo,
    int? itemCotacaoId,
    double? precoOferta,
    String? observacoesDaOferta,
    int? cotacaoId,
    int? solicitacaoId,
    String? dataEnvio,
    DateTime? dataValidadeProposta,
    int? restauranteId,
    bool? cotadoPorUnidadeBase,
    String? unidadeBaseSimbolo,
    double? valorIndividual,
    double? valorUnidadeSecundaria,
    String? embalagemIndividual,
    String? embalagemSecundaria,
    double? valorPorUnidadeBase,
  })  : _catalogoProdutoId = catalogoProdutoId,
        _vendedorId = vendedorId,
        _produtoMasterId = produtoMasterId,
        _nomeEspecifico = nomeEspecifico,
        _marca = marca,
        _statusCatalogo = statusCatalogo,
        _itemCotacaoId = itemCotacaoId,
        _precoOferta = precoOferta,
        _observacoesDaOferta = observacoesDaOferta,
        _cotacaoId = cotacaoId,
        _solicitacaoId = solicitacaoId,
        _dataEnvio = dataEnvio,
        _dataValidadeProposta = dataValidadeProposta,
        _restauranteId = restauranteId,
        _cotadoPorUnidadeBase = cotadoPorUnidadeBase,
        _unidadeBaseSimbolo = unidadeBaseSimbolo,
        _valorIndividual = valorIndividual,
        _valorUnidadeSecundaria = valorUnidadeSecundaria,
        _embalagemIndividual = embalagemIndividual,
        _embalagemSecundaria = embalagemSecundaria,
        _valorPorUnidadeBase = valorPorUnidadeBase;

  // "catalogo_produto_id" field.
  int? _catalogoProdutoId;
  int get catalogoProdutoId => _catalogoProdutoId ?? 0;
  set catalogoProdutoId(int? val) => _catalogoProdutoId = val;

  void incrementCatalogoProdutoId(int amount) =>
      catalogoProdutoId = catalogoProdutoId + amount;

  bool hasCatalogoProdutoId() => _catalogoProdutoId != null;

  // "vendedor_id" field.
  int? _vendedorId;
  int get vendedorId => _vendedorId ?? 0;
  set vendedorId(int? val) => _vendedorId = val;

  void incrementVendedorId(int amount) => vendedorId = vendedorId + amount;

  bool hasVendedorId() => _vendedorId != null;

  // "produto_master_id" field.
  int? _produtoMasterId;
  int get produtoMasterId => _produtoMasterId ?? 0;
  set produtoMasterId(int? val) => _produtoMasterId = val;

  void incrementProdutoMasterId(int amount) =>
      produtoMasterId = produtoMasterId + amount;

  bool hasProdutoMasterId() => _produtoMasterId != null;

  // "nome_especifico" field.
  String? _nomeEspecifico;
  String get nomeEspecifico => _nomeEspecifico ?? '';
  set nomeEspecifico(String? val) => _nomeEspecifico = val;

  bool hasNomeEspecifico() => _nomeEspecifico != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  set marca(String? val) => _marca = val;

  bool hasMarca() => _marca != null;

  // "status_catalogo" field.
  String? _statusCatalogo;
  String get statusCatalogo => _statusCatalogo ?? '';
  set statusCatalogo(String? val) => _statusCatalogo = val;

  bool hasStatusCatalogo() => _statusCatalogo != null;

  // "item_cotacao_id" field.
  int? _itemCotacaoId;
  int get itemCotacaoId => _itemCotacaoId ?? 0;
  set itemCotacaoId(int? val) => _itemCotacaoId = val;

  void incrementItemCotacaoId(int amount) =>
      itemCotacaoId = itemCotacaoId + amount;

  bool hasItemCotacaoId() => _itemCotacaoId != null;

  // "preco_oferta" field.
  double? _precoOferta;
  double get precoOferta => _precoOferta ?? 0.0;
  set precoOferta(double? val) => _precoOferta = val;

  void incrementPrecoOferta(double amount) =>
      precoOferta = precoOferta + amount;

  bool hasPrecoOferta() => _precoOferta != null;

  // "observacoes_da_oferta" field.
  String? _observacoesDaOferta;
  String get observacoesDaOferta => _observacoesDaOferta ?? '';
  set observacoesDaOferta(String? val) => _observacoesDaOferta = val;

  bool hasObservacoesDaOferta() => _observacoesDaOferta != null;

  // "cotacao_id" field.
  int? _cotacaoId;
  int get cotacaoId => _cotacaoId ?? 0;
  set cotacaoId(int? val) => _cotacaoId = val;

  void incrementCotacaoId(int amount) => cotacaoId = cotacaoId + amount;

  bool hasCotacaoId() => _cotacaoId != null;

  // "solicitacao_id" field.
  int? _solicitacaoId;
  int get solicitacaoId => _solicitacaoId ?? 0;
  set solicitacaoId(int? val) => _solicitacaoId = val;

  void incrementSolicitacaoId(int amount) =>
      solicitacaoId = solicitacaoId + amount;

  bool hasSolicitacaoId() => _solicitacaoId != null;

  // "data_envio" field.
  String? _dataEnvio;
  String get dataEnvio => _dataEnvio ?? '';
  set dataEnvio(String? val) => _dataEnvio = val;

  bool hasDataEnvio() => _dataEnvio != null;

  // "data_validade_proposta" field.
  DateTime? _dataValidadeProposta;
  DateTime? get dataValidadeProposta => _dataValidadeProposta;
  set dataValidadeProposta(DateTime? val) => _dataValidadeProposta = val;

  bool hasDataValidadeProposta() => _dataValidadeProposta != null;

  // "restaurante_id" field.
  int? _restauranteId;
  int get restauranteId => _restauranteId ?? 0;
  set restauranteId(int? val) => _restauranteId = val;

  void incrementRestauranteId(int amount) =>
      restauranteId = restauranteId + amount;

  bool hasRestauranteId() => _restauranteId != null;

  // "cotado_por_unidade_base" field.
  bool? _cotadoPorUnidadeBase;
  bool get cotadoPorUnidadeBase => _cotadoPorUnidadeBase ?? false;
  set cotadoPorUnidadeBase(bool? val) => _cotadoPorUnidadeBase = val;

  bool hasCotadoPorUnidadeBase() => _cotadoPorUnidadeBase != null;

  // "unidade_base_simbolo" field.
  String? _unidadeBaseSimbolo;
  String get unidadeBaseSimbolo => _unidadeBaseSimbolo ?? '';
  set unidadeBaseSimbolo(String? val) => _unidadeBaseSimbolo = val;

  bool hasUnidadeBaseSimbolo() => _unidadeBaseSimbolo != null;

  // "valor_individual" field.
  double? _valorIndividual;
  double get valorIndividual => _valorIndividual ?? 0.0;
  set valorIndividual(double? val) => _valorIndividual = val;

  void incrementValorIndividual(double amount) =>
      valorIndividual = valorIndividual + amount;

  bool hasValorIndividual() => _valorIndividual != null;

  // "valor_unidade_secundaria" field.
  double? _valorUnidadeSecundaria;
  double get valorUnidadeSecundaria => _valorUnidadeSecundaria ?? 0.0;
  set valorUnidadeSecundaria(double? val) => _valorUnidadeSecundaria = val;

  void incrementValorUnidadeSecundaria(double amount) =>
      valorUnidadeSecundaria = valorUnidadeSecundaria + amount;

  bool hasValorUnidadeSecundaria() => _valorUnidadeSecundaria != null;

  // "embalagem_individual" field.
  String? _embalagemIndividual;
  String get embalagemIndividual => _embalagemIndividual ?? '';
  set embalagemIndividual(String? val) => _embalagemIndividual = val;

  bool hasEmbalagemIndividual() => _embalagemIndividual != null;

  // "embalagem_secundaria" field.
  String? _embalagemSecundaria;
  String get embalagemSecundaria => _embalagemSecundaria ?? '';
  set embalagemSecundaria(String? val) => _embalagemSecundaria = val;

  bool hasEmbalagemSecundaria() => _embalagemSecundaria != null;

  // "valor_por_unidade_base" field.
  double? _valorPorUnidadeBase;
  double get valorPorUnidadeBase => _valorPorUnidadeBase ?? 0.0;
  set valorPorUnidadeBase(double? val) => _valorPorUnidadeBase = val;

  void incrementValorPorUnidadeBase(double amount) =>
      valorPorUnidadeBase = valorPorUnidadeBase + amount;

  bool hasValorPorUnidadeBase() => _valorPorUnidadeBase != null;

  static CatalogoComPrecoStruct fromMap(Map<String, dynamic> data) =>
      CatalogoComPrecoStruct(
        catalogoProdutoId: castToType<int>(data['catalogo_produto_id']),
        vendedorId: castToType<int>(data['vendedor_id']),
        produtoMasterId: castToType<int>(data['produto_master_id']),
        nomeEspecifico: data['nome_especifico'] as String?,
        marca: data['marca'] as String?,
        statusCatalogo: data['status_catalogo'] as String?,
        itemCotacaoId: castToType<int>(data['item_cotacao_id']),
        precoOferta: castToType<double>(data['preco_oferta']),
        observacoesDaOferta: data['observacoes_da_oferta'] as String?,
        cotacaoId: castToType<int>(data['cotacao_id']),
        solicitacaoId: castToType<int>(data['solicitacao_id']),
        dataEnvio: data['data_envio'] as String?,
        dataValidadeProposta: data['data_validade_proposta'] as DateTime?,
        restauranteId: castToType<int>(data['restaurante_id']),
        cotadoPorUnidadeBase: data['cotado_por_unidade_base'] as bool?,
        unidadeBaseSimbolo: data['unidade_base_simbolo'] as String?,
        valorIndividual: castToType<double>(data['valor_individual']),
        valorUnidadeSecundaria:
            castToType<double>(data['valor_unidade_secundaria']),
        embalagemIndividual: data['embalagem_individual'] as String?,
        embalagemSecundaria: data['embalagem_secundaria'] as String?,
        valorPorUnidadeBase: castToType<double>(data['valor_por_unidade_base']),
      );

  static CatalogoComPrecoStruct? maybeFromMap(dynamic data) => data is Map
      ? CatalogoComPrecoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'catalogo_produto_id': _catalogoProdutoId,
        'vendedor_id': _vendedorId,
        'produto_master_id': _produtoMasterId,
        'nome_especifico': _nomeEspecifico,
        'marca': _marca,
        'status_catalogo': _statusCatalogo,
        'item_cotacao_id': _itemCotacaoId,
        'preco_oferta': _precoOferta,
        'observacoes_da_oferta': _observacoesDaOferta,
        'cotacao_id': _cotacaoId,
        'solicitacao_id': _solicitacaoId,
        'data_envio': _dataEnvio,
        'data_validade_proposta': _dataValidadeProposta,
        'restaurante_id': _restauranteId,
        'cotado_por_unidade_base': _cotadoPorUnidadeBase,
        'unidade_base_simbolo': _unidadeBaseSimbolo,
        'valor_individual': _valorIndividual,
        'valor_unidade_secundaria': _valorUnidadeSecundaria,
        'embalagem_individual': _embalagemIndividual,
        'embalagem_secundaria': _embalagemSecundaria,
        'valor_por_unidade_base': _valorPorUnidadeBase,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'catalogo_produto_id': serializeParam(
          _catalogoProdutoId,
          ParamType.int,
        ),
        'vendedor_id': serializeParam(
          _vendedorId,
          ParamType.int,
        ),
        'produto_master_id': serializeParam(
          _produtoMasterId,
          ParamType.int,
        ),
        'nome_especifico': serializeParam(
          _nomeEspecifico,
          ParamType.String,
        ),
        'marca': serializeParam(
          _marca,
          ParamType.String,
        ),
        'status_catalogo': serializeParam(
          _statusCatalogo,
          ParamType.String,
        ),
        'item_cotacao_id': serializeParam(
          _itemCotacaoId,
          ParamType.int,
        ),
        'preco_oferta': serializeParam(
          _precoOferta,
          ParamType.double,
        ),
        'observacoes_da_oferta': serializeParam(
          _observacoesDaOferta,
          ParamType.String,
        ),
        'cotacao_id': serializeParam(
          _cotacaoId,
          ParamType.int,
        ),
        'solicitacao_id': serializeParam(
          _solicitacaoId,
          ParamType.int,
        ),
        'data_envio': serializeParam(
          _dataEnvio,
          ParamType.String,
        ),
        'data_validade_proposta': serializeParam(
          _dataValidadeProposta,
          ParamType.DateTime,
        ),
        'restaurante_id': serializeParam(
          _restauranteId,
          ParamType.int,
        ),
        'cotado_por_unidade_base': serializeParam(
          _cotadoPorUnidadeBase,
          ParamType.bool,
        ),
        'unidade_base_simbolo': serializeParam(
          _unidadeBaseSimbolo,
          ParamType.String,
        ),
        'valor_individual': serializeParam(
          _valorIndividual,
          ParamType.double,
        ),
        'valor_unidade_secundaria': serializeParam(
          _valorUnidadeSecundaria,
          ParamType.double,
        ),
        'embalagem_individual': serializeParam(
          _embalagemIndividual,
          ParamType.String,
        ),
        'embalagem_secundaria': serializeParam(
          _embalagemSecundaria,
          ParamType.String,
        ),
        'valor_por_unidade_base': serializeParam(
          _valorPorUnidadeBase,
          ParamType.double,
        ),
      }.withoutNulls;

  static CatalogoComPrecoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CatalogoComPrecoStruct(
        catalogoProdutoId: deserializeParam(
          data['catalogo_produto_id'],
          ParamType.int,
          false,
        ),
        vendedorId: deserializeParam(
          data['vendedor_id'],
          ParamType.int,
          false,
        ),
        produtoMasterId: deserializeParam(
          data['produto_master_id'],
          ParamType.int,
          false,
        ),
        nomeEspecifico: deserializeParam(
          data['nome_especifico'],
          ParamType.String,
          false,
        ),
        marca: deserializeParam(
          data['marca'],
          ParamType.String,
          false,
        ),
        statusCatalogo: deserializeParam(
          data['status_catalogo'],
          ParamType.String,
          false,
        ),
        itemCotacaoId: deserializeParam(
          data['item_cotacao_id'],
          ParamType.int,
          false,
        ),
        precoOferta: deserializeParam(
          data['preco_oferta'],
          ParamType.double,
          false,
        ),
        observacoesDaOferta: deserializeParam(
          data['observacoes_da_oferta'],
          ParamType.String,
          false,
        ),
        cotacaoId: deserializeParam(
          data['cotacao_id'],
          ParamType.int,
          false,
        ),
        solicitacaoId: deserializeParam(
          data['solicitacao_id'],
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
          ParamType.DateTime,
          false,
        ),
        restauranteId: deserializeParam(
          data['restaurante_id'],
          ParamType.int,
          false,
        ),
        cotadoPorUnidadeBase: deserializeParam(
          data['cotado_por_unidade_base'],
          ParamType.bool,
          false,
        ),
        unidadeBaseSimbolo: deserializeParam(
          data['unidade_base_simbolo'],
          ParamType.String,
          false,
        ),
        valorIndividual: deserializeParam(
          data['valor_individual'],
          ParamType.double,
          false,
        ),
        valorUnidadeSecundaria: deserializeParam(
          data['valor_unidade_secundaria'],
          ParamType.double,
          false,
        ),
        embalagemIndividual: deserializeParam(
          data['embalagem_individual'],
          ParamType.String,
          false,
        ),
        embalagemSecundaria: deserializeParam(
          data['embalagem_secundaria'],
          ParamType.String,
          false,
        ),
        valorPorUnidadeBase: deserializeParam(
          data['valor_por_unidade_base'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CatalogoComPrecoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CatalogoComPrecoStruct &&
        catalogoProdutoId == other.catalogoProdutoId &&
        vendedorId == other.vendedorId &&
        produtoMasterId == other.produtoMasterId &&
        nomeEspecifico == other.nomeEspecifico &&
        marca == other.marca &&
        statusCatalogo == other.statusCatalogo &&
        itemCotacaoId == other.itemCotacaoId &&
        precoOferta == other.precoOferta &&
        observacoesDaOferta == other.observacoesDaOferta &&
        cotacaoId == other.cotacaoId &&
        solicitacaoId == other.solicitacaoId &&
        dataEnvio == other.dataEnvio &&
        dataValidadeProposta == other.dataValidadeProposta &&
        restauranteId == other.restauranteId &&
        cotadoPorUnidadeBase == other.cotadoPorUnidadeBase &&
        unidadeBaseSimbolo == other.unidadeBaseSimbolo &&
        valorIndividual == other.valorIndividual &&
        valorUnidadeSecundaria == other.valorUnidadeSecundaria &&
        embalagemIndividual == other.embalagemIndividual &&
        embalagemSecundaria == other.embalagemSecundaria &&
        valorPorUnidadeBase == other.valorPorUnidadeBase;
  }

  @override
  int get hashCode => const ListEquality().hash([
        catalogoProdutoId,
        vendedorId,
        produtoMasterId,
        nomeEspecifico,
        marca,
        statusCatalogo,
        itemCotacaoId,
        precoOferta,
        observacoesDaOferta,
        cotacaoId,
        solicitacaoId,
        dataEnvio,
        dataValidadeProposta,
        restauranteId,
        cotadoPorUnidadeBase,
        unidadeBaseSimbolo,
        valorIndividual,
        valorUnidadeSecundaria,
        embalagemIndividual,
        embalagemSecundaria,
        valorPorUnidadeBase
      ]);
}

CatalogoComPrecoStruct createCatalogoComPrecoStruct({
  int? catalogoProdutoId,
  int? vendedorId,
  int? produtoMasterId,
  String? nomeEspecifico,
  String? marca,
  String? statusCatalogo,
  int? itemCotacaoId,
  double? precoOferta,
  String? observacoesDaOferta,
  int? cotacaoId,
  int? solicitacaoId,
  String? dataEnvio,
  DateTime? dataValidadeProposta,
  int? restauranteId,
  bool? cotadoPorUnidadeBase,
  String? unidadeBaseSimbolo,
  double? valorIndividual,
  double? valorUnidadeSecundaria,
  String? embalagemIndividual,
  String? embalagemSecundaria,
  double? valorPorUnidadeBase,
}) =>
    CatalogoComPrecoStruct(
      catalogoProdutoId: catalogoProdutoId,
      vendedorId: vendedorId,
      produtoMasterId: produtoMasterId,
      nomeEspecifico: nomeEspecifico,
      marca: marca,
      statusCatalogo: statusCatalogo,
      itemCotacaoId: itemCotacaoId,
      precoOferta: precoOferta,
      observacoesDaOferta: observacoesDaOferta,
      cotacaoId: cotacaoId,
      solicitacaoId: solicitacaoId,
      dataEnvio: dataEnvio,
      dataValidadeProposta: dataValidadeProposta,
      restauranteId: restauranteId,
      cotadoPorUnidadeBase: cotadoPorUnidadeBase,
      unidadeBaseSimbolo: unidadeBaseSimbolo,
      valorIndividual: valorIndividual,
      valorUnidadeSecundaria: valorUnidadeSecundaria,
      embalagemIndividual: embalagemIndividual,
      embalagemSecundaria: embalagemSecundaria,
      valorPorUnidadeBase: valorPorUnidadeBase,
    );
