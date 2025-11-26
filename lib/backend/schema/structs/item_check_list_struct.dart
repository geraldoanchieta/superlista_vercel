// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemCheckListStruct extends BaseStruct {
  ItemCheckListStruct({
    int? itemDaListaId,
    int? listaMestraId,
    int? itemChecklistId,
    int? checklistId,
    String? nomePersonalizado,
    String? nomeProdutoMaster,
    int? categoriaId,
    double? estoqueMinimo,
    String? simboloUnidade,
    int? unidadeId,
    String? embalagemPrimDesc,
    double? embalagemPrimQtd,
    String? embalagemSecDesc,
    double? embalagemSecQtd,
    bool? cotadoPorUnidadeBase,
    double? estoqueApurado,
    double? quantidadeCompraDireta,
    String? descricaoEmbalagemCompleta,
    String? statusChecklist,
    double? quantidadeCompraUnidadeBase,
  })  : _itemDaListaId = itemDaListaId,
        _listaMestraId = listaMestraId,
        _itemChecklistId = itemChecklistId,
        _checklistId = checklistId,
        _nomePersonalizado = nomePersonalizado,
        _nomeProdutoMaster = nomeProdutoMaster,
        _categoriaId = categoriaId,
        _estoqueMinimo = estoqueMinimo,
        _simboloUnidade = simboloUnidade,
        _unidadeId = unidadeId,
        _embalagemPrimDesc = embalagemPrimDesc,
        _embalagemPrimQtd = embalagemPrimQtd,
        _embalagemSecDesc = embalagemSecDesc,
        _embalagemSecQtd = embalagemSecQtd,
        _cotadoPorUnidadeBase = cotadoPorUnidadeBase,
        _estoqueApurado = estoqueApurado,
        _quantidadeCompraDireta = quantidadeCompraDireta,
        _descricaoEmbalagemCompleta = descricaoEmbalagemCompleta,
        _statusChecklist = statusChecklist,
        _quantidadeCompraUnidadeBase = quantidadeCompraUnidadeBase;

  // "item_da_lista_id" field.
  int? _itemDaListaId;
  int get itemDaListaId => _itemDaListaId ?? 0;
  set itemDaListaId(int? val) => _itemDaListaId = val;

  void incrementItemDaListaId(int amount) =>
      itemDaListaId = itemDaListaId + amount;

  bool hasItemDaListaId() => _itemDaListaId != null;

  // "lista_mestra_id" field.
  int? _listaMestraId;
  int get listaMestraId => _listaMestraId ?? 0;
  set listaMestraId(int? val) => _listaMestraId = val;

  void incrementListaMestraId(int amount) =>
      listaMestraId = listaMestraId + amount;

  bool hasListaMestraId() => _listaMestraId != null;

  // "item_checklist_id" field.
  int? _itemChecklistId;
  int get itemChecklistId => _itemChecklistId ?? 0;
  set itemChecklistId(int? val) => _itemChecklistId = val;

  void incrementItemChecklistId(int amount) =>
      itemChecklistId = itemChecklistId + amount;

  bool hasItemChecklistId() => _itemChecklistId != null;

  // "checklist_id" field.
  int? _checklistId;
  int get checklistId => _checklistId ?? 0;
  set checklistId(int? val) => _checklistId = val;

  void incrementChecklistId(int amount) => checklistId = checklistId + amount;

  bool hasChecklistId() => _checklistId != null;

  // "nome_personalizado" field.
  String? _nomePersonalizado;
  String get nomePersonalizado => _nomePersonalizado ?? '';
  set nomePersonalizado(String? val) => _nomePersonalizado = val;

  bool hasNomePersonalizado() => _nomePersonalizado != null;

  // "nome_produto_master" field.
  String? _nomeProdutoMaster;
  String get nomeProdutoMaster => _nomeProdutoMaster ?? '';
  set nomeProdutoMaster(String? val) => _nomeProdutoMaster = val;

  bool hasNomeProdutoMaster() => _nomeProdutoMaster != null;

  // "categoria_id" field.
  int? _categoriaId;
  int get categoriaId => _categoriaId ?? 0;
  set categoriaId(int? val) => _categoriaId = val;

  void incrementCategoriaId(int amount) => categoriaId = categoriaId + amount;

  bool hasCategoriaId() => _categoriaId != null;

  // "estoque_minimo" field.
  double? _estoqueMinimo;
  double get estoqueMinimo => _estoqueMinimo ?? 0.0;
  set estoqueMinimo(double? val) => _estoqueMinimo = val;

  void incrementEstoqueMinimo(double amount) =>
      estoqueMinimo = estoqueMinimo + amount;

  bool hasEstoqueMinimo() => _estoqueMinimo != null;

  // "simbolo_unidade" field.
  String? _simboloUnidade;
  String get simboloUnidade => _simboloUnidade ?? '';
  set simboloUnidade(String? val) => _simboloUnidade = val;

  bool hasSimboloUnidade() => _simboloUnidade != null;

  // "unidade_id" field.
  int? _unidadeId;
  int get unidadeId => _unidadeId ?? 0;
  set unidadeId(int? val) => _unidadeId = val;

  void incrementUnidadeId(int amount) => unidadeId = unidadeId + amount;

  bool hasUnidadeId() => _unidadeId != null;

  // "embalagem_prim_desc" field.
  String? _embalagemPrimDesc;
  String get embalagemPrimDesc => _embalagemPrimDesc ?? '';
  set embalagemPrimDesc(String? val) => _embalagemPrimDesc = val;

  bool hasEmbalagemPrimDesc() => _embalagemPrimDesc != null;

  // "embalagem_prim_qtd" field.
  double? _embalagemPrimQtd;
  double get embalagemPrimQtd => _embalagemPrimQtd ?? 0.0;
  set embalagemPrimQtd(double? val) => _embalagemPrimQtd = val;

  void incrementEmbalagemPrimQtd(double amount) =>
      embalagemPrimQtd = embalagemPrimQtd + amount;

  bool hasEmbalagemPrimQtd() => _embalagemPrimQtd != null;

  // "embalagem_sec_desc" field.
  String? _embalagemSecDesc;
  String get embalagemSecDesc => _embalagemSecDesc ?? '';
  set embalagemSecDesc(String? val) => _embalagemSecDesc = val;

  bool hasEmbalagemSecDesc() => _embalagemSecDesc != null;

  // "embalagem_sec_qtd" field.
  double? _embalagemSecQtd;
  double get embalagemSecQtd => _embalagemSecQtd ?? 0.0;
  set embalagemSecQtd(double? val) => _embalagemSecQtd = val;

  void incrementEmbalagemSecQtd(double amount) =>
      embalagemSecQtd = embalagemSecQtd + amount;

  bool hasEmbalagemSecQtd() => _embalagemSecQtd != null;

  // "cotado_por_unidade_base" field.
  bool? _cotadoPorUnidadeBase;
  bool get cotadoPorUnidadeBase => _cotadoPorUnidadeBase ?? false;
  set cotadoPorUnidadeBase(bool? val) => _cotadoPorUnidadeBase = val;

  bool hasCotadoPorUnidadeBase() => _cotadoPorUnidadeBase != null;

  // "estoque_apurado" field.
  double? _estoqueApurado;
  double get estoqueApurado => _estoqueApurado ?? 0.0;
  set estoqueApurado(double? val) => _estoqueApurado = val;

  void incrementEstoqueApurado(double amount) =>
      estoqueApurado = estoqueApurado + amount;

  bool hasEstoqueApurado() => _estoqueApurado != null;

  // "quantidade_compra_direta" field.
  double? _quantidadeCompraDireta;
  double get quantidadeCompraDireta => _quantidadeCompraDireta ?? 0.0;
  set quantidadeCompraDireta(double? val) => _quantidadeCompraDireta = val;

  void incrementQuantidadeCompraDireta(double amount) =>
      quantidadeCompraDireta = quantidadeCompraDireta + amount;

  bool hasQuantidadeCompraDireta() => _quantidadeCompraDireta != null;

  // "descricao_embalagem_completa" field.
  String? _descricaoEmbalagemCompleta;
  String get descricaoEmbalagemCompleta => _descricaoEmbalagemCompleta ?? '';
  set descricaoEmbalagemCompleta(String? val) =>
      _descricaoEmbalagemCompleta = val;

  bool hasDescricaoEmbalagemCompleta() => _descricaoEmbalagemCompleta != null;

  // "status_checklist" field.
  String? _statusChecklist;
  String get statusChecklist => _statusChecklist ?? '';
  set statusChecklist(String? val) => _statusChecklist = val;

  bool hasStatusChecklist() => _statusChecklist != null;

  // "quantidade_compra_unidade_base" field.
  double? _quantidadeCompraUnidadeBase;
  double get quantidadeCompraUnidadeBase => _quantidadeCompraUnidadeBase ?? 0.0;
  set quantidadeCompraUnidadeBase(double? val) =>
      _quantidadeCompraUnidadeBase = val;

  void incrementQuantidadeCompraUnidadeBase(double amount) =>
      quantidadeCompraUnidadeBase = quantidadeCompraUnidadeBase + amount;

  bool hasQuantidadeCompraUnidadeBase() => _quantidadeCompraUnidadeBase != null;

  static ItemCheckListStruct fromMap(Map<String, dynamic> data) =>
      ItemCheckListStruct(
        itemDaListaId: castToType<int>(data['item_da_lista_id']),
        listaMestraId: castToType<int>(data['lista_mestra_id']),
        itemChecklistId: castToType<int>(data['item_checklist_id']),
        checklistId: castToType<int>(data['checklist_id']),
        nomePersonalizado: data['nome_personalizado'] as String?,
        nomeProdutoMaster: data['nome_produto_master'] as String?,
        categoriaId: castToType<int>(data['categoria_id']),
        estoqueMinimo: castToType<double>(data['estoque_minimo']),
        simboloUnidade: data['simbolo_unidade'] as String?,
        unidadeId: castToType<int>(data['unidade_id']),
        embalagemPrimDesc: data['embalagem_prim_desc'] as String?,
        embalagemPrimQtd: castToType<double>(data['embalagem_prim_qtd']),
        embalagemSecDesc: data['embalagem_sec_desc'] as String?,
        embalagemSecQtd: castToType<double>(data['embalagem_sec_qtd']),
        cotadoPorUnidadeBase: data['cotado_por_unidade_base'] as bool?,
        estoqueApurado: castToType<double>(data['estoque_apurado']),
        quantidadeCompraDireta:
            castToType<double>(data['quantidade_compra_direta']),
        descricaoEmbalagemCompleta:
            data['descricao_embalagem_completa'] as String?,
        statusChecklist: data['status_checklist'] as String?,
        quantidadeCompraUnidadeBase:
            castToType<double>(data['quantidade_compra_unidade_base']),
      );

  static ItemCheckListStruct? maybeFromMap(dynamic data) => data is Map
      ? ItemCheckListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'item_da_lista_id': _itemDaListaId,
        'lista_mestra_id': _listaMestraId,
        'item_checklist_id': _itemChecklistId,
        'checklist_id': _checklistId,
        'nome_personalizado': _nomePersonalizado,
        'nome_produto_master': _nomeProdutoMaster,
        'categoria_id': _categoriaId,
        'estoque_minimo': _estoqueMinimo,
        'simbolo_unidade': _simboloUnidade,
        'unidade_id': _unidadeId,
        'embalagem_prim_desc': _embalagemPrimDesc,
        'embalagem_prim_qtd': _embalagemPrimQtd,
        'embalagem_sec_desc': _embalagemSecDesc,
        'embalagem_sec_qtd': _embalagemSecQtd,
        'cotado_por_unidade_base': _cotadoPorUnidadeBase,
        'estoque_apurado': _estoqueApurado,
        'quantidade_compra_direta': _quantidadeCompraDireta,
        'descricao_embalagem_completa': _descricaoEmbalagemCompleta,
        'status_checklist': _statusChecklist,
        'quantidade_compra_unidade_base': _quantidadeCompraUnidadeBase,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'item_da_lista_id': serializeParam(
          _itemDaListaId,
          ParamType.int,
        ),
        'lista_mestra_id': serializeParam(
          _listaMestraId,
          ParamType.int,
        ),
        'item_checklist_id': serializeParam(
          _itemChecklistId,
          ParamType.int,
        ),
        'checklist_id': serializeParam(
          _checklistId,
          ParamType.int,
        ),
        'nome_personalizado': serializeParam(
          _nomePersonalizado,
          ParamType.String,
        ),
        'nome_produto_master': serializeParam(
          _nomeProdutoMaster,
          ParamType.String,
        ),
        'categoria_id': serializeParam(
          _categoriaId,
          ParamType.int,
        ),
        'estoque_minimo': serializeParam(
          _estoqueMinimo,
          ParamType.double,
        ),
        'simbolo_unidade': serializeParam(
          _simboloUnidade,
          ParamType.String,
        ),
        'unidade_id': serializeParam(
          _unidadeId,
          ParamType.int,
        ),
        'embalagem_prim_desc': serializeParam(
          _embalagemPrimDesc,
          ParamType.String,
        ),
        'embalagem_prim_qtd': serializeParam(
          _embalagemPrimQtd,
          ParamType.double,
        ),
        'embalagem_sec_desc': serializeParam(
          _embalagemSecDesc,
          ParamType.String,
        ),
        'embalagem_sec_qtd': serializeParam(
          _embalagemSecQtd,
          ParamType.double,
        ),
        'cotado_por_unidade_base': serializeParam(
          _cotadoPorUnidadeBase,
          ParamType.bool,
        ),
        'estoque_apurado': serializeParam(
          _estoqueApurado,
          ParamType.double,
        ),
        'quantidade_compra_direta': serializeParam(
          _quantidadeCompraDireta,
          ParamType.double,
        ),
        'descricao_embalagem_completa': serializeParam(
          _descricaoEmbalagemCompleta,
          ParamType.String,
        ),
        'status_checklist': serializeParam(
          _statusChecklist,
          ParamType.String,
        ),
        'quantidade_compra_unidade_base': serializeParam(
          _quantidadeCompraUnidadeBase,
          ParamType.double,
        ),
      }.withoutNulls;

  static ItemCheckListStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemCheckListStruct(
        itemDaListaId: deserializeParam(
          data['item_da_lista_id'],
          ParamType.int,
          false,
        ),
        listaMestraId: deserializeParam(
          data['lista_mestra_id'],
          ParamType.int,
          false,
        ),
        itemChecklistId: deserializeParam(
          data['item_checklist_id'],
          ParamType.int,
          false,
        ),
        checklistId: deserializeParam(
          data['checklist_id'],
          ParamType.int,
          false,
        ),
        nomePersonalizado: deserializeParam(
          data['nome_personalizado'],
          ParamType.String,
          false,
        ),
        nomeProdutoMaster: deserializeParam(
          data['nome_produto_master'],
          ParamType.String,
          false,
        ),
        categoriaId: deserializeParam(
          data['categoria_id'],
          ParamType.int,
          false,
        ),
        estoqueMinimo: deserializeParam(
          data['estoque_minimo'],
          ParamType.double,
          false,
        ),
        simboloUnidade: deserializeParam(
          data['simbolo_unidade'],
          ParamType.String,
          false,
        ),
        unidadeId: deserializeParam(
          data['unidade_id'],
          ParamType.int,
          false,
        ),
        embalagemPrimDesc: deserializeParam(
          data['embalagem_prim_desc'],
          ParamType.String,
          false,
        ),
        embalagemPrimQtd: deserializeParam(
          data['embalagem_prim_qtd'],
          ParamType.double,
          false,
        ),
        embalagemSecDesc: deserializeParam(
          data['embalagem_sec_desc'],
          ParamType.String,
          false,
        ),
        embalagemSecQtd: deserializeParam(
          data['embalagem_sec_qtd'],
          ParamType.double,
          false,
        ),
        cotadoPorUnidadeBase: deserializeParam(
          data['cotado_por_unidade_base'],
          ParamType.bool,
          false,
        ),
        estoqueApurado: deserializeParam(
          data['estoque_apurado'],
          ParamType.double,
          false,
        ),
        quantidadeCompraDireta: deserializeParam(
          data['quantidade_compra_direta'],
          ParamType.double,
          false,
        ),
        descricaoEmbalagemCompleta: deserializeParam(
          data['descricao_embalagem_completa'],
          ParamType.String,
          false,
        ),
        statusChecklist: deserializeParam(
          data['status_checklist'],
          ParamType.String,
          false,
        ),
        quantidadeCompraUnidadeBase: deserializeParam(
          data['quantidade_compra_unidade_base'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ItemCheckListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemCheckListStruct &&
        itemDaListaId == other.itemDaListaId &&
        listaMestraId == other.listaMestraId &&
        itemChecklistId == other.itemChecklistId &&
        checklistId == other.checklistId &&
        nomePersonalizado == other.nomePersonalizado &&
        nomeProdutoMaster == other.nomeProdutoMaster &&
        categoriaId == other.categoriaId &&
        estoqueMinimo == other.estoqueMinimo &&
        simboloUnidade == other.simboloUnidade &&
        unidadeId == other.unidadeId &&
        embalagemPrimDesc == other.embalagemPrimDesc &&
        embalagemPrimQtd == other.embalagemPrimQtd &&
        embalagemSecDesc == other.embalagemSecDesc &&
        embalagemSecQtd == other.embalagemSecQtd &&
        cotadoPorUnidadeBase == other.cotadoPorUnidadeBase &&
        estoqueApurado == other.estoqueApurado &&
        quantidadeCompraDireta == other.quantidadeCompraDireta &&
        descricaoEmbalagemCompleta == other.descricaoEmbalagemCompleta &&
        statusChecklist == other.statusChecklist &&
        quantidadeCompraUnidadeBase == other.quantidadeCompraUnidadeBase;
  }

  @override
  int get hashCode => const ListEquality().hash([
        itemDaListaId,
        listaMestraId,
        itemChecklistId,
        checklistId,
        nomePersonalizado,
        nomeProdutoMaster,
        categoriaId,
        estoqueMinimo,
        simboloUnidade,
        unidadeId,
        embalagemPrimDesc,
        embalagemPrimQtd,
        embalagemSecDesc,
        embalagemSecQtd,
        cotadoPorUnidadeBase,
        estoqueApurado,
        quantidadeCompraDireta,
        descricaoEmbalagemCompleta,
        statusChecklist,
        quantidadeCompraUnidadeBase
      ]);
}

ItemCheckListStruct createItemCheckListStruct({
  int? itemDaListaId,
  int? listaMestraId,
  int? itemChecklistId,
  int? checklistId,
  String? nomePersonalizado,
  String? nomeProdutoMaster,
  int? categoriaId,
  double? estoqueMinimo,
  String? simboloUnidade,
  int? unidadeId,
  String? embalagemPrimDesc,
  double? embalagemPrimQtd,
  String? embalagemSecDesc,
  double? embalagemSecQtd,
  bool? cotadoPorUnidadeBase,
  double? estoqueApurado,
  double? quantidadeCompraDireta,
  String? descricaoEmbalagemCompleta,
  String? statusChecklist,
  double? quantidadeCompraUnidadeBase,
}) =>
    ItemCheckListStruct(
      itemDaListaId: itemDaListaId,
      listaMestraId: listaMestraId,
      itemChecklistId: itemChecklistId,
      checklistId: checklistId,
      nomePersonalizado: nomePersonalizado,
      nomeProdutoMaster: nomeProdutoMaster,
      categoriaId: categoriaId,
      estoqueMinimo: estoqueMinimo,
      simboloUnidade: simboloUnidade,
      unidadeId: unidadeId,
      embalagemPrimDesc: embalagemPrimDesc,
      embalagemPrimQtd: embalagemPrimQtd,
      embalagemSecDesc: embalagemSecDesc,
      embalagemSecQtd: embalagemSecQtd,
      cotadoPorUnidadeBase: cotadoPorUnidadeBase,
      estoqueApurado: estoqueApurado,
      quantidadeCompraDireta: quantidadeCompraDireta,
      descricaoEmbalagemCompleta: descricaoEmbalagemCompleta,
      statusChecklist: statusChecklist,
      quantidadeCompraUnidadeBase: quantidadeCompraUnidadeBase,
    );
