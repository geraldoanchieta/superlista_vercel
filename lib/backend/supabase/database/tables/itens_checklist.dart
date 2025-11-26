import '../database.dart';

class ItensChecklistTable extends SupabaseTable<ItensChecklistRow> {
  @override
  String get tableName => 'itens_checklist';

  @override
  ItensChecklistRow createRow(Map<String, dynamic> data) =>
      ItensChecklistRow(data);
}

class ItensChecklistRow extends SupabaseDataRow {
  ItensChecklistRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItensChecklistTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get checklistId => getField<int>('checklist_id')!;
  set checklistId(int value) => setField<int>('checklist_id', value);

  int get itemDaListaId => getField<int>('item_da_lista_id')!;
  set itemDaListaId(int value) => setField<int>('item_da_lista_id', value);

  double? get estoqueApurado => getField<double>('estoque_apurado');
  set estoqueApurado(double? value) =>
      setField<double>('estoque_apurado', value);

  double? get quantidadeCompraDireta =>
      getField<double>('quantidade_compra_direta');
  set quantidadeCompraDireta(double? value) =>
      setField<double>('quantidade_compra_direta', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);
}
