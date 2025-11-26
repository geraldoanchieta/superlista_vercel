import '../database.dart';

class VwGerenciamentoVendedoresTable
    extends SupabaseTable<VwGerenciamentoVendedoresRow> {
  @override
  String get tableName => 'vw_gerenciamento_vendedores';

  @override
  VwGerenciamentoVendedoresRow createRow(Map<String, dynamic> data) =>
      VwGerenciamentoVendedoresRow(data);
}

class VwGerenciamentoVendedoresRow extends SupabaseDataRow {
  VwGerenciamentoVendedoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwGerenciamentoVendedoresTable();

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get nomeEmpresa => getField<String>('nome_empresa');
  set nomeEmpresa(String? value) => setField<String>('nome_empresa', value);

  String? get ddd => getField<String>('ddd');
  set ddd(String? value) => setField<String>('ddd', value);

  String? get telefoneWhatsapp => getField<String>('telefone_whatsapp');
  set telefoneWhatsapp(String? value) =>
      setField<String>('telefone_whatsapp', value);

  String? get fotoUrl => getField<String>('foto_url');
  set fotoUrl(String? value) => setField<String>('foto_url', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dataExpiracaoConvite =>
      getField<DateTime>('data_expiracao_convite');
  set dataExpiracaoConvite(DateTime? value) =>
      setField<DateTime>('data_expiracao_convite', value);

  String? get nomeRestaurante => getField<String>('nome_restaurante');
  set nomeRestaurante(String? value) =>
      setField<String>('nome_restaurante', value);

  String? get logoRestaurante => getField<String>('logo_restaurante');
  set logoRestaurante(String? value) =>
      setField<String>('logo_restaurante', value);

  String? get nomeContatoRestaurante =>
      getField<String>('nome_contato_restaurante');
  set nomeContatoRestaurante(String? value) =>
      setField<String>('nome_contato_restaurante', value);

  String? get situacaoParceria => getField<String>('situacao_parceria');
  set situacaoParceria(String? value) =>
      setField<String>('situacao_parceria', value);

  int? get prazoPagamentoPadrao => getField<int>('prazo_pagamento_padrao');
  set prazoPagamentoPadrao(int? value) =>
      setField<int>('prazo_pagamento_padrao', value);

  String? get modalidadePagamentoPadrao =>
      getField<String>('modalidade_pagamento_padrao');
  set modalidadePagamentoPadrao(String? value) =>
      setField<String>('modalidade_pagamento_padrao', value);

  String? get diasEntregaPadrao => getField<String>('dias_entrega_padrao');
  set diasEntregaPadrao(String? value) =>
      setField<String>('dias_entrega_padrao', value);

  bool? get entregaTodosDias => getField<bool>('entrega_todos_dias');
  set entregaTodosDias(bool? value) =>
      setField<bool>('entrega_todos_dias', value);

  bool? get fazEntrega => getField<bool>('faz_entrega');
  set fazEntrega(bool? value) => setField<bool>('faz_entrega', value);

  String? get observacoesEntrega => getField<String>('observacoes_entrega');
  set observacoesEntrega(String? value) =>
      setField<String>('observacoes_entrega', value);

  bool? get freteGratuito => getField<bool>('frete_gratuito');
  set freteGratuito(bool? value) => setField<bool>('frete_gratuito', value);

  double? get compraMinima => getField<double>('compra_minima');
  set compraMinima(double? value) => setField<double>('compra_minima', value);

  DateTime? get proximoDiaEntrega => getField<DateTime>('proximo_dia_entrega');
  set proximoDiaEntrega(DateTime? value) =>
      setField<DateTime>('proximo_dia_entrega', value);
}
