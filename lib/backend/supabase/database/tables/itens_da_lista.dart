import '../database.dart';

class ItensDaListaTable extends SupabaseTable<ItensDaListaRow> {
  @override
  String get tableName => 'itens_da_lista';

  @override
  ItensDaListaRow createRow(Map<String, dynamic> data) => ItensDaListaRow(data);
}

class ItensDaListaRow extends SupabaseDataRow {
  ItensDaListaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItensDaListaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get listaMestraId => getField<int>('lista_mestra_id')!;
  set listaMestraId(int value) => setField<int>('lista_mestra_id', value);

  int get produtoMasterId => getField<int>('produto_master_id')!;
  set produtoMasterId(int value) => setField<int>('produto_master_id', value);

  String? get nomePersonalizado => getField<String>('nome_personalizado');
  set nomePersonalizado(String? value) =>
      setField<String>('nome_personalizado', value);

  String? get embalagemPrimDesc => getField<String>('embalagem_prim_desc');
  set embalagemPrimDesc(String? value) =>
      setField<String>('embalagem_prim_desc', value);

  double? get embalagemPrimQtd => getField<double>('embalagem_prim_qtd');
  set embalagemPrimQtd(double? value) =>
      setField<double>('embalagem_prim_qtd', value);

  int? get embalagemPrimUnidId => getField<int>('embalagem_prim_unid_id');
  set embalagemPrimUnidId(int? value) =>
      setField<int>('embalagem_prim_unid_id', value);

  double? get estoqueMinimo => getField<double>('estoque_minimo');
  set estoqueMinimo(double? value) => setField<double>('estoque_minimo', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  bool get cotadoPorUnidadeBase => getField<bool>('cotado_por_unidade_base')!;
  set cotadoPorUnidadeBase(bool value) =>
      setField<bool>('cotado_por_unidade_base', value);

  String? get embalagemSecDesc => getField<String>('embalagem_sec_desc');
  set embalagemSecDesc(String? value) =>
      setField<String>('embalagem_sec_desc', value);

  double? get embalagemSecQtd => getField<double>('embalagem_sec_qtd');
  set embalagemSecQtd(double? value) =>
      setField<double>('embalagem_sec_qtd', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
