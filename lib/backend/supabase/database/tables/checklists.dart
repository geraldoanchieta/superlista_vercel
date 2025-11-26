import '../database.dart';

class ChecklistsTable extends SupabaseTable<ChecklistsRow> {
  @override
  String get tableName => 'checklists';

  @override
  ChecklistsRow createRow(Map<String, dynamic> data) => ChecklistsRow(data);
}

class ChecklistsRow extends SupabaseDataRow {
  ChecklistsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChecklistsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get listaMestraId => getField<int>('lista_mestra_id')!;
  set listaMestraId(int value) => setField<int>('lista_mestra_id', value);

  String get compradorId => getField<String>('comprador_id')!;
  set compradorId(String value) => setField<String>('comprador_id', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get iniciadoEm => getField<DateTime>('iniciado_em');
  set iniciadoEm(DateTime? value) => setField<DateTime>('iniciado_em', value);

  DateTime? get finalizadoEm => getField<DateTime>('finalizado_em');
  set finalizadoEm(DateTime? value) =>
      setField<DateTime>('finalizado_em', value);
}
