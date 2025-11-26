import '../database.dart';

class VwPedidoPdfTable extends SupabaseTable<VwPedidoPdfRow> {
  @override
  String get tableName => 'vw_pedido_pdf';

  @override
  VwPedidoPdfRow createRow(Map<String, dynamic> data) => VwPedidoPdfRow(data);
}

class VwPedidoPdfRow extends SupabaseDataRow {
  VwPedidoPdfRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwPedidoPdfTable();

  int? get pedidoId => getField<int>('pedido_id');
  set pedidoId(int? value) => setField<int>('pedido_id', value);

  int? get itemPedidoId => getField<int>('item_pedido_id');
  set itemPedidoId(int? value) => setField<int>('item_pedido_id', value);

  int? get cotacaoId => getField<int>('cotacao_id');
  set cotacaoId(int? value) => setField<int>('cotacao_id', value);

  double? get quantidadeComprada => getField<double>('quantidade_comprada');
  set quantidadeComprada(double? value) =>
      setField<double>('quantidade_comprada', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  String? get produtoFormatado => getField<String>('produto_formatado');
  set produtoFormatado(String? value) =>
      setField<String>('produto_formatado', value);

  String? get descricaoEmbalagemSecundaria =>
      getField<String>('descricao_embalagem_secundaria');
  set descricaoEmbalagemSecundaria(String? value) =>
      setField<String>('descricao_embalagem_secundaria', value);

  String? get valorUnitarioFormatado =>
      getField<String>('valor_unitario_formatado');
  set valorUnitarioFormatado(String? value) =>
      setField<String>('valor_unitario_formatado', value);

  String? get valorTotalItem => getField<String>('valor_total_item');
  set valorTotalItem(String? value) =>
      setField<String>('valor_total_item', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);
}
