import '../database.dart';

class VwCatalogoPessoalVendedorTable
    extends SupabaseTable<VwCatalogoPessoalVendedorRow> {
  @override
  String get tableName => 'vw_catalogo_pessoal_vendedor';

  @override
  VwCatalogoPessoalVendedorRow createRow(Map<String, dynamic> data) =>
      VwCatalogoPessoalVendedorRow(data);
}

class VwCatalogoPessoalVendedorRow extends SupabaseDataRow {
  VwCatalogoPessoalVendedorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwCatalogoPessoalVendedorTable();

  int? get catalogoProdutoId => getField<int>('catalogo_produto_id');
  set catalogoProdutoId(int? value) =>
      setField<int>('catalogo_produto_id', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  int? get produtoMasterId => getField<int>('produto_master_id');
  set produtoMasterId(int? value) => setField<int>('produto_master_id', value);

  String? get fotoVendedorUrl => getField<String>('foto_vendedor_url');
  set fotoVendedorUrl(String? value) =>
      setField<String>('foto_vendedor_url', value);

  String? get nomeEspecifico => getField<String>('nome_especifico');
  set nomeEspecifico(String? value) =>
      setField<String>('nome_especifico', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  String? get statusCatalogo => getField<String>('status_catalogo');
  set statusCatalogo(String? value) =>
      setField<String>('status_catalogo', value);

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
}
