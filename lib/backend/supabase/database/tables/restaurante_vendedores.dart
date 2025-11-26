import '../database.dart';

class RestauranteVendedoresTable
    extends SupabaseTable<RestauranteVendedoresRow> {
  @override
  String get tableName => 'restaurante_vendedores';

  @override
  RestauranteVendedoresRow createRow(Map<String, dynamic> data) =>
      RestauranteVendedoresRow(data);
}

class RestauranteVendedoresRow extends SupabaseDataRow {
  RestauranteVendedoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RestauranteVendedoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get restauranteId => getField<int>('restaurante_id')!;
  set restauranteId(int value) => setField<int>('restaurante_id', value);

  int get vendedorId => getField<int>('vendedor_id')!;
  set vendedorId(int value) => setField<int>('vendedor_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);

  int? get prazoPagamentoPadrao => getField<int>('prazo_pagamento_padrao');
  set prazoPagamentoPadrao(int? value) =>
      setField<int>('prazo_pagamento_padrao', value);

  String? get modalidadePagamentoPadrao =>
      getField<String>('modalidade_pagamento_padrao');
  set modalidadePagamentoPadrao(String? value) =>
      setField<String>('modalidade_pagamento_padrao', value);

  List<int> get diasEntregaPadrao => getListField<int>('dias_entrega_padrao');
  set diasEntregaPadrao(List<int>? value) =>
      setListField<int>('dias_entrega_padrao', value);

  bool? get entregaTodosDias => getField<bool>('entrega_todos_dias');
  set entregaTodosDias(bool? value) =>
      setField<bool>('entrega_todos_dias', value);

  bool? get fazEntrega => getField<bool>('faz_entrega');
  set fazEntrega(bool? value) => setField<bool>('faz_entrega', value);

  String? get observacoesEntrega => getField<String>('observacoes_entrega');
  set observacoesEntrega(String? value) =>
      setField<String>('observacoes_entrega', value);

  bool? get freteGratuito => getField<bool>('frete_gratuito');
  set freteGratuito(bool? value) => setField<bool>('frete_gratuito', value);

  double? get compraMinima => getField<double>('compra_minima');
  set compraMinima(double? value) => setField<double>('compra_minima', value);
}
