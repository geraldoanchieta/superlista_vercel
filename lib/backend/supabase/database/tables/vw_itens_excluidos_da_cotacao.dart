import '../database.dart';

class VwItensExcluidosDaCotacaoTable
    extends SupabaseTable<VwItensExcluidosDaCotacaoRow> {
  @override
  String get tableName => 'vw_itens_excluidos_da_cotacao';

  @override
  VwItensExcluidosDaCotacaoRow createRow(Map<String, dynamic> data) =>
      VwItensExcluidosDaCotacaoRow(data);
}

class VwItensExcluidosDaCotacaoRow extends SupabaseDataRow {
  VwItensExcluidosDaCotacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwItensExcluidosDaCotacaoTable();

  int? get exclusaoId => getField<int>('exclusao_id');
  set exclusaoId(int? value) => setField<int>('exclusao_id', value);

  int? get itemSolicitadoId => getField<int>('item_solicitado_id');
  set itemSolicitadoId(int? value) =>
      setField<int>('item_solicitado_id', value);

  int? get solicitacaoId => getField<int>('solicitacao_id');
  set solicitacaoId(int? value) => setField<int>('solicitacao_id', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  int? get produtoMasterId => getField<int>('produto_master_id');
  set produtoMasterId(int? value) => setField<int>('produto_master_id', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  double? get quantidadeSolicitada => getField<double>('quantidade_solicitada');
  set quantidadeSolicitada(double? value) =>
      setField<double>('quantidade_solicitada', value);

  String? get unidadeBaseNome => getField<String>('unidade_base_nome');
  set unidadeBaseNome(String? value) =>
      setField<String>('unidade_base_nome', value);
}
