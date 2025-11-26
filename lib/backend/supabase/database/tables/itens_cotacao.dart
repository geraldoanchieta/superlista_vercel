import '../database.dart';

class ItensCotacaoTable extends SupabaseTable<ItensCotacaoRow> {
  @override
  String get tableName => 'itens_cotacao';

  @override
  ItensCotacaoRow createRow(Map<String, dynamic> data) => ItensCotacaoRow(data);
}

class ItensCotacaoRow extends SupabaseDataRow {
  ItensCotacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItensCotacaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get cotacaoId => getField<int>('cotacao_id')!;
  set cotacaoId(int value) => setField<int>('cotacao_id', value);

  int get itemSolicitadoId => getField<int>('item_solicitado_id')!;
  set itemSolicitadoId(int value) => setField<int>('item_solicitado_id', value);

  double get precoOferta => getField<double>('preco_oferta')!;
  set precoOferta(double value) => setField<double>('preco_oferta', value);

  double? get moqValor => getField<double>('moq_valor');
  set moqValor(double? value) => setField<double>('moq_valor', value);

  String? get moqUnidade => getField<String>('moq_unidade');
  set moqUnidade(String? value) => setField<String>('moq_unidade', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  int? get catalogoProdutoId => getField<int>('catalogo_produto_id');
  set catalogoProdutoId(int? value) =>
      setField<int>('catalogo_produto_id', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  DateTime get atualizadoEm => getField<DateTime>('atualizado_em')!;
  set atualizadoEm(DateTime value) =>
      setField<DateTime>('atualizado_em', value);

  bool get alerta => getField<bool>('alerta')!;
  set alerta(bool value) => setField<bool>('alerta', value);

  String? get obsAlerta => getField<String>('obs_alerta');
  set obsAlerta(String? value) => setField<String>('obs_alerta', value);
}
