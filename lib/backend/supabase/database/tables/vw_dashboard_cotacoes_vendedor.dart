import '../database.dart';

class VwDashboardCotacoesVendedorTable
    extends SupabaseTable<VwDashboardCotacoesVendedorRow> {
  @override
  String get tableName => 'vw_dashboard_cotacoes_vendedor';

  @override
  VwDashboardCotacoesVendedorRow createRow(Map<String, dynamic> data) =>
      VwDashboardCotacoesVendedorRow(data);
}

class VwDashboardCotacoesVendedorRow extends SupabaseDataRow {
  VwDashboardCotacoesVendedorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwDashboardCotacoesVendedorTable();

  int? get solicitacaoId => getField<int>('solicitacao_id');
  set solicitacaoId(int? value) => setField<int>('solicitacao_id', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  DateTime? get dataEncerramento => getField<DateTime>('data_encerramento');
  set dataEncerramento(DateTime? value) =>
      setField<DateTime>('data_encerramento', value);

  int? get totalItensSolicitados => getField<int>('total_itens_solicitados');
  set totalItensSolicitados(int? value) =>
      setField<int>('total_itens_solicitados', value);

  String? get nomeFantasia => getField<String>('nome_fantasia');
  set nomeFantasia(String? value) => setField<String>('nome_fantasia', value);

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  String? get statusParaVendedor => getField<String>('status_para_vendedor');
  set statusParaVendedor(String? value) =>
      setField<String>('status_para_vendedor', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  int? get cotacaoId => getField<int>('cotacao_id');
  set cotacaoId(int? value) => setField<int>('cotacao_id', value);
}
