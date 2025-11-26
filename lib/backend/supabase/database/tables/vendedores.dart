import '../database.dart';

class VendedoresTable extends SupabaseTable<VendedoresRow> {
  @override
  String get tableName => 'vendedores';

  @override
  VendedoresRow createRow(Map<String, dynamic> data) => VendedoresRow(data);
}

class VendedoresRow extends SupabaseDataRow {
  VendedoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendedoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get telefoneWhatsapp => getField<String>('telefone_whatsapp')!;
  set telefoneWhatsapp(String value) =>
      setField<String>('telefone_whatsapp', value);

  String? get fotoUrl => getField<String>('foto_url');
  set fotoUrl(String? value) => setField<String>('foto_url', value);

  String? get chatId => getField<String>('chat_id');
  set chatId(String? value) => setField<String>('chat_id', value);

  String? get authUserId => getField<String>('auth_user_id');
  set authUserId(String? value) => setField<String>('auth_user_id', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get nomeEmpresa => getField<String>('nome_empresa');
  set nomeEmpresa(String? value) => setField<String>('nome_empresa', value);

  String? get ddd => getField<String>('ddd');
  set ddd(String? value) => setField<String>('ddd', value);
}
