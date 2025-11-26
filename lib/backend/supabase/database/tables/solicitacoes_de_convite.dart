import '../database.dart';

class SolicitacoesDeConviteTable
    extends SupabaseTable<SolicitacoesDeConviteRow> {
  @override
  String get tableName => 'solicitacoes_de_convite';

  @override
  SolicitacoesDeConviteRow createRow(Map<String, dynamic> data) =>
      SolicitacoesDeConviteRow(data);
}

class SolicitacoesDeConviteRow extends SupabaseDataRow {
  SolicitacoesDeConviteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SolicitacoesDeConviteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get chatId => getField<String>('chat_id')!;
  set chatId(String value) => setField<String>('chat_id', value);

  DateTime? get dataSolicitacao => getField<DateTime>('data_solicitacao');
  set dataSolicitacao(DateTime? value) =>
      setField<DateTime>('data_solicitacao', value);
}
