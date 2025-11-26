import '../database.dart';

class ItensSolicitadosTable extends SupabaseTable<ItensSolicitadosRow> {
  @override
  String get tableName => 'itens_solicitados';

  @override
  ItensSolicitadosRow createRow(Map<String, dynamic> data) =>
      ItensSolicitadosRow(data);
}

class ItensSolicitadosRow extends SupabaseDataRow {
  ItensSolicitadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItensSolicitadosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get solicitacaoId => getField<int>('solicitacao_id')!;
  set solicitacaoId(int value) => setField<int>('solicitacao_id', value);

  int get produtoMasterId => getField<int>('produto_master_id')!;
  set produtoMasterId(int value) => setField<int>('produto_master_id', value);

  double get quantidadeSolicitada => getField<double>('quantidade_solicitada')!;
  set quantidadeSolicitada(double value) =>
      setField<double>('quantidade_solicitada', value);

  String? get observacoesComprador => getField<String>('observacoes_comprador');
  set observacoesComprador(String? value) =>
      setField<String>('observacoes_comprador', value);

  bool? get comprado => getField<bool>('comprado');
  set comprado(bool? value) => setField<bool>('comprado', value);

  int? get itemDaListaId => getField<int>('item_da_lista_id');
  set itemDaListaId(int? value) => setField<int>('item_da_lista_id', value);
}
