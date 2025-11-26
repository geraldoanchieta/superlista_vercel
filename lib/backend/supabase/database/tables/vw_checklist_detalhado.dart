import '../database.dart';

class VwChecklistDetalhadoTable extends SupabaseTable<VwChecklistDetalhadoRow> {
  @override
  String get tableName => 'vw_checklist_detalhado';

  @override
  VwChecklistDetalhadoRow createRow(Map<String, dynamic> data) =>
      VwChecklistDetalhadoRow(data);
}

class VwChecklistDetalhadoRow extends SupabaseDataRow {
  VwChecklistDetalhadoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwChecklistDetalhadoTable();

  int? get itemDaListaId => getField<int>('item_da_lista_id');
  set itemDaListaId(int? value) => setField<int>('item_da_lista_id', value);

  int? get listaMestraId => getField<int>('lista_mestra_id');
  set listaMestraId(int? value) => setField<int>('lista_mestra_id', value);

  int? get itemChecklistId => getField<int>('item_checklist_id');
  set itemChecklistId(int? value) => setField<int>('item_checklist_id', value);

  int? get checklistId => getField<int>('checklist_id');
  set checklistId(int? value) => setField<int>('checklist_id', value);

  String? get nomePersonalizado => getField<String>('nome_personalizado');
  set nomePersonalizado(String? value) =>
      setField<String>('nome_personalizado', value);

  String? get nomeProdutoMaster => getField<String>('nome_produto_master');
  set nomeProdutoMaster(String? value) =>
      setField<String>('nome_produto_master', value);

  int? get categoriaId => getField<int>('categoria_id');
  set categoriaId(int? value) => setField<int>('categoria_id', value);

  double? get estoqueMinimo => getField<double>('estoque_minimo');
  set estoqueMinimo(double? value) => setField<double>('estoque_minimo', value);

  String? get observacoesItemLista =>
      getField<String>('observacoes_item_lista');
  set observacoesItemLista(String? value) =>
      setField<String>('observacoes_item_lista', value);

  String? get simboloUnidade => getField<String>('simbolo_unidade');
  set simboloUnidade(String? value) =>
      setField<String>('simbolo_unidade', value);

  int? get unidadeId => getField<int>('unidade_id');
  set unidadeId(int? value) => setField<int>('unidade_id', value);

  String? get embalagemPrimDesc => getField<String>('embalagem_prim_desc');
  set embalagemPrimDesc(String? value) =>
      setField<String>('embalagem_prim_desc', value);

  double? get embalagemPrimQtd => getField<double>('embalagem_prim_qtd');
  set embalagemPrimQtd(double? value) =>
      setField<double>('embalagem_prim_qtd', value);

  String? get embalagemSecDesc => getField<String>('embalagem_sec_desc');
  set embalagemSecDesc(String? value) =>
      setField<String>('embalagem_sec_desc', value);

  double? get embalagemSecQtd => getField<double>('embalagem_sec_qtd');
  set embalagemSecQtd(double? value) =>
      setField<double>('embalagem_sec_qtd', value);

  bool? get cotadoPorUnidadeBase => getField<bool>('cotado_por_unidade_base');
  set cotadoPorUnidadeBase(bool? value) =>
      setField<bool>('cotado_por_unidade_base', value);

  double? get estoqueApurado => getField<double>('estoque_apurado');
  set estoqueApurado(double? value) =>
      setField<double>('estoque_apurado', value);

  double? get quantidadeCompraDireta =>
      getField<double>('quantidade_compra_direta');
  set quantidadeCompraDireta(double? value) =>
      setField<double>('quantidade_compra_direta', value);

  double? get quantidadeCompraUnidadeBase =>
      getField<double>('quantidade_compra_unidade_base');
  set quantidadeCompraUnidadeBase(double? value) =>
      setField<double>('quantidade_compra_unidade_base', value);

  String? get descricaoEmbalagemCompleta =>
      getField<String>('descricao_embalagem_completa');
  set descricaoEmbalagemCompleta(String? value) =>
      setField<String>('descricao_embalagem_completa', value);

  String? get statusChecklist => getField<String>('status_checklist');
  set statusChecklist(String? value) =>
      setField<String>('status_checklist', value);
}
