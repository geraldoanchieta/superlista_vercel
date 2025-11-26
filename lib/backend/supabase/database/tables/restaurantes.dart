import '../database.dart';

class RestaurantesTable extends SupabaseTable<RestaurantesRow> {
  @override
  String get tableName => 'restaurantes';

  @override
  RestaurantesRow createRow(Map<String, dynamic> data) => RestaurantesRow(data);
}

class RestaurantesRow extends SupabaseDataRow {
  RestaurantesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RestaurantesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nomeFantasia => getField<String>('nome_fantasia')!;
  set nomeFantasia(String value) => setField<String>('nome_fantasia', value);

  String? get razaoSocial => getField<String>('razao_social');
  set razaoSocial(String? value) => setField<String>('razao_social', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  String get adminProfileId => getField<String>('admin_profile_id')!;
  set adminProfileId(String value) =>
      setField<String>('admin_profile_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get telefoneWhatsapp => getField<String>('telefone_whatsapp');
  set telefoneWhatsapp(String? value) =>
      setField<String>('telefone_whatsapp', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);
}
