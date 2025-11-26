import '../database.dart';

class VendedorCatalogoProdutosTable
    extends SupabaseTable<VendedorCatalogoProdutosRow> {
  @override
  String get tableName => 'vendedor_catalogo_produtos';

  @override
  VendedorCatalogoProdutosRow createRow(Map<String, dynamic> data) =>
      VendedorCatalogoProdutosRow(data);
}

class VendedorCatalogoProdutosRow extends SupabaseDataRow {
  VendedorCatalogoProdutosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendedorCatalogoProdutosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get vendedorId => getField<int>('vendedor_id')!;
  set vendedorId(int value) => setField<int>('vendedor_id', value);

  int get produtoMasterId => getField<int>('produto_master_id')!;
  set produtoMasterId(int value) => setField<int>('produto_master_id', value);

  String get nomeEspecifico => getField<String>('nome_especifico')!;
  set nomeEspecifico(String value) =>
      setField<String>('nome_especifico', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get embalagemPrimDesc => getField<String>('embalagem_prim_desc');
  set embalagemPrimDesc(String? value) =>
      setField<String>('embalagem_prim_desc', value);

  double? get embalagemPrimQtd => getField<double>('embalagem_prim_qtd');
  set embalagemPrimQtd(double? value) =>
      setField<double>('embalagem_prim_qtd', value);

  int? get embalagemPrimUnidId => getField<int>('embalagem_prim_unid_id');
  set embalagemPrimUnidId(int? value) =>
      setField<int>('embalagem_prim_unid_id', value);

  bool get cotadoPorUnidadeBase => getField<bool>('cotado_por_unidade_base')!;
  set cotadoPorUnidadeBase(bool value) =>
      setField<bool>('cotado_por_unidade_base', value);

  String? get embalagemSecDesc => getField<String>('embalagem_sec_desc');
  set embalagemSecDesc(String? value) =>
      setField<String>('embalagem_sec_desc', value);

  double? get embalagemSecQtd => getField<double>('embalagem_sec_qtd');
  set embalagemSecQtd(double? value) =>
      setField<double>('embalagem_sec_qtd', value);

  double? get embalagemSecVolumeTotal =>
      getField<double>('embalagem_sec_volume_total');
  set embalagemSecVolumeTotal(double? value) =>
      setField<double>('embalagem_sec_volume_total', value);

  double? get volumeMinimoVenda => getField<double>('volume_minimo_venda');
  set volumeMinimoVenda(double? value) =>
      setField<double>('volume_minimo_venda', value);
}
