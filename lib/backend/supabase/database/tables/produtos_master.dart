import '../database.dart';

class ProdutosMasterTable extends SupabaseTable<ProdutosMasterRow> {
  @override
  String get tableName => 'produtos_master';

  @override
  ProdutosMasterRow createRow(Map<String, dynamic> data) =>
      ProdutosMasterRow(data);
}

class ProdutosMasterRow extends SupabaseDataRow {
  ProdutosMasterRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProdutosMasterTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  int? get categoriaId => getField<int>('categoria_id');
  set categoriaId(int? value) => setField<int>('categoria_id', value);

  int get unidadeBaseId => getField<int>('unidade_base_id')!;
  set unidadeBaseId(int value) => setField<int>('unidade_base_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  bool get ehItemPersonalizado => getField<bool>('eh_item_personalizado')!;
  set ehItemPersonalizado(bool value) =>
      setField<bool>('eh_item_personalizado', value);
}
