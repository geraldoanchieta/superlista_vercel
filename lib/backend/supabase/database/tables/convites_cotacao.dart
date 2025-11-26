import '../database.dart';

class ConvitesCotacaoTable extends SupabaseTable<ConvitesCotacaoRow> {
  @override
  String get tableName => 'convites_cotacao';

  @override
  ConvitesCotacaoRow createRow(Map<String, dynamic> data) =>
      ConvitesCotacaoRow(data);
}

class ConvitesCotacaoRow extends SupabaseDataRow {
  ConvitesCotacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConvitesCotacaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get solicitacaoId => getField<int>('solicitacao_id')!;
  set solicitacaoId(int value) => setField<int>('solicitacao_id', value);

  int get vendedorId => getField<int>('vendedor_id')!;
  set vendedorId(int value) => setField<int>('vendedor_id', value);

  String get token => getField<String>('token')!;
  set token(String value) => setField<String>('token', value);

  DateTime get expiresAt => getField<DateTime>('expires_at')!;
  set expiresAt(DateTime value) => setField<DateTime>('expires_at', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
