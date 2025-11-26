import '../database.dart';

class VwItensCotaveisVendedorTable
    extends SupabaseTable<VwItensCotaveisVendedorRow> {
  @override
  String get tableName => 'vw_itens_cotaveis_vendedor';

  @override
  VwItensCotaveisVendedorRow createRow(Map<String, dynamic> data) =>
      VwItensCotaveisVendedorRow(data);
}

class VwItensCotaveisVendedorRow extends SupabaseDataRow {
  VwItensCotaveisVendedorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwItensCotaveisVendedorTable();

  int? get solicitacaoId => getField<int>('solicitacao_id');
  set solicitacaoId(int? value) => setField<int>('solicitacao_id', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  int? get itemSolicitadoId => getField<int>('item_solicitado_id');
  set itemSolicitadoId(int? value) =>
      setField<int>('item_solicitado_id', value);

  int? get produtoMasterId => getField<int>('produto_master_id');
  set produtoMasterId(int? value) => setField<int>('produto_master_id', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  int? get categoriaId => getField<int>('categoria_id');
  set categoriaId(int? value) => setField<int>('categoria_id', value);

  String? get nomeCategoria => getField<String>('nome_categoria');
  set nomeCategoria(String? value) => setField<String>('nome_categoria', value);

  int? get unidadeBaseId => getField<int>('unidade_base_id');
  set unidadeBaseId(int? value) => setField<int>('unidade_base_id', value);

  String? get unidadeBaseSimbolo => getField<String>('unidade_base_simbolo');
  set unidadeBaseSimbolo(String? value) =>
      setField<String>('unidade_base_simbolo', value);

  double? get quantidadeSolicitada => getField<double>('quantidade_solicitada');
  set quantidadeSolicitada(double? value) =>
      setField<double>('quantidade_solicitada', value);

  double? get quantidadeSolicitadaBase =>
      getField<double>('quantidade_solicitada_base');
  set quantidadeSolicitadaBase(double? value) =>
      setField<double>('quantidade_solicitada_base', value);

  String? get observacoesDaSolicitacao =>
      getField<String>('observacoes_da_solicitacao');
  set observacoesDaSolicitacao(String? value) =>
      setField<String>('observacoes_da_solicitacao', value);

  bool? get comprado => getField<bool>('comprado');
  set comprado(bool? value) => setField<bool>('comprado', value);

  int? get itemDaListaId => getField<int>('item_da_lista_id');
  set itemDaListaId(int? value) => setField<int>('item_da_lista_id', value);

  String? get nomePersonalizado => getField<String>('nome_personalizado');
  set nomePersonalizado(String? value) =>
      setField<String>('nome_personalizado', value);

  double? get estoqueMinimo => getField<double>('estoque_minimo');
  set estoqueMinimo(double? value) => setField<double>('estoque_minimo', value);

  String? get observacoesDoItemOriginal =>
      getField<String>('observacoes_do_item_original');
  set observacoesDoItemOriginal(String? value) =>
      setField<String>('observacoes_do_item_original', value);

  String? get descricaoEmbalagemCompleta =>
      getField<String>('descricao_embalagem_completa');
  set descricaoEmbalagemCompleta(String? value) =>
      setField<String>('descricao_embalagem_completa', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);
}
