import '../database.dart';

class VwRestaurantesDoVendedorTable
    extends SupabaseTable<VwRestaurantesDoVendedorRow> {
  @override
  String get tableName => 'vw_restaurantes_do_vendedor';

  @override
  VwRestaurantesDoVendedorRow createRow(Map<String, dynamic> data) =>
      VwRestaurantesDoVendedorRow(data);
}

class VwRestaurantesDoVendedorRow extends SupabaseDataRow {
  VwRestaurantesDoVendedorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwRestaurantesDoVendedorTable();

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);

  String? get nomeFantasia => getField<String>('nome_fantasia');
  set nomeFantasia(String? value) => setField<String>('nome_fantasia', value);

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  String? get nomeContato => getField<String>('nome_contato');
  set nomeContato(String? value) => setField<String>('nome_contato', value);
}
