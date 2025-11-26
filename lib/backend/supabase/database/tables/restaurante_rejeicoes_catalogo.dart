import '../database.dart';

class RestauranteRejeicoesCatalogoTable
    extends SupabaseTable<RestauranteRejeicoesCatalogoRow> {
  @override
  String get tableName => 'restaurante_rejeicoes_catalogo';

  @override
  RestauranteRejeicoesCatalogoRow createRow(Map<String, dynamic> data) =>
      RestauranteRejeicoesCatalogoRow(data);
}

class RestauranteRejeicoesCatalogoRow extends SupabaseDataRow {
  RestauranteRejeicoesCatalogoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RestauranteRejeicoesCatalogoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get restauranteId => getField<int>('restaurante_id')!;
  set restauranteId(int value) => setField<int>('restaurante_id', value);

  int get catalogoProdutoId => getField<int>('catalogo_produto_id')!;
  set catalogoProdutoId(int value) =>
      setField<int>('catalogo_produto_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
