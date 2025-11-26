import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/components/pedido_component_widget.dart';
import '/dialog_component/dilog_box/dilog_box_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/listas/bs_meios_de_pagamento/bs_meios_de_pagamento_widget.dart';
import '/listas/components/bs_edita_pedido/bs_edita_pedido_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pedido_detalhes_model.dart';
export 'pedido_detalhes_model.dart';

class PedidoDetalhesWidget extends StatefulWidget {
  const PedidoDetalhesWidget({
    super.key,
    required this.pediddo,
  });

  final VwDashboardPedidosRow? pediddo;

  static String routeName = 'pedidoDetalhes';
  static String routePath = 'pedidoDetalhes';

  @override
  State<PedidoDetalhesWidget> createState() => _PedidoDetalhesWidgetState();
}

class _PedidoDetalhesWidgetState extends State<PedidoDetalhesWidget>
    with TickerProviderStateMixin {
  late PedidoDetalhesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PedidoDetalhesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.data = widget.pediddo?.dataEntrega;
      _model.linkPedido = widget.pediddo?.pdfUrl;
      _model.pedidoEnviado = widget.pediddo!.foiEnviado!;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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

    return FutureBuilder<List<VwDetalhesPedidoRow>>(
      future: VwDetalhesPedidoTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'pedido_id',
          widget.pediddo?.pedidoId,
        ),
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
        List<VwDetalhesPedidoRow> pedidoDetalhesVwDetalhesPedidoRowList =
            snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).lightGray,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.commonAppBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CommonAppBarWidget(
                      name: 'Pedido',
                      color: false,
                      iconExtra: false,
                      novaacao: () async {
                        if (FFAppState().isRestaurante) {
                          context.pushNamed(HomeRestauranteWidget.routeName);
                        } else {
                          context.pushNamed(HomeVendedorWidget.routeName);
                        }
                      },
                      actionicon: () async {},
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        16.0,
                        0,
                        16.0,
                      ),
                      primary: false,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 16.0),
                          child: Container(
                            width: double.infinity,
                            height: 97.01,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Pedido ID :',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  '#${valueOrDefault<String>(
                                                    widget.pediddo?.pedidoId
                                                        ?.toString(),
                                                    '01',
                                                  )}',
                                                  '01',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AutoSizeText(
                                                  'Validade das ofertas: ${widget.pediddo?.dataEntrega?.toString()}',
                                                  minFontSize: 11.0,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Satoshi',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black40,
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                                AutoSizeText(
                                                  'Data de envio: 12/04/2025 18:34',
                                                  minFontSize: 11.0,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Satoshi',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black40,
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x19FEB600),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 3.0, 16.0, 3.0),
                                        child: Text(
                                          'Pending',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color: Color(0xFFFEB600),
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            if (FFAppState().isRestaurante) {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Vendedor',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Satoshi',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 16.0, 20.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          200.0),
                                                  child: Image.network(
                                                    FFAppState()
                                                            .esconderfornecedor
                                                        ? 'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/superlista.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL3N1cGVybGlzdGEucG5nIiwiaWF0IjoxNzU0MzI4NjIzLCJleHAiOjUyNTQ4MjQ2MjN9.mgUcA4EHRYLjuEzPrt9BQy_GUHDIRoA8Wh_1MjYieEI'
                                                        : valueOrDefault<
                                                            String>(
                                                            widget.pediddo
                                                                ?.fotoVendedorUrl,
                                                            'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/superlista.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL3N1cGVybGlzdGEucG5nIiwiaWF0IjoxNzU0MzI4NjIzLCJleHAiOjUyNTQ4MjQ2MjN9.mgUcA4EHRYLjuEzPrt9BQy_GUHDIRoA8Wh_1MjYieEI',
                                                          ),
                                                    width: 40.0,
                                                    height: 40.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                                  .esconderfornecedor
                                                              ? 'Fornecedor Super Lista'
                                                              : valueOrDefault<
                                                                  String>(
                                                                  widget
                                                                      .pediddo
                                                                      ?.nomeEmpresa,
                                                                  'Fornecedor',
                                                                ),
                                                          'Fornecedor Super Lista',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Satoshi',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      17.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
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
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                                  .esconderfornecedor
                                                              ? 'vendedor'
                                                              : valueOrDefault<
                                                                  String>(
                                                                  widget
                                                                      .pediddo
                                                                      ?.nomeVendedor,
                                                                  'Vendedor',
                                                                ),
                                                          'Vendedor',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Satoshi',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      17.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 1.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await launchURL(
                                                            'https://wa.me/55${widget.pediddo?.telefoneVendedor}');
                                                      },
                                                      child: Icon(
                                                        Icons.call_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Forma de pagamento',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: InkWell(
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
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      context)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  BsMeiosDePagamentoWidget(
                                                                meiosPagamento:
                                                                    'modalidade',
                                                                pedidoId: widget
                                                                    .pediddo!
                                                                    .pedidoId!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() =>
                                                              _model.modalidade =
                                                                  value));

                                                      _model.pagamento =
                                                          _model.modalidade;
                                                      safeSetState(() {});

                                                      safeSetState(() {});
                                                    },
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .pencilAlt,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                _model.pagamento,
                                                'Boleto',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Satoshi',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black40,
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Prazo',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: InkWell(
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
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      context)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  BsMeiosDePagamentoWidget(
                                                                meiosPagamento:
                                                                    'prazo',
                                                                pedidoId: widget
                                                                    .pediddo!
                                                                    .pedidoId!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() =>
                                                              _model.prazoBs =
                                                                  value));

                                                      _model.prazo =
                                                          _model.prazoBs;
                                                      safeSetState(() {});

                                                      safeSetState(() {});
                                                    },
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .pencilAlt,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                _model.prazo,
                                                'À Vista',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Satoshi',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black40,
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    final _datePicked1Date =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          getCurrentTimestamp,
                                                      firstDate:
                                                          getCurrentTimestamp,
                                                      lastDate: DateTime(2050),
                                                      builder:
                                                          (context, child) {
                                                        return wrapInMaterialDatePickerTheme(
                                                          context,
                                                          child!,
                                                          headerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          headerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                          headerTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineLargeFamily,
                                                                    fontSize:
                                                                        32.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .headlineLargeIsCustom,
                                                                  ),
                                                          pickerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          pickerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          selectedDateTimeBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          selectedDateTimeForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                          actionButtonForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          iconSize: 24.0,
                                                        );
                                                      },
                                                    );

                                                    TimeOfDay? _datePicked1Time;
                                                    if (_datePicked1Date !=
                                                        null) {
                                                      _datePicked1Time =
                                                          await showTimePicker(
                                                        context: context,
                                                        initialTime: TimeOfDay
                                                            .fromDateTime(
                                                                getCurrentTimestamp),
                                                        builder:
                                                            (context, child) {
                                                          return wrapInMaterialTimePickerTheme(
                                                            context,
                                                            child!,
                                                            headerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            headerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            headerTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineLargeFamily,
                                                                      fontSize:
                                                                          32.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .headlineLargeIsCustom,
                                                                    ),
                                                            pickerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            pickerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            selectedDateTimeBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            selectedDateTimeForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            actionButtonForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            iconSize: 24.0,
                                                          );
                                                        },
                                                      );
                                                    }

                                                    if (_datePicked1Date !=
                                                            null &&
                                                        _datePicked1Time !=
                                                            null) {
                                                      safeSetState(() {
                                                        _model.datePicked1 =
                                                            DateTime(
                                                          _datePicked1Date.year,
                                                          _datePicked1Date
                                                              .month,
                                                          _datePicked1Date.day,
                                                          _datePicked1Time!
                                                              .hour,
                                                          _datePicked1Time
                                                              .minute,
                                                        );
                                                      });
                                                    } else if (_model
                                                            .datePicked1 !=
                                                        null) {
                                                      safeSetState(() {
                                                        _model.datePicked1 =
                                                            getCurrentTimestamp;
                                                      });
                                                    }
                                                    await PedidosTable().update(
                                                      data: {
                                                        'data_entrega':
                                                            supaSerialize<
                                                                    DateTime>(
                                                                _model
                                                                    .datePicked1),
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
                                                        widget
                                                            .pediddo?.pedidoId,
                                                      ),
                                                    );
                                                    _model.data =
                                                        _model.datePicked1;
                                                    safeSetState(() {});
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.calendar_month,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          size: 30.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Data e horário da entrega',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Satoshi',
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  _model.data != null
                                                      ? dateTimeFormat(
                                                          "dd/MM/yyyy HH:mm",
                                                          _model.data,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        )
                                                      : 'Escolha uma data',
                                                  'Escolha uma data',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black40,
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation1']!),
                                  ),
                                ],
                              );
                            } else {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Cliente',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Satoshi',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 16.0, 20.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          200.0),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      widget.pediddo
                                                          ?.fotoRestauranteUrl,
                                                      'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/Design_sem_nome_(3).png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL0Rlc2lnbl9zZW1fbm9tZV8oMykucG5nIiwiaWF0IjoxNzUzNDY0MTYxLCJleHAiOjUyNTM5NjAxNjF9.GV_K8SjtL3G4Y5A4ai36tNVhGnnpMKJLrQ_EgtbeVJM',
                                                    ),
                                                    width: 40.0,
                                                    height: 40.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      widget.pediddo
                                                          ?.nomeRestaurante,
                                                      'restaurante',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 1.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await launchURL(
                                                            'https://wa.me/55${widget.pediddo?.telefoneRestaurante}');
                                                      },
                                                      child: Icon(
                                                        Icons.call_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Forma de pagamento',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: InkWell(
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
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      context)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  BsMeiosDePagamentoWidget(
                                                                meiosPagamento:
                                                                    'modalidade',
                                                                pedidoId: widget
                                                                    .pediddo!
                                                                    .pedidoId!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() =>
                                                              _model.modalidaderestaurante =
                                                                  value));

                                                      _model.pagamento = _model
                                                          .modalidaderestaurante;
                                                      safeSetState(() {});

                                                      safeSetState(() {});
                                                    },
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .pencilAlt,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                widget.pediddo
                                                    ?.modalidadePagamento,
                                                'Não Informado',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Satoshi',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black40,
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Prazo',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: InkWell(
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
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      context)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  BsMeiosDePagamentoWidget(
                                                                meiosPagamento:
                                                                    'prazo',
                                                                pedidoId: widget
                                                                    .pediddo!
                                                                    .pedidoId!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() =>
                                                              _model.prazoRestaurnte =
                                                                  value));

                                                      _model.pagamento = _model
                                                          .prazoRestaurnte;
                                                      safeSetState(() {});

                                                      safeSetState(() {});
                                                    },
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .pencilAlt,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                widget.pediddo?.prazoPagamento,
                                                'Não Informado',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Satoshi',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black40,
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    final _datePicked2Date =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          getCurrentTimestamp,
                                                      firstDate:
                                                          getCurrentTimestamp,
                                                      lastDate: DateTime(2050),
                                                      builder:
                                                          (context, child) {
                                                        return wrapInMaterialDatePickerTheme(
                                                          context,
                                                          child!,
                                                          headerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          headerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                          headerTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineLargeFamily,
                                                                    fontSize:
                                                                        32.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .headlineLargeIsCustom,
                                                                  ),
                                                          pickerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          pickerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          selectedDateTimeBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          selectedDateTimeForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                          actionButtonForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          iconSize: 24.0,
                                                        );
                                                      },
                                                    );

                                                    TimeOfDay? _datePicked2Time;
                                                    if (_datePicked2Date !=
                                                        null) {
                                                      _datePicked2Time =
                                                          await showTimePicker(
                                                        context: context,
                                                        initialTime: TimeOfDay
                                                            .fromDateTime(
                                                                getCurrentTimestamp),
                                                        builder:
                                                            (context, child) {
                                                          return wrapInMaterialTimePickerTheme(
                                                            context,
                                                            child!,
                                                            headerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            headerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            headerTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineLargeFamily,
                                                                      fontSize:
                                                                          32.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .headlineLargeIsCustom,
                                                                    ),
                                                            pickerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            pickerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            selectedDateTimeBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            selectedDateTimeForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            actionButtonForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            iconSize: 24.0,
                                                          );
                                                        },
                                                      );
                                                    }

                                                    if (_datePicked2Date !=
                                                            null &&
                                                        _datePicked2Time !=
                                                            null) {
                                                      safeSetState(() {
                                                        _model.datePicked2 =
                                                            DateTime(
                                                          _datePicked2Date.year,
                                                          _datePicked2Date
                                                              .month,
                                                          _datePicked2Date.day,
                                                          _datePicked2Time!
                                                              .hour,
                                                          _datePicked2Time
                                                              .minute,
                                                        );
                                                      });
                                                    } else if (_model
                                                            .datePicked2 !=
                                                        null) {
                                                      safeSetState(() {
                                                        _model.datePicked2 =
                                                            getCurrentTimestamp;
                                                      });
                                                    }
                                                    await PedidosTable().update(
                                                      data: {
                                                        'data_entrega':
                                                            supaSerialize<
                                                                    DateTime>(
                                                                _model
                                                                    .datePicked2),
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
                                                        widget
                                                            .pediddo?.pedidoId,
                                                      ),
                                                    );
                                                    _model.data =
                                                        _model.datePicked2;
                                                    safeSetState(() {});
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.calendar_month,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          size: 30.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Data e horário da entrega',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Satoshi',
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  _model.data != null
                                                      ? dateTimeFormat(
                                                          "dd/MM/yyyy HH:mm",
                                                          _model.data,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        )
                                                      : 'Escolha uma data',
                                                  'Escolha uma data',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black40,
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation2']!),
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 24.0, 0.0, 16.0),
                          child: Text(
                            'Resumo da compra',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(16.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sub total',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .black40,
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            widget.pediddo?.valorTotal,
                                            'R\$ 0,00',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Descontos',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .black40,
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          '-R\$ 0,00',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Imposto',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .black40,
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          '+R\$  0,00',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Frete',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .black40,
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          '+R\$  0,00',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).black40,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Valor total a pagar',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        FutureBuilder<
                                            List<VwDetalhesPedidoRow>>(
                                          future:
                                              VwDetalhesPedidoTable().queryRows(
                                            queryFn: (q) => q.eqOrNull(
                                              'pedido_id',
                                              widget.pediddo?.pedidoId,
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<VwDetalhesPedidoRow>
                                                textVwDetalhesPedidoRowList =
                                                snapshot.data!;

                                            return Text(
                                              valueOrDefault<String>(
                                                widget.pediddo?.valorTotal,
                                                'R\$ 0,00',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Satoshi',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 12.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.iconeTutorialModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: IconeTutorialWidget(
                                  tutorial: 'Vendas',
                                  ordem: 8,
                                  nome: 'Cortar',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final pedidos =
                                pedidoDetalhesVwDetalhesPedidoRowList.toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: pedidos.length,
                              itemBuilder: (context, pedidosIndex) {
                                final pedidosItem = pedidos[pedidosIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 24.0, 20.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (!widget.pediddo!.foiEnviado!) {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: BsEditaPedidoWidget(
                                                    pedido: pedidosItem,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        }
                                      },
                                      child: PedidoComponentWidget(
                                        key: Key(
                                            'Key83h_${pedidosIndex}_of_${pedidos.length}'),
                                        pedido: pedidosItem,
                                        mostraLogo: false,
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation3']!),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      if (FFAppState().isRestaurante) {
                        return Builder(
                          builder: (context) {
                            if (!_model.pedidoEnviado) {
                              return Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 8.0, 20.0, 32.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (functions.cifraoToDOuble(
                                              valueOrDefault<String>(
                                            widget.pediddo?.valorTotal,
                                            '0',
                                          ))! >
                                          valueOrDefault<double>(
                                            widget.pediddo?.compraMinima,
                                            0.0,
                                          )) {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: DilogBoxWidget(
                                                  titulo: 'Enviar Cotação!',
                                                  testo:
                                                      'Deseja finalizar o pedido e enviar a cotação ao vendedor. Um aqruivo do pedido será enviado.',
                                                  confima: 'Sim',
                                                  recusa: 'Não',
                                                  actionConfirm: () async {
                                                    _model.apiResult7bb =
                                                        await EdgeFunctionsGroup
                                                            .gerarEEnviarPedidoCall
                                                            .call(
                                                      pPedidoId: widget
                                                          .pediddo?.pedidoId,
                                                      token: currentJwtToken,
                                                    );

                                                    if ((_model.apiResult7bb
                                                            ?.succeeded ??
                                                        true)) {
                                                      await Future.delayed(
                                                        Duration(
                                                          milliseconds: 1000,
                                                        ),
                                                      );
                                                      _model.linkPedido =
                                                          EdgeFunctionsGroup
                                                              .gerarEEnviarPedidoCall
                                                              .link(
                                                        (_model.apiResult7bb
                                                                ?.jsonBody ??
                                                            ''),
                                                      );
                                                      _model.pedidoEnviado =
                                                          true;
                                                      safeSetState(() {});
                                                      Navigator.pop(context);
                                                      await launchURL(
                                                          EdgeFunctionsGroup
                                                              .gerarEEnviarPedidoCall
                                                              .link(
                                                        (_model.apiResult7bb
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!);
                                                    }
                                                  },
                                                  actionRecusa: () async {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: DilogBoxWidget(
                                                  titulo:
                                                      'Fora do pedido mínimo!!!!',
                                                  testo:
                                                      'Voccê não atigiu o valor mínimo para pedido. Tem certeza que deseja enviar  ele mesmo assim? Ele pode não ser entregue. Caso seja um adendo a um outro pedido  deste mesmo vendedor desconsidere esta mensagem.',
                                                  confima: 'Sim',
                                                  recusa: 'Não',
                                                  actionConfirm: () async {
                                                    Navigator.pop(context);
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child:
                                                                DilogBoxWidget(
                                                              titulo:
                                                                  'Enviar Cotação!',
                                                              testo:
                                                                  'Deseja finalizar o pedido e enviar a cotação ao vendedor. Um aqruivo do pedido será enviado.',
                                                              confima: 'Sim',
                                                              recusa: 'Não',
                                                              actionConfirm:
                                                                  () async {
                                                                _model.apiResult7bbb =
                                                                    await EdgeFunctionsGroup
                                                                        .gerarEEnviarPedidoCall
                                                                        .call(
                                                                  pPedidoId: widget
                                                                      .pediddo
                                                                      ?.pedidoId,
                                                                  token:
                                                                      currentJwtToken,
                                                                );

                                                                if ((_model
                                                                        .apiResult7bbb
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  await Future
                                                                      .delayed(
                                                                    Duration(
                                                                      milliseconds:
                                                                          1000,
                                                                    ),
                                                                  );
                                                                  _model.linkPedido =
                                                                      EdgeFunctionsGroup
                                                                          .gerarEEnviarPedidoCall
                                                                          .link(
                                                                    (_model.apiResult7bbb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  );
                                                                  _model.pedidoEnviado =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  Navigator.pop(
                                                                      context);
                                                                  await launchURL(
                                                                      EdgeFunctionsGroup
                                                                          .gerarEEnviarPedidoCall
                                                                          .link(
                                                                    (_model.apiResult7bb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!);
                                                                }
                                                              },
                                                              actionRecusa:
                                                                  () async {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  actionRecusa: () async {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                    text: 'Enviar Pedido',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 56.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 15.0, 12.0, 15.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    showLoadingIndicator: false,
                                  ),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 16.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(_model.linkPedido!);
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.filePdf,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 45.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Ver Pedido',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 34.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.iconeTutorialModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: IconeTutorialWidget(
                                            tutorial: 'Pedidos',
                                            ordem: 2,
                                            nome: 'Alterar',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                          },
                        );
                      } else {
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 16.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await launchURL(_model.linkPedido!);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.filePdf,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 35.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Ver Pedido',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Satoshi',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            if (widget.pediddo?.status != 'feito')
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.apiResult9fn = await FuncoesRpcGroup
                                      .marcarPedidoFeitoCall
                                      .call(
                                    pPedidoId: widget.pediddo?.pedidoId,
                                    token: currentJwtToken,
                                  );

                                  if ((_model.apiResult9fn?.succeeded ??
                                      true)) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Pedido Finalizado com sucesso!!!!',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                    );
                                  }

                                  safeSetState(() {});
                                },
                                text: 'Pedido Feito',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                          ],
                        );
                      }
                    },
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
