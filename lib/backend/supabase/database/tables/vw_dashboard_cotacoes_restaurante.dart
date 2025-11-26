import '../database.dart';

class VwDashboardCotacoesRestauranteTable
    extends SupabaseTable<VwDashboardCotacoesRestauranteRow> {
  @override
  String get tableName => 'vw_dashboard_cotacoes_restaurante';

  @override
  VwDashboardCotacoesRestauranteRow createRow(Map<String, dynamic> data) =>
      VwDashboardCotacoesRestauranteRow(data);
}

class VwDashboardCotacoesRestauranteRow extends SupabaseDataRow {
  VwDashboardCotacoesRestauranteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwDashboardCotacoesRestauranteTable();

  int? get solicitacaoId => getField<int>('solicitacao_id');
  set solicitacaoId(int? value) => setField<int>('solicitacao_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dataPublicacao => getField<DateTime>('data_publicacao');
  set dataPublicacao(DateTime? value) =>
      setField<DateTime>('data_publicacao', value);

  DateTime? get dataEncerramento => getField<DateTime>('data_encerramento');
  set dataEncerramento(DateTime? value) =>
      setField<DateTime>('data_encerramento', value);

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

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  int? get totalItensSolicitados => getField<int>('total_itens_solicitados');
  set totalItensSolicitados(int? value) =>
      setField<int>('total_itens_solicitados', value);

  int? get totalVendedoresResponderam =>
      getField<int>('total_vendedores_responderam');
  set totalVendedoresResponderam(int? value) =>
      setField<int>('total_vendedores_responderam', value);
}
