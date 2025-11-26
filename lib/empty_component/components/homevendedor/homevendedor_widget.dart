import '/auth/base_auth_user_provider.dart';
import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/bs_corrigecotacao/bs_corrigecotacao_widget.dart';
import '/listas/components/produtos/catalogovendedor_erro/catalogovendedor_erro_widget.dart';
import '/listas/empty_list/empty_list_widget.dart';
import '/listas/restaurantes/restaurantes_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'homevendedor_model.dart';
export 'homevendedor_model.dart';

class HomevendedorWidget extends StatefulWidget {
  const HomevendedorWidget({super.key});

  @override
  State<HomevendedorWidget> createState() => _HomevendedorWidgetState();
}

class _HomevendedorWidgetState extends State<HomevendedorWidget>
    with TickerProviderStateMixin {
  late HomevendedorModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomevendedorModel());

    animationsMap.addAll({
      'listViewOnPageLoadAnimation': AnimationInfo(
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
      'wrapOnPageLoadAnimation': AnimationInfo(
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

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 63.0, 20.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(200.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      FFAppState().vendedroe.fotoUrl,
                      'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/varanda/Design_sem_nome_(3).png',
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Bem Vindo',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'BANGERS',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                      Text(
                        valueOrDefault<String>(
                          FFAppState().vendedroe.nome,
                          'nome',
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(TutoriaisWidget.routeName);
                        },
                        child: Text(
                          valueOrDefault<String>(
                            FFAppState().vendedroe.nomeEmpresa,
                            'empresa',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.iconeTutorialModel,
                updateCallback: () => safeSetState(() {}),
                child: IconeTutorialWidget(
                  tutorial: 'Vendas',
                  ordem: 1,
                  nome: 'Começar',
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: FutureBuilder<List<VwOfertasComAlertaRow>>(
            future: VwOfertasComAlertaTable().queryRows(
              queryFn: (q) => q.eqOrNull(
                'vendedor_id',
                FFAppState().vendedroe.id,
              ),
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
              List<VwOfertasComAlertaRow> containerVwOfertasComAlertaRowList =
                  snapshot.data!;

              return Container(
                decoration: BoxDecoration(),
                child: FutureBuilder<List<VwRestaurantesDoVendedorRow>>(
                  future: VwRestaurantesDoVendedorTable().queryRows(
                    queryFn: (q) => q
                        .eqOrNull(
                          'vendedor_id',
                          FFAppState().vendedroe.id,
                        )
                        .eqOrNull(
                          'situacao',
                          'inativa',
                        ),
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
                    List<VwRestaurantesDoVendedorRow>
                        containerVwRestaurantesDoVendedorRowList =
                        snapshot.data!;

                    return Container(
                      decoration: BoxDecoration(),
                      child: ListView(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          12.0,
                          0,
                          12.0,
                        ),
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Convites Pendentes',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  'Ver Todos',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .black40,
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 16.0),
                            child: Builder(
                              builder: (context) {
                                final pedidos =
                                    containerVwRestaurantesDoVendedorRowList
                                        .toList();
                                if (pedidos.isEmpty) {
                                  return Container(
                                    height: 160.0,
                                    child: EmptyListWidget(
                                      titulo: 'Sem convites!',
                                      texto:
                                          'Você não possui convites pendentes',
                                      confirmacao: true,
                                      espera: false,
                                    ),
                                  );
                                }

                                return ListView.separated(
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    28.0,
                                    0,
                                    24.0,
                                  ),
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: pedidos.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 12.0),
                                  itemBuilder: (context, pedidosIndex) {
                                    final pedidosItem = pedidos[pedidosIndex];
                                    return Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            810.0) {
                                          return ((MediaQuery.sizeOf(context)
                                                      .width -
                                                  56) *
                                              1 /
                                              2);
                                        } else if ((MediaQuery.sizeOf(context)
                                                    .width <=
                                                810.0) &&
                                            (MediaQuery.sizeOf(context).width >=
                                                1280.0)) {
                                          return ((MediaQuery.sizeOf(context)
                                                      .width -
                                                  88) *
                                              1 /
                                              4);
                                        } else {
                                          return ((MediaQuery.sizeOf(context)
                                                      .width -
                                                  152) *
                                              1 /
                                              8);
                                        }
                                      }(),
                                      decoration: BoxDecoration(),
                                      child: Container(
                                        height: 200.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: RestaurantesWidget(
                                          key: Key(
                                              'Keysbn_${pedidosIndex}_of_${pedidos.length}'),
                                          restaurante: pedidosItem,
                                        ),
                                      ),
                                    );
                                  },
                                ).animateOnPageLoad(animationsMap[
                                    'listViewOnPageLoadAnimation']!);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 12.0, 20.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Erros de cadastro de produtos',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  'Ver Todos',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .black40,
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final produtopscomerro =
                                    containerVwOfertasComAlertaRowList.toList();
                                if (produtopscomerro.isEmpty) {
                                  return Container(
                                    height: 220.0,
                                    child: EmptyListWidget(
                                      titulo: 'Nenhum erro reportado!',
                                      texto:
                                          'Parabéns!!! Você não tem nenhum item com erros de cadstro até o momento!!!',
                                      confirmacao: true,
                                      espera: false,
                                    ),
                                  );
                                }

                                return ListView.separated(
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    28.0,
                                    0,
                                    24.0,
                                  ),
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: produtopscomerro.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 12.0),
                                  itemBuilder:
                                      (context, produtopscomerroIndex) {
                                    final produtopscomerroItem =
                                        produtopscomerro[produtopscomerroIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: BsCorrigecotacaoWidget(
                                                cotacao: produtopscomerroItem,
                                                itemSolicitacaoIdAtual: 0,
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, -1.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: CatalogovendedorErroWidget(
                                              key: Key(
                                                  'Keyyit_${produtopscomerroIndex}_of_${produtopscomerro.length}'),
                                              produto: produtopscomerroItem,
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
                          if (!loggedIn)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Vegetable',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        FruitPageWidget.routeName,
                                        queryParameters: {
                                          'name': serializeParam(
                                            'Fruits',
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Text(
                                      'View all',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .black40,
                                            fontSize: 17.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (!loggedIn)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 16.0, 20.0, 16.0),
                              child: Builder(
                                builder: (context) {
                                  final fruitDataData = FFAppState()
                                      .cateList
                                      .toList()
                                      .take(2)
                                      .toList();

                                  return Wrap(
                                    spacing: 16.0,
                                    runSpacing: 16.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children:
                                        List.generate(fruitDataData.length,
                                            (fruitDataDataIndex) {
                                      final fruitDataDataItem =
                                          fruitDataData[fruitDataDataIndex];
                                      return Container(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              810.0) {
                                            return ((MediaQuery.sizeOf(context)
                                                        .width -
                                                    56) *
                                                1 /
                                                2);
                                          } else if ((MediaQuery.sizeOf(context)
                                                      .width <=
                                                  810.0) &&
                                              (MediaQuery.sizeOf(context)
                                                      .width >=
                                                  1280.0)) {
                                            return ((MediaQuery.sizeOf(context)
                                                        .width -
                                                    88) *
                                                1 /
                                                4);
                                          } else {
                                            return ((MediaQuery.sizeOf(context)
                                                        .width -
                                                    152) *
                                                1 /
                                                8);
                                          }
                                        }(),
                                        decoration: BoxDecoration(),
                                      );
                                    }),
                                  ).animateOnPageLoad(animationsMap[
                                      'wrapOnPageLoadAnimation']!);
                                },
                              ),
                            ),
                          if (!loggedIn)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Fruits',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'View all',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .black40,
                                          fontSize: 17.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          if (!loggedIn)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Deodorants',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'View all',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .black40,
                                          fontSize: 17.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          if (!loggedIn)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Masalas',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        MasalaPageWidget.routeName,
                                        queryParameters: {
                                          'name': serializeParam(
                                            'Masalas',
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Text(
                                      'View all',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .black40,
                                            fontSize: 17.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
