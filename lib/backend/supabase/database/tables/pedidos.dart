import '../database.dart';

class PedidosTable extends SupabaseTable<PedidosRow> {
  @override
  String get tableName => 'pedidos';

  @override
  PedidosRow createRow(Map<String, dynamic> data) => PedidosRow(data);
}

class PedidosRow extends SupabaseDataRow {
  PedidosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PedidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get restauranteId => getField<int>('restaurante_id')!;
  set restauranteId(int value) => setField<int>('restaurante_id', value);

  int get vendedorId => getField<int>('vendedor_id')!;
  set vendedorId(int value) => setField<int>('vendedor_id', value);

  int? get solicitacaoOrigemId => getField<int>('solicitacao_origem_id');
  set solicitacaoOrigemId(int? value) =>
      setField<int>('solicitacao_origem_id', value);

  DateTime? get dataEntrega => getField<DateTime>('data_entrega');
  set dataEntrega(DateTime? value) => setField<DateTime>('data_entrega', value);

  String? get prazoPagamento => getField<String>('prazo_pagamento');
  set prazoPagamento(String? value) =>
      setField<String>('prazo_pagamento', value);

  String? get modalidadePagamento => getField<String>('modalidade_pagamento');
  set modalidadePagamento(String? value) =>
      setField<String>('modalidade_pagamento', value);

  String? get observacoesEntrega => getField<String>('observacoes_entrega');
  set observacoesEntrega(String? value) =>
      setField<String>('observacoes_entrega', value);

  double? get valorTotal => getField<double>('valor_total');
  set valorTotal(double? value) => setField<double>('valor_total', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get pdfUrl => getField<String>('pdf_url');
  set pdfUrl(String? value) => setField<String>('pdf_url', value);
}
