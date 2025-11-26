import '../database.dart';

class VwCatalogoUltimoPrecoTable
    extends SupabaseTable<VwCatalogoUltimoPrecoRow> {
  @override
  String get tableName => 'vw_catalogo_ultimo_preco';

  @override
  VwCatalogoUltimoPrecoRow createRow(Map<String, dynamic> data) =>
      VwCatalogoUltimoPrecoRow(data);
}

class VwCatalogoUltimoPrecoRow extends SupabaseDataRow {
  VwCatalogoUltimoPrecoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwCatalogoUltimoPrecoTable();

  int? get catalogoProdutoId => getField<int>('catalogo_produto_id');
  set catalogoProdutoId(int? value) =>
      setField<int>('catalogo_produto_id', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  String? get fotoVendedorUrl => getField<String>('foto_vendedor_url');
  set fotoVendedorUrl(String? value) =>
      setField<String>('foto_vendedor_url', value);

  int? get produtoMasterId => getField<int>('produto_master_id');
  set produtoMasterId(int? value) => setField<int>('produto_master_id', value);

  String? get nomeEspecifico => getField<String>('nome_especifico');
  set nomeEspecifico(String? value) =>
      setField<String>('nome_especifico', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  String? get statusCatalogo => getField<String>('status_catalogo');
  set statusCatalogo(String? value) =>
      setField<String>('status_catalogo', value);

  int? get itemCotacaoId => getField<int>('item_cotacao_id');
  set itemCotacaoId(int? value) => setField<int>('item_cotacao_id', value);

  int? get itemSolicitadoId => getField<int>('item_solicitado_id');
  set itemSolicitadoId(int? value) =>
      setField<int>('item_solicitado_id', value);

  double? get precoOferta => getField<double>('preco_oferta');
  set precoOferta(double? value) => setField<double>('preco_oferta', value);

  String? get observacoesDaOferta => getField<String>('observacoes_da_oferta');
  set observacoesDaOferta(String? value) =>
      setField<String>('observacoes_da_oferta', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);

  int? get cotacaoId => getField<int>('cotacao_id');
  set cotacaoId(int? value) => setField<int>('cotacao_id', value);

  int? get solicitacaoId => getField<int>('solicitacao_id');
  set solicitacaoId(int? value) => setField<int>('solicitacao_id', value);

  DateTime? get dataEnvio => getField<DateTime>('data_envio');
  set dataEnvio(DateTime? value) => setField<DateTime>('data_envio', value);

  DateTime? get dataValidadeProposta =>
      getField<DateTime>('data_validade_proposta');
  set dataValidadeProposta(DateTime? value) =>
      setField<DateTime>('data_validade_proposta', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  int? get itemDaListaId => getField<int>('item_da_lista_id');
  set itemDaListaId(int? value) => setField<int>('item_da_lista_id', value);

  bool? get cotadoPorUnidadeBase => getField<bool>('cotado_por_unidade_base');
  set cotadoPorUnidadeBase(bool? value) =>
      setField<bool>('cotado_por_unidade_base', value);

  String? get unidadeBaseSimbolo => getField<String>('unidade_base_simbolo');
  set unidadeBaseSimbolo(String? value) =>
      setField<String>('unidade_base_simbolo', value);

  double? get volumeMinimoVendaBase =>
      getField<double>('volume_minimo_venda_base');
  set volumeMinimoVendaBase(double? value) =>
      setField<double>('volume_minimo_venda_base', value);

  double? get valorIndividual => getField<double>('valor_individual');
  set valorIndividual(double? value) =>
      setField<double>('valor_individual', value);

  double? get valorUnidadeSecundaria =>
      getField<double>('valor_unidade_secundaria');
  set valorUnidadeSecundaria(double? value) =>
      setField<double>('valor_unidade_secundaria', value);

  String? get embalagemIndividual => getField<String>('embalagem_individual');
  set embalagemIndividual(String? value) =>
      setField<String>('embalagem_individual', value);

  String? get embalagemSecundaria => getField<String>('embalagem_secundaria');
  set embalagemSecundaria(String? value) =>
      setField<String>('embalagem_secundaria', value);

  double? get embalagemSecundariaQuantidade =>
      getField<double>('embalagem_secundaria_quantidade');
  set embalagemSecundariaQuantidade(double? value) =>
      setField<double>('embalagem_secundaria_quantidade', value);

  double? get valorPorUnidadeBase => getField<double>('valor_por_unidade_base');
  set valorPorUnidadeBase(double? value) =>
      setField<double>('valor_por_unidade_base', value);

  int? get rn => getField<int>('rn');
  set rn(int? value) => setField<int>('rn', value);
}
