import '../database.dart';

class CotacoesTable extends SupabaseTable<CotacoesRow> {
  @override
  String get tableName => 'cotacoes';

  @override
  CotacoesRow createRow(Map<String, dynamic> data) => CotacoesRow(data);
}

class CotacoesRow extends SupabaseDataRow {
  CotacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CotacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get solicitacaoId => getField<int>('solicitacao_id')!;
  set solicitacaoId(int value) => setField<int>('solicitacao_id', value);

  int get vendedorId => getField<int>('vendedor_id')!;
  set vendedorId(int value) => setField<int>('vendedor_id', value);

  DateTime? get dataEnvio => getField<DateTime>('data_envio');
  set dataEnvio(DateTime? value) => setField<DateTime>('data_envio', value);

  DateTime get dataValidadeProposta =>
      getField<DateTime>('data_validade_proposta')!;
  set dataValidadeProposta(DateTime value) =>
      setField<DateTime>('data_validade_proposta', value);

  int? get pedidoId => getField<int>('pedido_id');
  set pedidoId(int? value) => setField<int>('pedido_id', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  bool get encerrada => getField<bool>('encerrada')!;
  set encerrada(bool value) => setField<bool>('encerrada', value);
}
