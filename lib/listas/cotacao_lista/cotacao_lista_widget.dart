import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/components/pedido_component_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/bs_procuraitem/bs_procuraitem_widget.dart';
import '/listas/components/bs_communica_vendedor/bs_communica_vendedor_widget.dart';
import '/listas/components/bs_edita_pedido/bs_edita_pedido_widget.dart';
import '/listas/components/produtos/produtocotacao/produtocotacao_widget.dart';
import '/listas/empty_list/empty_list_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cotacao_lista_model.dart';
export 'cotacao_lista_model.dart';

class CotacaoListaWidget extends StatefulWidget {
  const CotacaoListaWidget({
    super.key,
    required this.solicitacao,
  });

  final int? solicitacao;

  static String routeName = 'cotacaoLista';
  static String routePath = 'cotacaoLista';

  @override
  State<CotacaoListaWidget> createState() => _CotacaoListaWidgetState();
}

class _CotacaoListaWidgetState extends State<CotacaoListaWidget>
    with TickerProviderStateMixin {
  late CotacaoListaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CotacaoListaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultr2g =
          await FuncoesRpcGroup.getordereditemsforsolicitationCall.call(
        solicitacaoId: widget.solicitacao,
        token: currentJwtToken,
      );

      if ((_model.apiResultr2g?.succeeded ?? true)) {
        FFAppState().pedidosfeitos =
            ((_model.apiResultr2g?.jsonBody ?? '') as List)
                .cast<int>()
                .toList()
                .cast<int>();
        safeSetState(() {});
      }
    });

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

    return FutureBuilder<List<VwDetalhesItensSolicitadosRow>>(
      future: VwDetalhesItensSolicitadosTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'solicitacao_id',
              widget.solicitacao,
            )
            .order('categoria_id'),
      ),
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
        List<VwDetalhesItensSolicitadosRow>
            cotacaoListaVwDetalhesItensSolicitadosRowList = snapshot.data!;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).lightGray,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: BsProcuraitemWidget(
                      pesquisa: 'solicitacao',
                      solicitacao: widget.solicitacao,
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: FaIcon(
              FontAwesomeIcons.search,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
          drawer: Drawer(
            elevation: 16.0,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.3,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 64.0, 0.0, 0.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.iconeTutorialModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: IconeTutorialWidget(
                                    tutorial: 'Cotações',
                                    ordem: 3,
                                    nome: 'Alertas',
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await SolicitacoesCotacaoTable().update(
                                  data: {
                                    'status': 'encerrada',
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id',
                                    widget.solicitacao,
                                  ),
                                );
                                Navigator.pop(context);

                                context
                                    .goNamed(HomeRestauranteWidget.routeName);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.check,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 24.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Encerrar  Cotação',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'comic neue',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.users,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 24.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Vendedores Convidados',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'comic neue',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            FutureBuilder<List<VwStatusVendedoresCotacaoRow>>(
                              future:
                                  VwStatusVendedoresCotacaoTable().queryRows(
                                queryFn: (q) => q
                                    .eqOrNull(
                                      'solicitacao_id',
                                      widget.solicitacao,
                                    )
                                    .order('nome_empresa', ascending: true),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<VwStatusVendedoresCotacaoRow>
                                    containerVwStatusVendedoresCotacaoRowList =
                                    snapshot.data!;

                                return Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.7,
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final vendedores =
                                          containerVwStatusVendedoresCotacaoRowList
                                              .toList();

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: vendedores.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 8.0),
                                        itemBuilder:
                                            (context, vendedoresIndex) {
                                          final vendedoresItem =
                                              vendedores[vendedoresIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 12.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 45.0,
                                                      height: 45.0,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 35.0,
                                                            height: 35.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  vendedoresItem
                                                                      .logoVendedor,
                                                                  'https://picsum.photos/seed/957/600',
                                                                ),
                                                                width: 200.0,
                                                                height: 200.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.86, 0.82),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                if (vendedoresItem
                                                                        .statusResposta !=
                                                                    'Respondido') {
                                                                  return FaIcon(
                                                                    FontAwesomeIcons
                                                                        .hourglassHalf,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 15.0,
                                                                  );
                                                                } else {
                                                                  return Icon(
                                                                    Icons
                                                                        .check_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    size: 24.0,
                                                                  );
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                vendedoresItem
                                                                    .nomeEmpresa,
                                                                'Empresa',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                vendedoresItem
                                                                    .nomeVendedor,
                                                                'Vendedor',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        10.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    if (vendedoresItem
                                                            .statusResposta !=
                                                        'Respondido') {
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    BsCommunicaVendedorWidget(
                                                                  vendedor:
                                                                      vendedoresItem,
                                                                  solicitacaoid:
                                                                      widget
                                                                          .solicitacao!,
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .send_sharp,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                size: 24.0,
                                                              ),
                                                              Text(
                                                                'Enviar Alerta',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    } else {
                                                      return Icon(
                                                        Icons.price_check_sharp,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        size: 24.0,
                                                      );
                                                    }
                                                  },
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ].divide(SizedBox(height: 32.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                    decoration: BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.commonAppBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CommonAppBarWidget(
                        name: 'Cotações',
                        color: false,
                        iconExtra: true,
                        novaacao: () async {
                          context.goNamed(HomeRestauranteWidget.routeName);
                        },
                        actionicon: () async {
                          scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
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
                                    text: 'Não Comprados',
                                  ),
                                  Tab(
                                    text: 'Comprados',
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
                                          padding: EdgeInsets.all(12.0),
                                          child: Builder(
                                            builder: (context) {
                                              final cotacoes =
                                                  cotacaoListaVwDetalhesItensSolicitadosRowList
                                                      .where(
                                                          (e) => !e.comprado!)
                                                      .toList()
                                                      .sortedList(
                                                          keyOf: (e) =>
                                                              e.categoriaId!,
                                                          desc: false)
                                                      .toList();
                                              if (cotacoes.isEmpty) {
                                                return EmptyListWidget(
                                                  titulo:
                                                      'Melhores peços escolhidos!!',
                                                  texto:
                                                      'Parabéns cotaçnao finalisada agora é só enviar os pedidos aso vendedores!!!!',
                                                  confirmacao: true,
                                                  espera: false,
                                                );
                                              }

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
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        CotacaoProdutoWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'produto':
                                                              serializeParam(
                                                            cotacoesItem,
                                                            ParamType
                                                                .SupabaseRow,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 1.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Container(
                                                        width: 100.0,
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child:
                                                              ProdutocotacaoWidget(
                                                            key: Key(
                                                                'Keymaz_${cotacoesIndex}_of_${cotacoes.length}'),
                                                            produtocomprador:
                                                                cotacoesItem,
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
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Builder(
                                            builder: (context) {
                                              final itens =
                                                  cotacaoListaVwDetalhesItensSolicitadosRowList
                                                      .where((e) => e.comprado!)
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
                                                itemCount: itens.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 12.0),
                                                itemBuilder:
                                                    (context, itensIndex) {
                                                  final itensItem =
                                                      itens[itensIndex];
                                                  return FutureBuilder<
                                                      List<
                                                          VwDetalhesPedidoRow>>(
                                                    future:
                                                        VwDetalhesPedidoTable()
                                                            .queryRows(
                                                      queryFn: (q) =>
                                                          q.eqOrNull(
                                                        'item_solicitado_id',
                                                        itensItem
                                                            .itemSolicitadoId,
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<VwDetalhesPedidoRow>
                                                          containerVwDetalhesPedidoRowList =
                                                          snapshot.data!;

                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            InkWell(
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
                                                                  CotacaoProdutoWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'produto':
                                                                        serializeParam(
                                                                      itensItem,
                                                                      ParamType
                                                                          .SupabaseRow,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
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
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFFAFFFAF),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            8.0),
                                                                    child:
                                                                        ProdutocotacaoWidget(
                                                                      key: Key(
                                                                          'Key9kx_${itensIndex}_of_${itens.length}'),
                                                                      produtocomprador:
                                                                          itensItem,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                final pedidos =
                                                                    containerVwDetalhesPedidoRowList
                                                                        .toList();

                                                                return ListView
                                                                    .separated(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  primary:
                                                                      false,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      pedidos
                                                                          .length,
                                                                  separatorBuilder: (_,
                                                                          __) =>
                                                                      SizedBox(
                                                                          height:
                                                                              8.0),
                                                                  itemBuilder:
                                                                      (context,
                                                                          pedidosIndex) {
                                                                    final pedidosItem =
                                                                        pedidos[
                                                                            pedidosIndex];
                                                                    return Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          if (pedidosItem
                                                                              .pedidoEnviado!) {
                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                              SnackBar(
                                                                                content: Text(
                                                                                  'Pedido Enviado! impossível alterar',
                                                                                  style: TextStyle(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                ),
                                                                                duration: Duration(milliseconds: 4000),
                                                                                backgroundColor: FlutterFlowTheme.of(context).tertiary,
                                                                              ),
                                                                            );
                                                                          } else {
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: BsEditaPedidoWidget(
                                                                                    pedido: pedidosItem,
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          }
                                                                        },
                                                                        child:
                                                                            PedidoComponentWidget(
                                                                          key: Key(
                                                                              'Keyl9t_${pedidosIndex}_of_${pedidos.length}'),
                                                                          mostraLogo:
                                                                              true,
                                                                          pedido:
                                                                              pedidosItem,
                                                                          pedidoENviado:
                                                                              pedidosItem.pedidoEnviado,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 8.0)),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
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
