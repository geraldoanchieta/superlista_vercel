import '../database.dart';

class ProfileTable extends SupabaseTable<ProfileRow> {
  @override
  String get tableName => 'profile';

  @override
  ProfileRow createRow(Map<String, dynamic> data) => ProfileRow(data);
}

class ProfileRow extends SupabaseDataRow {
  ProfileRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfileTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get nomeCompleto => getField<String>('nome_completo');
  set nomeCompleto(String? value) => setField<String>('nome_completo', value);

  String? get fotoUrl => getField<String>('foto_url');
  set fotoUrl(String? value) => setField<String>('foto_url', value);

  String get tipoUsuario => getField<String>('tipo_usuario')!;
  set tipoUsuario(String value) => setField<String>('tipo_usuario', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get chatId => getField<String>('chat_id');
  set chatId(String? value) => setField<String>('chat_id', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  String? get ddd => getField<String>('ddd');
  set ddd(String? value) => setField<String>('ddd', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);
}
