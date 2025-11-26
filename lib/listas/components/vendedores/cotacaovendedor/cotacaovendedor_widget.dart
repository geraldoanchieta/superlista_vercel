import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/bs_iniicia_cotacao/bs_iniicia_cotacao_widget.dart';
import '/listas/empty_list/empty_list_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cotacaovendedor_model.dart';
export 'cotacaovendedor_model.dart';

class CotacaovendedorWidget extends StatefulWidget {
  const CotacaovendedorWidget({super.key});

  @override
  State<CotacaovendedorWidget> createState() => _CotacaovendedorWidgetState();
}

class _CotacaovendedorWidgetState extends State<CotacaovendedorWidget>
    with TickerProviderStateMixin {
  late CotacaovendedorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CotacaovendedorModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 2.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Olá ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        TextSpan(
                          text: valueOrDefault<String>(
                            FFAppState().vendedroe.nome,
                            'vendedor',
                          ),
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' seja bem vindo',
                          style: TextStyle(),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Text(
                    'Aqui estão as cotações em andamento',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Satoshi',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: FutureBuilder<List<VwDashboardCotacoesVendedorRow>>(
              future: VwDashboardCotacoesVendedorTable().queryRows(
                queryFn: (q) => q
                    .eqOrNull(
                      'vendedor_id',
                      FFAppState().vendedroe.id,
                    )
                    .neqOrNull(
                      'status_para_vendedor',
                      'encerrada',
                    )
                    .order('data_encerramento'),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<VwDashboardCotacoesVendedorRow>
                    tabBarVwDashboardCotacoesVendedorRowList = snapshot.data!;

                return Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        tabs: [
                          Tab(
                            text: 'Pendentes',
                          ),
                          Tab(
                            text: 'Enviadas',
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final cotacoes =
                                          tabBarVwDashboardCotacoesVendedorRowList
                                              .where((e) =>
                                                  e.statusParaVendedor ==
                                                  'pendente')
                                              .toList();
                                      if (cotacoes.isEmpty) {
                                        return Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 600.0,
                                          child: EmptyListWidget(
                                            titulo:
                                                'Sem cotações para responder',
                                            texto:
                                                'Parabéns!!! você já respondeu todas as cotações e não tem nada pendente.',
                                            confirmacao: true,
                                            espera: false,
                                          ),
                                        );
                                      }

                                      return ListView.separated(
                                        padding: EdgeInsets.fromLTRB(
                                          0,
                                          16.0,
                                          0,
                                          34.0,
                                        ),
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: cotacoes.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 12.0),
                                        itemBuilder: (context, cotacoesIndex) {
                                          final cotacoesItem =
                                              cotacoes[cotacoesIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().produtocotado = [];
                                              FFAppState().looCount = 0;
                                              safeSetState(() {});
                                              _model.cotacaoPendente =
                                                  await CotacoesTable()
                                                      .queryRows(
                                                queryFn: (q) => q
                                                    .eqOrNull(
                                                      'solicitacao_id',
                                                      cotacoesItem
                                                          .solicitacaoId,
                                                    )
                                                    .eqOrNull(
                                                      'vendedor_id',
                                                      FFAppState().vendedroe.id,
                                                    ),
                                              );
                                              if (_model
                                                      .cotacaoPendente!.length >
                                                  0) {
                                                FFAppState().cotacao =
                                                    CotacaoStruct(
                                                  id: _model.cotacaoPendente
                                                      ?.firstOrNull?.id,
                                                  solicitacaoId: _model
                                                      .cotacaoPendente
                                                      ?.firstOrNull
                                                      ?.solicitacaoId,
                                                  vendedorId: _model
                                                      .cotacaoPendente
                                                      ?.firstOrNull
                                                      ?.vendedorId,
                                                  dataEnvio: _model
                                                      .cotacaoPendente
                                                      ?.firstOrNull
                                                      ?.dataEnvio
                                                      ?.toString(),
                                                  dataValidadeProposta: _model
                                                      .cotacaoPendente
                                                      ?.firstOrNull
                                                      ?.dataValidadeProposta
                                                      .toString(),
                                                );
                                                safeSetState(() {});
                                                _model.cotadopendentes =
                                                    await ItensCotacaoTable()
                                                        .queryRows(
                                                  queryFn: (q) => q.eqOrNull(
                                                    'cotacao_id',
                                                    _model.cotacaoPendente
                                                        ?.firstOrNull?.id,
                                                  ),
                                                );
                                                while (FFAppState().looCount <
                                                    _model.cotadopendentes!
                                                        .length) {
                                                  FFAppState()
                                                      .addToProdutocotado(
                                                          ProdutoCotadoStruct(
                                                    itemSolicitacaoId: _model
                                                        .cotadosEncerrados
                                                        ?.elementAtOrNull(
                                                            FFAppState()
                                                                .looCount)
                                                        ?.itemSolicitadoId,
                                                    itemCotacaoId: _model
                                                        .cotadosEncerrados
                                                        ?.elementAtOrNull(
                                                            FFAppState()
                                                                .looCount)
                                                        ?.id,
                                                    cotacaoId: _model
                                                        .cotadosEncerrados
                                                        ?.elementAtOrNull(
                                                            FFAppState()
                                                                .looCount)
                                                        ?.cotacaoId,
                                                  ));
                                                  safeSetState(() {});
                                                  FFAppState().looCount =
                                                      FFAppState().looCount + 1;
                                                  safeSetState(() {});
                                                }

                                                context.goNamed(
                                                  CotacaoListaVendedorWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'solicitacao':
                                                        serializeParam(
                                                      cotacoesItem
                                                          .solicitacaoId,
                                                      ParamType.int,
                                                    ),
                                                    'cotacao': serializeParam(
                                                      _model.cotacaoPendente
                                                          ?.firstOrNull?.id,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                _model.restautanteVendedor =
                                                    await VwGerenciamentoVendedoresTable()
                                                        .queryRows(
                                                  queryFn: (q) => q
                                                      .eqOrNull(
                                                        'vendedor_id',
                                                        cotacoesItem.vendedorId,
                                                      )
                                                      .eqOrNull(
                                                        'restaurante_id',
                                                        cotacoesItem
                                                            .restauranteId,
                                                      ),
                                                );
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          BsIniiciaCotacaoWidget(
                                                        solicitacoaId:
                                                            cotacoesItem
                                                                .solicitacaoId!,
                                                        restautanteVendedor: _model
                                                            .restautanteVendedor!
                                                            .firstOrNull!,
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              }

                                              safeSetState(() {});
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            200.0),
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            200.0),
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        cotacoesItem
                                                                            .logoUrl,
                                                                        'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/Design_sem_nome_(3).png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL0Rlc2lnbl9zZW1fbm9tZV8oMykucG5nIiwiaWF0IjoxNzUzNTY1MTA1LCJleHAiOjUyNTQwNjExMDV9.xk7FZCQdkBXOquY5sp0iOGh3PkZFxljDWZGczVEcpW0',
                                                                      ),
                                                                      width:
                                                                          200.0,
                                                                      height:
                                                                          200.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      cotacoesItem
                                                                          .nomeFantasia,
                                                                      'Nome',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Encerramento : ',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Satoshi',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    dateTimeFormat(
                                                                      "d/M H:mm",
                                                                      cotacoesItem
                                                                          .dataEncerramento,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    '12/08 21:30',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Satoshi',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Status:',
                                                                  maxLines: 2,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Satoshi',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .black40,
                                                                        fontSize:
                                                                            17.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      cotacoesItem
                                                                          .statusParaVendedor,
                                                                      'Pendente',
                                                                    ),
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Satoshi',
                                                                          color: cotacoesItem.statusParaVendedor == 'pendente'
                                                                              ? FlutterFlowTheme.of(context).secondary
                                                                              : (cotacoesItem.statusParaVendedor == 'preenchida' ? FlutterFlowTheme.of(context).success : FlutterFlowTheme.of(context).primary),
                                                                          fontSize:
                                                                              17.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 8.0)),
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
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: Builder(
                                  builder: (context) {
                                    final cotacoes =
                                        tabBarVwDashboardCotacoesVendedorRowList
                                            .where((e) =>
                                                e.statusParaVendedor ==
                                                'preenchida')
                                            .toList();
                                    if (cotacoes.isEmpty) {
                                      return Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 600.0,
                                        child: EmptyListWidget(
                                          titulo: 'Pedidos Feitos!!!',
                                          texto:
                                              'Parabéns, todas as suas cotações já foram finalisadas e convertidas em pedidos!!!!',
                                          confirmacao: true,
                                          espera: false,
                                        ),
                                      );
                                    }

                                    return ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        16.0,
                                        0,
                                        34.0,
                                      ),
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: cotacoes.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 12.0),
                                      itemBuilder: (context, cotacoesIndex) {
                                        final cotacoesItem =
                                            cotacoes[cotacoesIndex];
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().produtocotado = [];
                                            FFAppState().looCount = 0;
                                            safeSetState(() {});
                                            _model.cotacao =
                                                await CotacoesTable().queryRows(
                                              queryFn: (q) => q.eqOrNull(
                                                'solicitacao_id',
                                                cotacoesItem.solicitacaoId,
                                              ),
                                            );
                                            if (_model.cotacao!.length > 0) {
                                              FFAppState().cotacao =
                                                  CotacaoStruct(
                                                id: _model
                                                    .cotacao?.firstOrNull?.id,
                                                solicitacaoId: _model
                                                    .cotacao
                                                    ?.firstOrNull
                                                    ?.solicitacaoId,
                                                vendedorId: _model.cotacao
                                                    ?.firstOrNull?.vendedorId,
                                                dataEnvio: _model.cotacao
                                                    ?.firstOrNull?.dataEnvio
                                                    ?.toString(),
                                                dataValidadeProposta: _model
                                                    .cotacao
                                                    ?.firstOrNull
                                                    ?.dataValidadeProposta
                                                    .toString(),
                                              );
                                              safeSetState(() {});
                                              _model.cotadosEncerrados =
                                                  await ItensCotacaoTable()
                                                      .queryRows(
                                                queryFn: (q) => q.eqOrNull(
                                                  'cotacao_id',
                                                  _model
                                                      .cotacao?.firstOrNull?.id,
                                                ),
                                              );
                                              while (FFAppState().looCount <
                                                  _model.cotacaoPendente!
                                                      .length) {
                                                FFAppState().addToProdutocotado(
                                                    ProdutoCotadoStruct(
                                                  itemSolicitacaoId: _model
                                                      .cotadosEncerrados
                                                      ?.elementAtOrNull(
                                                          FFAppState().looCount)
                                                      ?.itemSolicitadoId,
                                                  itemCotacaoId: _model
                                                      .cotadosEncerrados
                                                      ?.elementAtOrNull(
                                                          FFAppState().looCount)
                                                      ?.id,
                                                  cotacaoId: _model
                                                      .cotadosEncerrados
                                                      ?.elementAtOrNull(
                                                          FFAppState().looCount)
                                                      ?.cotacaoId,
                                                ));
                                                safeSetState(() {});
                                                FFAppState().looCount =
                                                    FFAppState().looCount + 1;
                                                safeSetState(() {});
                                              }

                                              context.goNamed(
                                                CotacaoListaVendedorWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'solicitacao': serializeParam(
                                                    cotacoesItem.solicitacaoId,
                                                    ParamType.int,
                                                  ),
                                                  'cotacao': serializeParam(
                                                    _model.cotacao?.firstOrNull
                                                        ?.id,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else {
                                              _model.restautanteVendedor2 =
                                                  await VwGerenciamentoVendedoresTable()
                                                      .queryRows(
                                                queryFn: (q) => q
                                                    .eqOrNull(
                                                      'vendedor_id',
                                                      cotacoesItem.vendedorId,
                                                    )
                                                    .eqOrNull(
                                                      'restaurante_id',
                                                      cotacoesItem
                                                          .restauranteId,
                                                    ),
                                              );
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        BsIniiciaCotacaoWidget(
                                                      solicitacoaId:
                                                          cotacoesItem
                                                              .solicitacaoId!,
                                                      restautanteVendedor: _model
                                                          .restautanteVendedor2!
                                                          .firstOrNull!,
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 60.0,
                                                                height: 60.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              200.0),
                                                                ),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              200.0),
                                                                  child: Image
                                                                      .network(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      cotacoesItem
                                                                          .logoUrl,
                                                                      'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/Design_sem_nome_(3).png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL0Rlc2lnbl9zZW1fbm9tZV8oMykucG5nIiwiaWF0IjoxNzUzNTY1MTA1LCJleHAiOjUyNTQwNjExMDV9.xk7FZCQdkBXOquY5sp0iOGh3PkZFxljDWZGczVEcpW0',
                                                                    ),
                                                                    width:
                                                                        200.0,
                                                                    height:
                                                                        200.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    cotacoesItem
                                                                        .nomeFantasia,
                                                                    'Nome',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Encerramento : ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Satoshi',
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    "d/M H:mm",
                                                                    cotacoesItem
                                                                        .dataEncerramento,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  '12/08 21:30',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Satoshi',
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 12.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Status:',
                                                                maxLines: 2,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Satoshi',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .black40,
                                                                      fontSize:
                                                                          17.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    cotacoesItem
                                                                        .statusParaVendedor,
                                                                    'Pendente',
                                                                  ),
                                                                  maxLines: 2,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Satoshi',
                                                                        color: cotacoesItem.statusParaVendedor ==
                                                                                'pendente'
                                                                            ? FlutterFlowTheme.of(context)
                                                                                .secondary
                                                                            : (cotacoesItem.statusParaVendedor == 'preenchida'
                                                                                ? FlutterFlowTheme.of(context).success
                                                                                : FlutterFlowTheme.of(context).primary),
                                                                        fontSize:
                                                                            17.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 8.0)),
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
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
