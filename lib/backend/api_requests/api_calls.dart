import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Funcoes rpc Group Code

class FuncoesRpcGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://tcwsrmqppljuhzuxwkyw.supabase.co/rest/v1/rpc';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
    'Authorization': 'Bearer [token]',
  };
  static BuscaCheckListCall buscaCheckListCall = BuscaCheckListCall();
  static IniciaCotacaoComCheckListCall iniciaCotacaoComCheckListCall =
      IniciaCotacaoComCheckListCall();
  static AtualizaritemdalistaCall atualizaritemdalistaCall =
      AtualizaritemdalistaCall();
  static AtualizaritemchecklistCall atualizaritemchecklistCall =
      AtualizaritemchecklistCall();
  static CriaNovoItemCotacaoCall criaNovoItemCotacaoCall =
      CriaNovoItemCotacaoCall();
  static EditarCotacaoAtualCall editarCotacaoAtualCall =
      EditarCotacaoAtualCall();
  static CriaItemCotacaoCall criaItemCotacaoCall = CriaItemCotacaoCall();
  static AdicionarItemAoPedidoCall adicionarItemAoPedidoCall =
      AdicionarItemAoPedidoCall();
  static IniciarCotacaoCall iniciarCotacaoCall = IniciarCotacaoCall();
  static FinalizarPreenchimentoCotacaCall finalizarPreenchimentoCotacaCall =
      FinalizarPreenchimentoCotacaCall();
  static MarcarPedidoFeitoCall marcarPedidoFeitoCall = MarcarPedidoFeitoCall();
  static GetordereditemsforsolicitationCall getordereditemsforsolicitationCall =
      GetordereditemsforsolicitationCall();
  static DeletarItemDoPedidoCall deletarItemDoPedidoCall =
      DeletarItemDoPedidoCall();
  static CriarItemListaComProdutoMasterCall criarItemListaComProdutoMasterCall =
      CriarItemListaComProdutoMasterCall();
  static BuscarProdutosMasterCall buscarProdutosMasterCall =
      BuscarProdutosMasterCall();
  static BuscarItensSolicitadosCall buscarItensSolicitadosCall =
      BuscarItensSolicitadosCall();
  static BuscarItensCheckListCall buscarItensCheckListCall =
      BuscarItensCheckListCall();
  static CriarRestauranteEAssociarPerfilCall
      criarRestauranteEAssociarPerfilCall =
      CriarRestauranteEAssociarPerfilCall();
  static EditarQuantidadeItemPedidoCall editarQuantidadeItemPedidoCall =
      EditarQuantidadeItemPedidoCall();
  static DesvincularEDeletarVendedorCall desvincularEDeletarVendedorCall =
      DesvincularEDeletarVendedorCall();
  static BuscarvEndedorPorTelefoneCall buscarvEndedorPorTelefoneCall =
      BuscarvEndedorPorTelefoneCall();
  static VincularVendedoreXistenteCall vincularVendedoreXistenteCall =
      VincularVendedoreXistenteCall();
  static CriarAlertaErroCall criarAlertaErroCall = CriarAlertaErroCall();
  static CriarConviteBetaCall criarConviteBetaCall = CriarConviteBetaCall();
  static MarcarItemPedidoCortadoCall marcarItemPedidoCortadoCall =
      MarcarItemPedidoCortadoCall();
  static DeletarListaMestraCompletoCall deletarListaMestraCompletoCall =
      DeletarListaMestraCompletoCall();
  static RegistrarFeedbackCall registrarFeedbackCall = RegistrarFeedbackCall();
}

class BuscaCheckListCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Busca Check List',
      apiUrl: '${baseUrl}/get_checklists_do_meu_restaurante',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IniciaCotacaoComCheckListCall {
  Future<ApiCallResponse> call({
    List<int>? checkListsList,
    String? data = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );
    final checkLists = _serializeList(checkListsList);

    final ffApiRequestBody = '''
{
  "p_checklist_ids": ${checkLists},
  "p_data_encerramento": "${escapeStringForJson(data)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Inicia Cotacao com checkList',
      apiUrl: '${baseUrl}/publicar_cotacao_de_checklists',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic cotacaoId(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class AtualizaritemdalistaCall {
  Future<ApiCallResponse> call({
    int? pItemId = 0,
    String? pNomePersonalizado = '',
    double? pEstoqueMinimo = 0,
    String? pEmbalagemPrimDesc = '',
    double? pEmbalagemPrimQtd = 0,
    int? pEmbalagemPrimUnidId = 0,
    String? pEmbalagemSecDesc = '',
    double? pEmbalagemSecQtd = 0,
    bool? pCotadoPorUnidadeBase,
    String? pStatus = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_item_id": ${pItemId},
  "p_nome_personalizado": "${escapeStringForJson(pNomePersonalizado)}",
  "p_estoque_minimo": ${pEstoqueMinimo},
  "p_embalagem_prim_desc": "${escapeStringForJson(pEmbalagemPrimDesc)}",
  "p_embalagem_prim_qtd": ${pEmbalagemPrimQtd},
  "p_embalagem_prim_unid_id": ${pEmbalagemPrimUnidId},
  "p_embalagem_sec_desc": "${escapeStringForJson(pEmbalagemSecDesc)}",
  "p_embalagem_sec_qtd": ${pEmbalagemSecQtd},
  "p_cotado_por_unidade_base": ${pCotadoPorUnidadeBase},
  "p_status": "${escapeStringForJson(pStatus)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'atualizaritemdalista',
      apiUrl: '${baseUrl}/atualizar_item_da_lista',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AtualizaritemchecklistCall {
  Future<ApiCallResponse> call({
    int? pChecklistId = 0,
    int? pItemDaListaId = 0,
    double? pEstoqueApurado = 0,
    double? pQuantidadeCompraDireta = 0,
    bool? pItemOk,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_checklist_id": ${pChecklistId},
  "p_item_da_lista_id": ${pItemDaListaId},
  "p_estoque_apurado": ${pEstoqueApurado},
  "p_quantidade_compra_direta": ${pQuantidadeCompraDireta},
  "p_item_ok": ${pItemOk}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'atualizaritemchecklist',
      apiUrl: '${baseUrl}/atualizar_item_checklist',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriaNovoItemCotacaoCall {
  Future<ApiCallResponse> call({
    int? pItemSolicitadoId,
    double? pPrecoInformado,
    String? pTipoPrecoInformado = '',
    int? pProdutoMasterId,
    String? pNomeEspecifico = '',
    String? pObservacoes = '',
    String? pMarca = '',
    String? pEmbalagemPrimDesc = '',
    double? pEmbalagemPrimQtd = 0,
    int? pEmbalagemPrimUnidId = 0,
    bool? pCotadoPorUnidadeBase,
    String? pEmbalagemSecDesc = '',
    double? pEmbalagemSecQtd = 0,
    double? pEmbalagemSecVolumeTotal = 0,
    double? pVolumeMinimoVenda = 0,
    int? pCotacaoId = 0,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_item_solicitado_id": ${pItemSolicitadoId},
  "p_cotacao_id": ${pCotacaoId},
  "p_preco_informado": ${pPrecoInformado},
  "p_tipo_preco_informado": "${escapeStringForJson(pTipoPrecoInformado)}",
  "p_produto_master_id": ${pProdutoMasterId},
  "p_nome_especifico": "${escapeStringForJson(pNomeEspecifico)}",
  "p_observacoes": "${escapeStringForJson(pObservacoes)}",
  "p_marca": "${escapeStringForJson(pMarca)}",
  "p_embalagem_prim_desc": "${escapeStringForJson(pEmbalagemPrimDesc)}",
  "p_embalagem_prim_qtd": ${pEmbalagemPrimQtd},
  "p_embalagem_prim_unid_id": ${pEmbalagemPrimUnidId},
  "p_cotado_por_unidade_base": ${pCotadoPorUnidadeBase},
  "p_embalagem_sec_desc": "${escapeStringForJson(pEmbalagemSecDesc)}",
  "p_embalagem_sec_qtd": ${pEmbalagemSecQtd},
  "p_embalagem_sec_volume_total": ${pEmbalagemSecVolumeTotal},
  "p_volume_minimo_venda": ${pVolumeMinimoVenda}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cria novo item cotacao',
      apiUrl: '${baseUrl}/criar_item_catalogo_e_cotar',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? itemCotacao(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].item_cotacao_id''',
      ));
}

class EditarCotacaoAtualCall {
  Future<ApiCallResponse> call({
    int? pCotacaoId = 0,
    double? pPrecoOferta = 0,
    int? pCatalogoProdutoId = 0,
    String? pObservacoes = '',
    int? pItemSolicitadoId = 0,
    String? pTipoPrecoInformado = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_cotacao_id": ${pCotacaoId},
   "p_item_solicitado_id": ${pItemSolicitadoId},
  "p_preco_informado": ${pPrecoOferta},
  "p_catalogo_produto_id": ${pCatalogoProdutoId},
  "p_observacoes": "${escapeStringForJson(pObservacoes)}",
  "p_tipo_preco_informado": "${escapeStringForJson(pTipoPrecoInformado)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editar cotacao Atual',
      apiUrl: '${baseUrl}/submeter_oferta',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriaItemCotacaoCall {
  Future<ApiCallResponse> call({
    int? pCatalogoProdutoId = 0,
    int? pSolicitacaoId = 0,
    double? pPrecoOferta = 0,
    String? pDataValidadeProposta = '',
    String? pObservacoes = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_catalogo_produto_id": ${pCatalogoProdutoId},
  "p_solicitacao_id": ${pSolicitacaoId},
  "p_preco_oferta": ${pPrecoOferta},
  "p_data_validade_proposta": "${escapeStringForJson(pDataValidadeProposta)}",
  "p_observacoes": "${escapeStringForJson(pObservacoes)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cria item cotacao ',
      apiUrl: '${baseUrl}/inserir_preco_cotacao',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdicionarItemAoPedidoCall {
  Future<ApiCallResponse> call({
    int? pItemCotacaoId,
    double? pQuantidadeComprada,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_item_cotacao_id": ${pItemCotacaoId},
  "p_quantidade_comprada": ${pQuantidadeComprada}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'adicionar item ao pedido',
      apiUrl: '${baseUrl}/adicionar_item_ao_pedido',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IniciarCotacaoCall {
  Future<ApiCallResponse> call({
    int? pSolicitacaoId = 0,
    String? pDataValidadeProposta = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_solicitacao_id": ${pSolicitacaoId},
  "p_data_validade_proposta": "${escapeStringForJson(pDataValidadeProposta)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'iniciar cotacao',
      apiUrl: '${baseUrl}/iniciar_cotacao',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FinalizarPreenchimentoCotacaCall {
  Future<ApiCallResponse> call({
    int? pCotacaoId,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_cotacao_id": ${pCotacaoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'finalizar preenchimento cotaca',
      apiUrl: '${baseUrl}/finalizar_preenchimento_cotacao',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MarcarPedidoFeitoCall {
  Future<ApiCallResponse> call({
    int? pPedidoId = 0,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_pedido_id": ${pPedidoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'marcar pedido feito',
      apiUrl: '${baseUrl}/marcar_pedido_feito',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetordereditemsforsolicitationCall {
  Future<ApiCallResponse> call({
    int? solicitacaoId,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_solicitacao_id": ${solicitacaoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getordereditemsforsolicitation',
      apiUrl: '${baseUrl}/get_ordered_items_for_solicitation',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletarItemDoPedidoCall {
  Future<ApiCallResponse> call({
    int? itemPedido,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_item_pedido_id": ${itemPedido}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deletar item do pedido',
      apiUrl: '${baseUrl}/deletar_item_do_pedido',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarItemListaComProdutoMasterCall {
  Future<ApiCallResponse> call({
    int? pListaMestraId = 0,
    String? pNomePersonalizado = '',
    double? pEstoqueMinimo = 0,
    String? pEmbalagemPrimDesc = '',
    double? pEmbalagemPrimQtd = 0,
    String? pNomeProdutoMaster = '',
    String? pCategoriaNome = '',
    String? pUnidadeNome = '',
    String? pEmbalagemSecDesc = '',
    double? pEmbalagemSecQtd = 0,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_lista_mestra_id": ${pListaMestraId},
  "p_nome_personalizado": "${escapeStringForJson(pNomePersonalizado)}",
  "p_estoque_minimo": ${pEstoqueMinimo},
  "p_embalagem_prim_desc": "${escapeStringForJson(pEmbalagemPrimDesc)}",
  "p_embalagem_prim_qtd": ${pEmbalagemPrimQtd},
  "p_nome_produto_master": "${escapeStringForJson(pNomeProdutoMaster)}",
  "p_categoria_nome": "${escapeStringForJson(pCategoriaNome)}",
  "p_unidade_simbolo": "${escapeStringForJson(pUnidadeNome)}",
  "p_embalagem_sec_desc": "${escapeStringForJson(pEmbalagemSecDesc)}",
  "p_embalagem_sec_qtd": ${pEmbalagemSecQtd}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criar item lista com produto master',
      apiUrl: '${baseUrl}/criar_item_lista_com_produto_master',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarProdutosMasterCall {
  Future<ApiCallResponse> call({
    String? pTermoBusca = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_termo_busca": "${escapeStringForJson(pTermoBusca)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'buscar produtos master',
      apiUrl: '${baseUrl}/buscar_produtos_master',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

class BuscarItensSolicitadosCall {
  Future<ApiCallResponse> call({
    String? pTermoBusca = '',
    int? pSolicitacaoId = 0,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_solicitacao_id": ${pSolicitacaoId},
  "p_termo_busca": "${escapeStringForJson(pTermoBusca)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'buscar itens solicitados ',
      apiUrl: '${baseUrl}/buscar_itens_solicitados',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].item_solicitado_id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_personalizado''',
      ));
}

class BuscarItensCheckListCall {
  Future<ApiCallResponse> call({
    String? pTermoBusca = '',
    int? pListaMestraId = 0,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_lista_mestra_id": ${pListaMestraId},
  "p_termo_busca": "${escapeStringForJson(pTermoBusca)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'buscar itens checkList',
      apiUrl: '${baseUrl}/buscar_itens_checklist',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_personalizado''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].item_da_lista_id''',
      ));
}

class CriarRestauranteEAssociarPerfilCall {
  Future<ApiCallResponse> call({
    String? pRazaoSocial = '',
    String? pNomeFantasia = '',
    String? pCnpj = '',
    String? pCep = '',
    String? pEndereco = '',
    String? pCidade = '',
    String? pEstado = '',
    String? pLogoUrltext = '',
    String? pNomeAdministrador = '',
    String? pDdd = '',
    String? pTelefone = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_razao_social": "${escapeStringForJson(pRazaoSocial)}",
  "p_nome_fantasia": "${escapeStringForJson(pNomeFantasia)}",
  "p_cnpj": "${escapeStringForJson(pCnpj)}",
  "p_cep": "${escapeStringForJson(pCep)}",
  "p_endereco": "${escapeStringForJson(pEndereco)}",
  "p_cidade": "${escapeStringForJson(pCidade)}",
  "p_estado": "${escapeStringForJson(pEstado)}",
  "p_logo_url": "${escapeStringForJson(pLogoUrltext)}",
  "p_nome_administrador": "${escapeStringForJson(pNomeAdministrador)}",
  "p_ddd": "${escapeStringForJson(pDdd)}",
  "p_telefone": "${escapeStringForJson(pTelefone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criar restaurante e associar perfil',
      apiUrl: '${baseUrl}/criar_restaurante_e_associar_perfil',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditarQuantidadeItemPedidoCall {
  Future<ApiCallResponse> call({
    int? pItemPedidoId,
    double? pNovaQuantidade,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_item_pedido_id": ${pItemPedidoId},
  "p_nova_quantidade": ${pNovaQuantidade}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editar quantidade item pedido',
      apiUrl: '${baseUrl}/editar_quantidade_item_pedido',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DesvincularEDeletarVendedorCall {
  Future<ApiCallResponse> call({
    int? pVendedorId = 0,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_vendedor_id": ${pVendedorId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'desvincular e deletar vendedor',
      apiUrl: '${baseUrl}/desvincular_e_deletar_vendedor',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarvEndedorPorTelefoneCall {
  Future<ApiCallResponse> call({
    String? telefone = '',
    String? ddd = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_ddd": "${escapeStringForJson(ddd)}",
  "p_telefone": "${escapeStringForJson(telefone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'buscarv endedor por telefone',
      apiUrl: '${baseUrl}/buscar_vendedor_por_telefone',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.vendedor_id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
  String? empresa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome_empresa''',
      ));
  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.foto_url''',
      ));
}

class VincularVendedoreXistenteCall {
  Future<ApiCallResponse> call({
    int? pVendedorId,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_vendedor_id": ${pVendedorId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'vincular vendedore xistente',
      apiUrl: '${baseUrl}/vincular_vendedor_existente',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarAlertaErroCall {
  Future<ApiCallResponse> call({
    int? pItemCotacaoId = 0,
    String? pObservacaoErro = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_item_cotacao_id": ${pItemCotacaoId},
  "p_observacao_erro": "${escapeStringForJson(pObservacaoErro)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criar alerta erro',
      apiUrl: '${baseUrl}/criar_alerta_erro',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? mensgaem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class CriarConviteBetaCall {
  Future<ApiCallResponse> call({
    String? pDdd = '',
    String? pTelefone = '',
    String? pNomeDestinatario = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_ddd": "${escapeStringForJson(pDdd)}",
  "p_telefone": "${escapeStringForJson(pTelefone)}",
  "p_nome_destinatario": "${escapeStringForJson(pNomeDestinatario)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criar convite beta',
      apiUrl: '${baseUrl}/criar_convite_beta',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MarcarItemPedidoCortadoCall {
  Future<ApiCallResponse> call({
    int? pItemPedidoId,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_item_pedido_id": ${pItemPedidoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'marcar item pedido cortado',
      apiUrl: '${baseUrl}/marcar_item_pedido_cortado',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletarListaMestraCompletoCall {
  Future<ApiCallResponse> call({
    int? pListaMestraId,
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_lista_mestra_id": ${pListaMestraId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deletar lista mestra completo',
      apiUrl: '${baseUrl}/deletar_lista_mestra_completo',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegistrarFeedbackCall {
  Future<ApiCallResponse> call({
    String? pFeedbackTexto = '',
    String? token = '',
  }) async {
    final baseUrl = FuncoesRpcGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_feedback_texto": "${escapeStringForJson(pFeedbackTexto)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'registrar feedback',
      apiUrl: '${baseUrl}/registrar_feedback',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Funcoes rpc Group Code

/// Start Edge functions Group Code

class EdgeFunctionsGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://tcwsrmqppljuhzuxwkyw.supabase.co/functions/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
    'Authorization': 'Bearer [token]',
  };
  static ConvidarvendedorCall convidarvendedorCall = ConvidarvendedorCall();
  static ConfirmarconvitevendedorCall confirmarconvitevendedorCall =
      ConfirmarconvitevendedorCall();
  static PublicaCotacaoCall publicaCotacaoCall = PublicaCotacaoCall();
  static EnviaMagicLinkCall enviaMagicLinkCall = EnviaMagicLinkCall();
  static IdentificausuarioCall identificausuarioCall = IdentificausuarioCall();
  static GerarEEnviarPedidoCall gerarEEnviarPedidoCall =
      GerarEEnviarPedidoCall();
  static LembrarVendedorCotacaoCall lembrarVendedorCotacaoCall =
      LembrarVendedorCotacaoCall();
  static ConvidarEmpresaPorVendedorCall convidarEmpresaPorVendedorCall =
      ConvidarEmpresaPorVendedorCall();
  static ValidarConvitePorTelefoneCall validarConvitePorTelefoneCall =
      ValidarConvitePorTelefoneCall();
  static CadastrarNovoRestauranteCall cadastrarNovoRestauranteCall =
      CadastrarNovoRestauranteCall();
}

class ConvidarvendedorCall {
  Future<ApiCallResponse> call({
    String? ddd = '',
    String? telefone = '',
    String? empresa = '',
    String? nome = '',
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_ddd": "${escapeStringForJson(ddd)}",
  "p_telefone": "${escapeStringForJson(telefone)}",
  "p_nome_vendedor": "${escapeStringForJson(nome)}",
  "p_nome_empresa": "${escapeStringForJson(empresa)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'convidarvendedor',
      apiUrl: '${baseUrl}/convidar-vendedor',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmarconvitevendedorCall {
  Future<ApiCallResponse> call({
    String? tokenurl = '',
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(tokenurl)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirmarconvitevendedor',
      apiUrl: '${baseUrl}/confirmar-convite-vendedor',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.magicLink''',
      ));
}

class PublicaCotacaoCall {
  Future<ApiCallResponse> call({
    int? cotacaoId,
    List<int>? vendedoresExcluidosList,
    String? data = '',
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl(
      token: token,
    );
    final vendedoresExcluidos = _serializeList(vendedoresExcluidosList);

    final ffApiRequestBody = '''
{
  "p_solicitacao_id": ${cotacaoId},
  "p_vendedores_excluidos_ids": ${vendedoresExcluidos},
  "p_data_encerramento": "${escapeStringForJson(data)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'publica cotacao',
      apiUrl: '${baseUrl}/publica-cotacao',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EnviaMagicLinkCall {
  Future<ApiCallResponse> call({
    String? tokenConvite = '',
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_convite_token": "${escapeStringForJson(tokenConvite)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'envia magic link',
      apiUrl: '${baseUrl}/envia_magic_link',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.magicLink''',
      ));
}

class IdentificausuarioCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'identificausuario',
      apiUrl: '${baseUrl}/identifica-usuario',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isRestaurante(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isRestaurante''',
      ));
  VendedorStruct? vendedor(dynamic response) =>
      VendedorStruct.maybeFromMap(getJsonField(
        response,
        r'''$.vendedor''',
      ));
  RestauranteStruct? restaurante(dynamic response) =>
      RestauranteStruct.maybeFromMap(getJsonField(
        response,
        r'''$.restaurante''',
      ));
  ProfileStruct? profile(dynamic response) =>
      ProfileStruct.maybeFromMap(getJsonField(
        response,
        r'''$.profile''',
      ));
}

class GerarEEnviarPedidoCall {
  Future<ApiCallResponse> call({
    int? pPedidoId = 0,
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_pedido_id": ${pPedidoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'gerar e enviar pedido',
      apiUrl: '${baseUrl}/gerar-e-enviar-pedido',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.pdfUrl''',
      ));
}

class LembrarVendedorCotacaoCall {
  Future<ApiCallResponse> call({
    int? vendedor,
    String? menssagem = '',
    int? pSolicitacaoId,
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_vendedor_id": ${vendedor},
  "p_mensagem": "${escapeStringForJson(menssagem)}",
  "p_solicitacao_id": ${pSolicitacaoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'lembrar vendedor cotacao',
      apiUrl: '${baseUrl}/lembrar-vendedor-cotacao',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConvidarEmpresaPorVendedorCall {
  Future<ApiCallResponse> call({
    String? pNomeVendedor = '',
    String? pNomeEmpresa = '',
    String? pDdd = '',
    String? pTelefone = '',
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_nome_vendedor": "${escapeStringForJson(pNomeVendedor)}",
  "p_nome_empresa": "${escapeStringForJson(pNomeEmpresa)}",
  "p_ddd": "${escapeStringForJson(pDdd)}",
  "p_telefone": "${escapeStringForJson(pTelefone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'convidar empresa por vendedor',
      apiUrl: '${baseUrl}/convidar-empresa-por-vendedor',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidarConvitePorTelefoneCall {
  Future<ApiCallResponse> call({
    String? pDdd = '',
    String? pTelefone = '',
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_ddd": "${escapeStringForJson(pDdd)}",
  "p_telefone": "${escapeStringForJson(pTelefone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'validar convite por telefone',
      apiUrl: '${baseUrl}/validar-convite-por-telefone',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? valido(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valido''',
      ));
  String? mensagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class CadastrarNovoRestauranteCall {
  Future<ApiCallResponse> call({
    String? pRazaoSocial = '',
    String? pNomeFantasia = '',
    String? pCnpj = '',
    String? pCep = '',
    String? pEndereco = '',
    String? pCidade = '',
    String? pEstado = '',
    String? pLogoUrl = '',
    String? pNomeAdministrador = '',
    String? pDdd = '',
    String? pTelefone = '',
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "p_razao_social": "${escapeStringForJson(pRazaoSocial)}",
  "p_nome_fantasia": "${escapeStringForJson(pNomeFantasia)}",
  "p_cnpj": "${escapeStringForJson(pCnpj)}",
  "p_cep": "${escapeStringForJson(pCep)}",
  "p_endereco": "${escapeStringForJson(pEndereco)}",
  "p_cidade": "${escapeStringForJson(pCidade)}",
  "p_estado": "${escapeStringForJson(pEstado)}",
  "p_logo_url": "${escapeStringForJson(pLogoUrl)}",
  "p_nome_administrador": "${escapeStringForJson(pNomeAdministrador)}",
  "p_ddd": "${escapeStringForJson(pDdd)}",
  "p_telefone": "${escapeStringForJson(pTelefone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastrar novo restaurante',
      apiUrl: '${baseUrl}/cadastrar-novo-restaurante',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjd3NybXFwcGxqdWh6dXh3a3l3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMxNTc3MjUsImV4cCI6MjA2ODczMzcyNX0.qfpNLXrh0451DOdEaTGay7oya360i3FSX_c7TIb2x2I',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Edge functions Group Code

/// Start teste wame Group Code

class TesteWameGroup {
  static String getBaseUrl() => 'https://us.api-wa.me';
  static Map<String, String> headers = {};
}

/// End teste wame Group Code

class ConsultaCnpjCall {
  static Future<ApiCallResponse> call({
    String? cnpj = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'consulta cnpj',
      apiUrl: 'https://brasilapi.com.br/api/cnpj/v1/${cnpj}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? porte(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.porte''',
      ));
  static String? numeroEndereco(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.numero''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? municipio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.municipio''',
      ));
  static String? endereco(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? complemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
  static int? cnae(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cnae_fiscal''',
      ));
  static String? razaosocial(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.razao_social''',
      ));
  static String? nomeFantasia(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nome_fantasia''',
      ));
  static bool? mei(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.opcao_pelo_mei''',
      ));
  static bool? simples(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.opcao_pelo_simples''',
      ));
  static int? codigomunicipioIBGE(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.codigo_municipio_ibge''',
      ));
  static String? situacaoCadastral(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.descricao_situacao_cadastral''',
      ));
  static String? tipoDeEndereco(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.descricao_tipo_de_logradouro''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
