import '../database.dart';

class VwDashboardPedidosTable extends SupabaseTable<VwDashboardPedidosRow> {
  @override
  String get tableName => 'vw_dashboard_pedidos';

  @override
  VwDashboardPedidosRow createRow(Map<String, dynamic> data) =>
      VwDashboardPedidosRow(data);
}

class VwDashboardPedidosRow extends SupabaseDataRow {
  VwDashboardPedidosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwDashboardPedidosTable();

  int? get pedidoId => getField<int>('pedido_id');
  set pedidoId(int? value) => setField<int>('pedido_id', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  int? get solicitacaoOrigemId => getField<int>('solicitacao_origem_id');
  set solicitacaoOrigemId(int? value) =>
      setField<int>('solicitacao_origem_id', value);

  DateTime? get dataEntrega => getField<DateTime>('data_entrega');
  set dataEntrega(DateTime? value) => setField<DateTime>('data_entrega', value);

  String? get prazoPagamento => getField<String>('prazo_pagamento');
  set prazoPagamento(String? value) =>
      setField<String>('prazo_pagamento', value);

  String? get modalidadePagamento => getField<String>('modalidade_pagamento');
  set modalidadePagamento(String? value) =>
      setField<String>('modalidade_pagamento', value);

  String? get observacoesEntrega => getField<String>('observacoes_entrega');
  set observacoesEntrega(String? value) =>
      setField<String>('observacoes_entrega', value);

  String? get valorTotal => getField<String>('valor_total');
  set valorTotal(String? value) => setField<String>('valor_total', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get pdfUrl => getField<String>('pdf_url');
  set pdfUrl(String? value) => setField<String>('pdf_url', value);

  String? get nomeEmpresa => getField<String>('nome_empresa');
  set nomeEmpresa(String? value) => setField<String>('nome_empresa', value);

  String? get nomeVendedor => getField<String>('nome_vendedor');
  set nomeVendedor(String? value) => setField<String>('nome_vendedor', value);

  String? get fotoVendedorUrl => getField<String>('foto_vendedor_url');
  set fotoVendedorUrl(String? value) =>
      setField<String>('foto_vendedor_url', value);

  String? get telefoneVendedor => getField<String>('telefone_vendedor');
  set telefoneVendedor(String? value) =>
      setField<String>('telefone_vendedor', value);

  String? get nomeRestaurante => getField<String>('nome_restaurante');
  set nomeRestaurante(String? value) =>
      setField<String>('nome_restaurante', value);

  String? get fotoRestauranteUrl => getField<String>('foto_restaurante_url');
  set fotoRestauranteUrl(String? value) =>
      setField<String>('foto_restaurante_url', value);

  String? get telefoneRestaurante => getField<String>('telefone_restaurante');
  set telefoneRestaurante(String? value) =>
      setField<String>('telefone_restaurante', value);

  DateTime? get dataValidadeProposta =>
      getField<DateTime>('data_validade_proposta');
  set dataValidadeProposta(DateTime? value) =>
      setField<DateTime>('data_validade_proposta', value);

  int? get numeroDeProdutosEscolhidos =>
      getField<int>('numero_de_produtos_escolhidos');
  set numeroDeProdutosEscolhidos(int? value) =>
      setField<int>('numero_de_produtos_escolhidos', value);

  bool? get foiEnviado => getField<bool>('foi_enviado');
  set foiEnviado(bool? value) => setField<bool>('foi_enviado', value);

  double? get compraMinima => getField<double>('compra_minima');
  set compraMinima(double? value) => setField<double>('compra_minima', value);

  DateTime? get proximaEntregaPrevista =>
      getField<DateTime>('proxima_entrega_prevista');
  set proximaEntregaPrevista(DateTime? value) =>
      setField<DateTime>('proxima_entrega_prevista', value);
}
