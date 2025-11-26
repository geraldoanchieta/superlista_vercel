import '../database.dart';

class VwStatusVendedoresCotacaoTable
    extends SupabaseTable<VwStatusVendedoresCotacaoRow> {
  @override
  String get tableName => 'vw_status_vendedores_cotacao';

  @override
  VwStatusVendedoresCotacaoRow createRow(Map<String, dynamic> data) =>
      VwStatusVendedoresCotacaoRow(data);
}

class VwStatusVendedoresCotacaoRow extends SupabaseDataRow {
  VwStatusVendedoresCotacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwStatusVendedoresCotacaoTable();

  int? get solicitacaoId => getField<int>('solicitacao_id');
  set solicitacaoId(int? value) => setField<int>('solicitacao_id', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  String? get nomeVendedor => getField<String>('nome_vendedor');
  set nomeVendedor(String? value) => setField<String>('nome_vendedor', value);

  String? get nomeEmpresa => getField<String>('nome_empresa');
  set nomeEmpresa(String? value) => setField<String>('nome_empresa', value);

  String? get logoVendedor => getField<String>('logo_vendedor');
  set logoVendedor(String? value) => setField<String>('logo_vendedor', value);

  int? get cotacaoId => getField<int>('cotacao_id');
  set cotacaoId(int? value) => setField<int>('cotacao_id', value);

  String? get statusResposta => getField<String>('status_resposta');
  set statusResposta(String? value) =>
      setField<String>('status_resposta', value);
}
