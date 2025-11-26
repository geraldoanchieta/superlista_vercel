import '/backend/supabase/supabase.dart';
import '/dialog_component/dilog_box/dilog_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/empty_list/empty_list_widget.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cotacao_model.dart';
export 'cotacao_model.dart';

class CotacaoWidget extends StatefulWidget {
  const CotacaoWidget({
    super.key,
    bool? encerradas,
  }) : this.encerradas = encerradas ?? false;

  final bool encerradas;

  @override
  State<CotacaoWidget> createState() => _CotacaoWidgetState();
}

class _CotacaoWidgetState extends State<CotacaoWidget> {
  late CotacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CotacaoModel());

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
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                0,
                12.0,
                0,
                24.0,
              ),
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cotações ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                if (!widget.encerradas)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Em andamento',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.goNamed(
                                CotaceosEncerradasRestauranteWidget.routeName);
                          },
                          child: Text(
                            'Encerradas',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (widget.encerradas)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Encerradas',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.goNamed(HomeRestauranteWidget.routeName);
                          },
                          child: Text(
                            'Em andamento',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 48.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      if (!widget.encerradas) {
                        return FutureBuilder<List<SolicitacoesCotacaoRow>>(
                          future: (_model.requestCompleter1 ??= Completer<
                                  List<SolicitacoesCotacaoRow>>()
                                ..complete(SolicitacoesCotacaoTable().queryRows(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'restaurante_id',
                                        FFAppState().restaurante.id,
                                      )
                                      .neqOrNull(
                                        'status',
                                        'encerrada',
                                      )
                                      .order('data_publicacao'),
                                )))
                              .future,
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
                            List<SolicitacoesCotacaoRow>
                                containerSolicitacoesCotacaoRowList =
                                snapshot.data!;

                            return Container(
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final cotacoes =
                                      containerSolicitacoesCotacaoRowList
                                          .toList();
                                  if (cotacoes.isEmpty) {
                                    return EmptyListWidget(
                                      titulo: 'Sem cotações ',
                                      texto:
                                          'Nenhuma cotação aberta. faça o check list e inicie uma nova cotação',
                                      confirmacao: true,
                                      espera: false,
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
                                          context.pushNamed(
                                            CotacaoListaWidget.routeName,
                                            queryParameters: {
                                              'solicitacao': serializeParam(
                                                cotacoesItem.id,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Cotação : ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            Text(
                                                              dateTimeFormat(
                                                                "dd/MM/yyyy HH:mm",
                                                                cotacoesItem
                                                                    .dataEncerramento,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Status: ',
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
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      if (cotacoesItem
                                                                              .status ==
                                                                          'aberta') {
                                                                        return Text(
                                                                          'Em Andamento',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Satoshi',
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        );
                                                                      } else if (cotacoesItem
                                                                              .status ==
                                                                          'enviada') {
                                                                        return Text(
                                                                          'Enviada',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Satoshi',
                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        );
                                                                      } else {
                                                                        return Text(
                                                                          'Encerrada',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Satoshi',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        );
                                                                      }
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        InkWell(
                                                                  splashColor:
                                                                      Colors
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
                                                                                'Finalizar cotação',
                                                                            testo:
                                                                                'Deseja marcar essa cotação como encerrada. Você poderá consultala mais tarde em cotacoes encerradas',
                                                                            confima:
                                                                                'Sim',
                                                                            recusa:
                                                                                'Não',
                                                                            actionConfirm:
                                                                                () async {
                                                                              await SolicitacoesCotacaoTable().update(
                                                                                data: {
                                                                                  'status': 'encerrada',
                                                                                },
                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                  'id',
                                                                                  cotacoesItem.id,
                                                                                ),
                                                                              );
                                                                              Navigator.pop(context);
                                                                              safeSetState(() => _model.requestCompleter1 = null);
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
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          6.0,
                                                                          8.0,
                                                                          6.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .playlist_add_check_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                        size:
                                                                            35.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 12.0)),
                                                          ),
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
                            );
                          },
                        );
                      } else {
                        return FutureBuilder<List<SolicitacoesCotacaoRow>>(
                          future: (_model.requestCompleter2 ??= Completer<
                                  List<SolicitacoesCotacaoRow>>()
                                ..complete(SolicitacoesCotacaoTable().queryRows(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'restaurante_id',
                                        FFAppState().restaurante.id,
                                      )
                                      .eqOrNull(
                                        'status',
                                        'encerrada',
                                      )
                                      .order('data_publicacao'),
                                )))
                              .future,
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
                            List<SolicitacoesCotacaoRow>
                                containerSolicitacoesCotacaoRowList =
                                snapshot.data!;

                            return Container(
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final cotacoes =
                                      containerSolicitacoesCotacaoRowList
                                          .toList();

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
                                          context.pushNamed(
                                            CotacaoListaWidget.routeName,
                                            queryParameters: {
                                              'solicitacao': serializeParam(
                                                cotacoesItem.id,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Cotação : ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            Text(
                                                              dateTimeFormat(
                                                                "dd/MM/yyyy HH:mm",
                                                                cotacoesItem
                                                                    .dataEncerramento,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Status: ',
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
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      if (cotacoesItem
                                                                              .status ==
                                                                          'aberta') {
                                                                        return Text(
                                                                          'Em Andamento',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Satoshi',
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        );
                                                                      } else if (cotacoesItem
                                                                              .status ==
                                                                          'enviada') {
                                                                        return Text(
                                                                          'Enviada',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Satoshi',
                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        );
                                                                      } else {
                                                                        return Text(
                                                                          'Encerrada',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Satoshi',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        );
                                                                      }
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        InkWell(
                                                                  splashColor:
                                                                      Colors
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
                                                                                'Finalizar cotação',
                                                                            testo:
                                                                                'Deseja marcar essa cotação como encerrada. Você poderá consultala mais tarde em cotacoes encerradas',
                                                                            confima:
                                                                                'Sim',
                                                                            recusa:
                                                                                'Não',
                                                                            actionConfirm:
                                                                                () async {
                                                                              await SolicitacoesCotacaoTable().update(
                                                                                data: {
                                                                                  'status': 'encerrada',
                                                                                },
                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                  'id',
                                                                                  cotacoesItem.id,
                                                                                ),
                                                                              );
                                                                              Navigator.pop(context);
                                                                              safeSetState(() => _model.requestCompleter2 = null);
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
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          6.0,
                                                                          8.0,
                                                                          6.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .playlist_add_check_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                        size:
                                                                            35.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 12.0)),
                                                          ),
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
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
