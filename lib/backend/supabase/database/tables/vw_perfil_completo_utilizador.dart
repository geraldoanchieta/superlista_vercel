import '../database.dart';

class VwPerfilCompletoUtilizadorTable
    extends SupabaseTable<VwPerfilCompletoUtilizadorRow> {
  @override
  String get tableName => 'vw_perfil_completo_utilizador';

  @override
  VwPerfilCompletoUtilizadorRow createRow(Map<String, dynamic> data) =>
      VwPerfilCompletoUtilizadorRow(data);
}

class VwPerfilCompletoUtilizadorRow extends SupabaseDataRow {
  VwPerfilCompletoUtilizadorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwPerfilCompletoUtilizadorTable();

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  String? get nomeCompleto => getField<String>('nome_completo');
  set nomeCompleto(String? value) => setField<String>('nome_completo', value);

  String? get fotoUrl => getField<String>('foto_url');
  set fotoUrl(String? value) => setField<String>('foto_url', value);

  String? get tipoUsuario => getField<String>('tipo_usuario');
  set tipoUsuario(String? value) => setField<String>('tipo_usuario', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get ddd => getField<String>('ddd');
  set ddd(String? value) => setField<String>('ddd', value);

  String? get chatId => getField<String>('chat_id');
  set chatId(String? value) => setField<String>('chat_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  String? get nomeFantasia => getField<String>('nome_fantasia');
  set nomeFantasia(String? value) => setField<String>('nome_fantasia', value);

  String? get razaoSocial => getField<String>('razao_social');
  set razaoSocial(String? value) => setField<String>('razao_social', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  String? get telefoneWhatsappRestaurante =>
      getField<String>('telefone_whatsapp_restaurante');
  set telefoneWhatsappRestaurante(String? value) =>
      setField<String>('telefone_whatsapp_restaurante', value);
}
