import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/status/status_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'lista_pedidos_restautante_model.dart';
export 'lista_pedidos_restautante_model.dart';

class ListaPedidosRestautanteWidget extends StatefulWidget {
  const ListaPedidosRestautanteWidget({super.key});

  @override
  State<ListaPedidosRestautanteWidget> createState() =>
      _ListaPedidosRestautanteWidgetState();
}

class _ListaPedidosRestautanteWidgetState
    extends State<ListaPedidosRestautanteWidget> with TickerProviderStateMixin {
  late ListaPedidosRestautanteModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaPedidosRestautanteModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
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
    });

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

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: FutureBuilder<List<VwDashboardPedidosRow>>(
        future: VwDashboardPedidosTable().queryRows(
          queryFn: (q) => q
              .eqOrNull(
                'restaurante_id',
                FFAppState().restaurante.id,
              )
              .order('criado_em'),
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
          List<VwDashboardPedidosRow> containerVwDashboardPedidosRowList =
              snapshot.data!;

          return Container(
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 22.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pedidos',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Satoshi',
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation']!),
                        wrapWithModel(
                          model: _model.iconeTutorialModel,
                          updateCallback: () => safeSetState(() {}),
                          child: IconeTutorialWidget(
                            tutorial: 'Pedidos',
                            ordem: 1,
                            nome: 'Enviar Pedido',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final pedidos =
                          containerVwDashboardPedidosRowList.toList();

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
                                20.0, 0.0, 20.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      PedidoDetalhesWidget.routeName,
                                      queryParameters: {
                                        'pediddo': serializeParam(
                                          pedidosItem,
                                          ParamType.SupabaseRow,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: functions.cifraoToDOuble(
                                                  valueOrDefault<String>(
                                                pedidosItem.valorTotal,
                                                '0',
                                              ))! <
                                              valueOrDefault<double>(
                                                pedidosItem.compraMinima,
                                                0.0,
                                              )
                                          ? Color(0x5FFFA8A8)
                                          : FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 84.0,
                                            height: 84.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lightGray,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                FFAppState().esconderfornecedor
                                                    ? 'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/superlista.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL3N1cGVybGlzdGEucG5nIiwiaWF0IjoxNzU0MzI4NjIzLCJleHAiOjUyNTQ4MjQ2MjN9.mgUcA4EHRYLjuEzPrt9BQy_GUHDIRoA8Wh_1MjYieEI'
                                                    : valueOrDefault<String>(
                                                        pedidosItem
                                                            .fotoVendedorUrl,
                                                        'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/superlista.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL3N1cGVybGlzdGEucG5nIiwiaWF0IjoxNzU0MzI4NjIzLCJleHAiOjUyNTQ4MjQ2MjN9.mgUcA4EHRYLjuEzPrt9BQy_GUHDIRoA8Wh_1MjYieEI',
                                                      ),
                                                width: 56.0,
                                                height: 56.0,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Cotação: ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        dateTimeFormat(
                                                          "dd/MM/yyyy",
                                                          pedidosItem.criadoEm,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        '28/06/23',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                    .esconderfornecedor
                                                                ? 'Vendedor'
                                                                : valueOrDefault<
                                                                    String>(
                                                                    pedidosItem
                                                                        .nomeVendedor,
                                                                    'Vendedor',
                                                                  ),
                                                            'Vendedor',
                                                          ),
                                                          maxLines: 1,
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
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                    .esconderfornecedor
                                                                ? 'R\$ 1000,00'
                                                                : valueOrDefault<
                                                                    String>(
                                                                    pedidosItem
                                                                        .valorTotal,
                                                                    '0',
                                                                  ),
                                                            'R\$ 0,00',
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Satoshi',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 17.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                        Text(
                                                          'Total de itens: ${valueOrDefault<String>(
                                                            pedidosItem
                                                                .numeroDeProdutosEscolhidos
                                                                ?.toString(),
                                                            '0',
                                                          )}',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Satoshi',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 17.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 4.0)),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Container(
                                                                height: 50.0,
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    StatusWidget(
                                                                      key: Key(
                                                                          'Keyjfe_${pedidosIndex}_of_${pedidos.length}'),
                                                                      vermelho:
                                                                          'cancelado',
                                                                      azul:
                                                                          'feito',
                                                                      verde:
                                                                          'enviado',
                                                                      amarelo:
                                                                          'rascunho',
                                                                      status: pedidosItem
                                                                          .status!,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                if (functions.cifraoToDOuble(
                                                        valueOrDefault<String>(
                                                      pedidosItem.valorTotal,
                                                      '0',
                                                    ))! <
                                                    valueOrDefault<double>(
                                                      pedidosItem.compraMinima,
                                                      0.0,
                                                    ))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Não Atinge Pedido Mínimo',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 16.0)),
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!),
                              ]
                                  .divide(SizedBox(height: 16.0))
                                  .addToStart(SizedBox(height: 16.0)),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ].addToStart(SizedBox(height: 16.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}
