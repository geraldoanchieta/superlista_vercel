import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/dialog_component/dilog_box/dilog_box_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/listas/components/produtocotacao_vendedor/produtocotacao_vendedor_widget.dart';
import '/listas/components/produtos/produto_excluido/produto_excluido_widget.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cotacao_lista_vendedor_model.dart';
export 'cotacao_lista_vendedor_model.dart';

class CotacaoListaVendedorWidget extends StatefulWidget {
  const CotacaoListaVendedorWidget({
    super.key,
    required this.solicitacao,
    required this.cotacao,
  });

  final int? solicitacao;
  final int? cotacao;

  static String routeName = 'cotacaoListaVendedor';
  static String routePath = 'cotacaoListaVendedor';

  @override
  State<CotacaoListaVendedorWidget> createState() =>
      _CotacaoListaVendedorWidgetState();
}

class _CotacaoListaVendedorWidgetState extends State<CotacaoListaVendedorWidget>
    with TickerProviderStateMixin {
  late CotacaoListaVendedorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CotacaoListaVendedorModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<VwItensParaCotarRow>>(
      future:
          (_model.requestCompleter ??= Completer<List<VwItensParaCotarRow>>()
                ..complete(VwItensParaCotarTable().queryRows(
                  queryFn: (q) => q
                      .eqOrNull(
                        'solicitacao_id',
                        widget.solicitacao,
                      )
                      .eqOrNull(
                        'vendedor_id',
                        FFAppState().vendedroe.id,
                      ),
                )))
              .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).lightGray,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<VwItensParaCotarRow> cotacaoListaVendedorVwItensParaCotarRowList =
            snapshot.data!;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).lightGray,
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.commonAppBarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CommonAppBarWidget(
                              name: 'Cotações',
                              color: false,
                              iconExtra: false,
                              novaacao: () async {
                                context.goNamed(HomeVendedorWidget.routeName);
                              },
                              actionicon: () async {
                                scaffoldKey.currentState!.openDrawer();
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.89, -0.08),
                          child: Container(
                            width: 151.4,
                            height: 60.0,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Builder(
                                  builder: (context) => FFButtonWidget(
                                    onPressed: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: DilogBoxWidget(
                                              titulo: 'Enviar Cotação?',
                                              testo:
                                                  'Tem certeza de que deseja enviar sua cotaçnao ao cliente. Ele será notificado pelo whatsapp.',
                                              confima: 'Sim',
                                              recusa: 'Não',
                                              actionConfirm: () async {
                                                _model.apiResultn9w =
                                                    await FuncoesRpcGroup
                                                        .finalizarPreenchimentoCotacaCall
                                                        .call(
                                                  pCotacaoId: widget.cotacao,
                                                  token: currentJwtToken,
                                                );

                                                if ((_model.apiResultn9w
                                                        ?.succeeded ??
                                                    true)) {
                                                  Navigator.pop(context);

                                                  context.goNamed(
                                                      HomeVendedorWidget
                                                          .routeName);
                                                }
                                              },
                                              actionRecusa: () async {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          );
                                        },
                                      );

                                      safeSetState(() {});
                                    },
                                    text: 'Enviar Cotação',
                                    icon: Icon(
                                      Icons.send_outlined,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleSmallIsCustom,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 100.0,
                        height: MediaQuery.sizeOf(context).height * 0.9,
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: TabBar(
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleMediumIsCustom,
                                    ),
                                unselectedLabelStyle:
                                    FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleMediumIsCustom,
                                        ),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).primary,
                                tabs: [
                                  Tab(
                                    text: 'Itens para Cotacão',
                                  ),
                                  Tab(
                                    text: 'Excluidos',
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [() async {}, () async {}][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 12.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.iconeTutorialModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: IconeTutorialWidget(
                                                  tutorial: 'Vendas',
                                                  ordem: 3,
                                                  nome: 'Ajustar',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Builder(
                                            builder: (context) {
                                              final cotacoes =
                                                  cotacaoListaVendedorVwItensParaCotarRowList
                                                      .unique((e) => e)
                                                      .toList();

                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  0,
                                                  16.0,
                                                  0,
                                                  45.0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: cotacoes.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 12.0),
                                                itemBuilder:
                                                    (context, cotacoesIndex) {
                                                  final cotacoesItem =
                                                      cotacoes[cotacoesIndex];
                                                  return Material(
                                                    color: Colors.transparent,
                                                    elevation: 1.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Container(
                                                      width: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FFAppState()
                                                                    .produtocotado
                                                                    .where((e) =>
                                                                        e.itemSolicitacaoId ==
                                                                        cotacoesItem
                                                                            .itemSolicitadoId)
                                                                    .toList()
                                                                    .length >
                                                                0
                                                            ? Color(0xFFA1FA9D)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  CotacaoProdutoVendedorWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'produto':
                                                                        serializeParam(
                                                                      cotacoesItem,
                                                                      ParamType
                                                                          .SupabaseRow,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child:
                                                                  ProdutocotacaoVendedorWidget(
                                                                key: Key(
                                                                    'Key0zx_${cotacoesIndex}_of_${cotacoes.length}'),
                                                                produto:
                                                                    cotacoesItem,
                                                              ),
                                                            ),
                                                          ),
                                                          Builder(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            DilogBoxWidget(
                                                                          titulo:
                                                                              'Excluir ${valueOrDefault<String>(
                                                                            cotacoesItem.nomeProduto,
                                                                            'bnome',
                                                                          )}',
                                                                          testo:
                                                                              'Isso irá remover o item do seu catálogo para todos os restaurantes. Você não receberá mais cotações para ele.Confirmar exclusão?',
                                                                          confima:
                                                                              'Sim',
                                                                          recusa:
                                                                              'Não',
                                                                          actionConfirm:
                                                                              () async {
                                                                            await VendedorExclusoesProdutosTable().insert({
                                                                              'vendedor_id': FFAppState().vendedroe.id,
                                                                              'produto_master_id': cotacoesItem.produtoMasterId,
                                                                            });
                                                                            Navigator.pop(context);
                                                                            safeSetState(() =>
                                                                                _model.requestCompleter = null);
                                                                          },
                                                                          actionRecusa:
                                                                              () async {
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .block_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 30.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FutureBuilder<
                                          List<VwItensExcluidosDaCotacaoRow>>(
                                        future: VwItensExcluidosDaCotacaoTable()
                                            .queryRows(
                                          queryFn: (q) => q
                                              .eqOrNull(
                                                'vendedor_id',
                                                FFAppState().vendedroe.id,
                                              )
                                              .eqOrNull(
                                                'solicitacao_id',
                                                widget.solicitacao,
                                              ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<VwItensExcluidosDaCotacaoRow>
                                              containerVwItensExcluidosDaCotacaoRowList =
                                              snapshot.data!;

                                          return Container(
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final excluidos =
                                                      containerVwItensExcluidosDaCotacaoRowList
                                                          .toList();

                                                  return ListView.separated(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                      0,
                                                      12.0,
                                                      0,
                                                      0,
                                                    ),
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: excluidos.length,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(height: 8.0),
                                                    itemBuilder: (context,
                                                        excluidosIndex) {
                                                      final excluidosItem =
                                                          excluidos[
                                                              excluidosIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 1.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        ProdutoExcluidoWidget(
                                                                      key: Key(
                                                                          'Keyk4s_${excluidosIndex}_of_${excluidos.length}'),
                                                                      nome: excluidosItem
                                                                          .nomeProduto!,
                                                                      categoria:
                                                                          excluidosItem
                                                                              .produtoMasterId!,
                                                                      id: excluidosItem
                                                                          .exclusaoId!,
                                                                    ),
                                                                  ),
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await VendedorExclusoesProdutosTable()
                                                                          .delete(
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          excluidosItem
                                                                              .exclusaoId,
                                                                        ),
                                                                      );
                                                                      safeSetState(() =>
                                                                          _model.requestCompleter =
                                                                              null);
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.file_upload_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).success,
                                                                            size:
                                                                                30.0,
                                                                          ),
                                                                          Text(
                                                                            'Ativar',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).success,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
