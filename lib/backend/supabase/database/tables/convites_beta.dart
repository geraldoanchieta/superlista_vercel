import '../database.dart';

class ConvitesBetaTable extends SupabaseTable<ConvitesBetaRow> {
  @override
  String get tableName => 'convites_beta';

  @override
  ConvitesBetaRow createRow(Map<String, dynamic> data) => ConvitesBetaRow(data);
}

class ConvitesBetaRow extends SupabaseDataRow {
  ConvitesBetaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConvitesBetaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get chatId => getField<String>('chat_id')!;
  set chatId(String value) => setField<String>('chat_id', value);

  String? get nomeDestinatario => getField<String>('nome_destinatario');
  set nomeDestinatario(String? value) =>
      setField<String>('nome_destinatario', value);

  bool get usado => getField<bool>('usado')!;
  set usado(bool value) => setField<bool>('usado', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
