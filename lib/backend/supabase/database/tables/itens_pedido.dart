import '../database.dart';

class ItensPedidoTable extends SupabaseTable<ItensPedidoRow> {
  @override
  String get tableName => 'itens_pedido';

  @override
  ItensPedidoRow createRow(Map<String, dynamic> data) => ItensPedidoRow(data);
}

class ItensPedidoRow extends SupabaseDataRow {
  ItensPedidoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItensPedidoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get pedidoId => getField<int>('pedido_id')!;
  set pedidoId(int value) => setField<int>('pedido_id', value);

  int get itemCotacaoId => getField<int>('item_cotacao_id')!;
  set itemCotacaoId(int value) => setField<int>('item_cotacao_id', value);

  double get quantidadeComprada => getField<double>('quantidade_comprada')!;
  set quantidadeComprada(double value) =>
      setField<double>('quantidade_comprada', value);

  double get precoCongelado => getField<double>('preco_congelado')!;
  set precoCongelado(double value) =>
      setField<double>('preco_congelado', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  bool get cortadoPeloVendedor => getField<bool>('cortado_pelo_vendedor')!;
  set cortadoPeloVendedor(bool value) =>
      setField<bool>('cortado_pelo_vendedor', value);
}
