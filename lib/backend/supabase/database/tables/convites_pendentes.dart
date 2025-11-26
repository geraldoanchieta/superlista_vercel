import '../database.dart';

class ConvitesPendentesTable extends SupabaseTable<ConvitesPendentesRow> {
  @override
  String get tableName => 'convites_pendentes';

  @override
  ConvitesPendentesRow createRow(Map<String, dynamic> data) =>
      ConvitesPendentesRow(data);
}

class ConvitesPendentesRow extends SupabaseDataRow {
  ConvitesPendentesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConvitesPendentesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int get restauranteId => getField<int>('restaurante_id')!;
  set restauranteId(int value) => setField<int>('restaurante_id', value);

  int get vendedorId => getField<int>('vendedor_id')!;
  set vendedorId(int value) => setField<int>('vendedor_id', value);

  String get token => getField<String>('token')!;
  set token(String value) => setField<String>('token', value);

  DateTime get expiresAt => getField<DateTime>('expires_at')!;
  set expiresAt(DateTime value) => setField<DateTime>('expires_at', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
