import '../database.dart';

class VendedorExclusoesProdutosTable
    extends SupabaseTable<VendedorExclusoesProdutosRow> {
  @override
  String get tableName => 'vendedor_exclusoes_produtos';

  @override
  VendedorExclusoesProdutosRow createRow(Map<String, dynamic> data) =>
      VendedorExclusoesProdutosRow(data);
}

class VendedorExclusoesProdutosRow extends SupabaseDataRow {
  VendedorExclusoesProdutosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendedorExclusoesProdutosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get vendedorId => getField<int>('vendedor_id')!;
  set vendedorId(int value) => setField<int>('vendedor_id', value);

  int get produtoMasterId => getField<int>('produto_master_id')!;
  set produtoMasterId(int value) => setField<int>('produto_master_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
