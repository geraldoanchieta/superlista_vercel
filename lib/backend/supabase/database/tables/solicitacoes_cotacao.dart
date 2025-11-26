import '../database.dart';

class SolicitacoesCotacaoTable extends SupabaseTable<SolicitacoesCotacaoRow> {
  @override
  String get tableName => 'solicitacoes_cotacao';

  @override
  SolicitacoesCotacaoRow createRow(Map<String, dynamic> data) =>
      SolicitacoesCotacaoRow(data);
}

class SolicitacoesCotacaoRow extends SupabaseDataRow {
  SolicitacoesCotacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SolicitacoesCotacaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get publicadoPorId => getField<String>('publicado_por_id')!;
  set publicadoPorId(String value) =>
      setField<String>('publicado_por_id', value);

  int? get checklistOrigemId => getField<int>('checklist_origem_id');
  set checklistOrigemId(int? value) =>
      setField<int>('checklist_origem_id', value);

  DateTime? get dataPublicacao => getField<DateTime>('data_publicacao');
  set dataPublicacao(DateTime? value) =>
      setField<DateTime>('data_publicacao', value);

  DateTime get dataEncerramento => getField<DateTime>('data_encerramento')!;
  set dataEncerramento(DateTime value) =>
      setField<DateTime>('data_encerramento', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  int get restauranteId => getField<int>('restaurante_id')!;
  set restauranteId(int value) => setField<int>('restaurante_id', value);
}
