import '../database.dart';

class VwDashboardListasTable extends SupabaseTable<VwDashboardListasRow> {
  @override
  String get tableName => 'vw_dashboard_listas';

  @override
  VwDashboardListasRow createRow(Map<String, dynamic> data) =>
      VwDashboardListasRow(data);
}

class VwDashboardListasRow extends SupabaseDataRow {
  VwDashboardListasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwDashboardListasTable();

  int? get listaMestraId => getField<int>('lista_mestra_id');
  set listaMestraId(int? value) => setField<int>('lista_mestra_id', value);

  String? get nomeLista => getField<String>('nome_lista');
  set nomeLista(String? value) => setField<String>('nome_lista', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  int? get checklistId => getField<int>('checklist_id');
  set checklistId(int? value) => setField<int>('checklist_id', value);

  String? get statusChecklist => getField<String>('status_checklist');
  set statusChecklist(String? value) =>
      setField<String>('status_checklist', value);

  DateTime? get dataAberturaChecklist =>
      getField<DateTime>('data_abertura_checklist');
  set dataAberturaChecklist(DateTime? value) =>
      setField<DateTime>('data_abertura_checklist', value);

  int? get totalItensNaLista => getField<int>('total_itens_na_lista');
  set totalItensNaLista(int? value) =>
      setField<int>('total_itens_na_lista', value);

  int? get itensParaPedir => getField<int>('itens_para_pedir');
  set itensParaPedir(int? value) => setField<int>('itens_para_pedir', value);

  int? get itensOk => getField<int>('itens_ok');
  set itensOk(int? value) => setField<int>('itens_ok', value);

  int? get itensNaoChecados => getField<int>('itens_nao_checados');
  set itensNaoChecados(int? value) =>
      setField<int>('itens_nao_checados', value);
}
