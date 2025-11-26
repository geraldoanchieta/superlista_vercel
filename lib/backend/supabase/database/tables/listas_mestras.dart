import '../database.dart';

class ListasMestrasTable extends SupabaseTable<ListasMestrasRow> {
  @override
  String get tableName => 'listas_mestras';

  @override
  ListasMestrasRow createRow(Map<String, dynamic> data) =>
      ListasMestrasRow(data);
}

class ListasMestrasRow extends SupabaseDataRow {
  ListasMestrasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListasMestrasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nomeLista => getField<String>('nome_lista')!;
  set nomeLista(String value) => setField<String>('nome_lista', value);

  String get criadoPorId => getField<String>('criado_por_id')!;
  set criadoPorId(String value) => setField<String>('criado_por_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  int get restauranteId => getField<int>('restaurante_id')!;
  set restauranteId(int value) => setField<int>('restaurante_id', value);
}
