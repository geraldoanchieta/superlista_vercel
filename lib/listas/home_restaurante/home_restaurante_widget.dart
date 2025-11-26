import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/produtos/cchecklist/cchecklist_widget.dart';
import '/listas/components/profile_component/profile_component_widget.dart';
import '/listas/components/vendedores/vendedores_component/vendedores_component_widget.dart';
import '/listas/cotacao/cotacao_widget.dart';
import '/listas/lista_pedidos_restautante/lista_pedidos_restautante_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'home_restaurante_model.dart';
export 'home_restaurante_model.dart';

class HomeRestauranteWidget extends StatefulWidget {
  const HomeRestauranteWidget({super.key});

  static String routeName = 'homeRestaurante';
  static String routePath = 'homeRestaurante';

  @override
  State<HomeRestauranteWidget> createState() => _HomeRestauranteWidgetState();
}

class _HomeRestauranteWidgetState extends State<HomeRestauranteWidget> {
  late HomeRestauranteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeRestauranteModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState().restaurante != null)) {
        context.pushNamed(LoginPageWidget.routeName);
      }
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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).lightGray,
        floatingActionButton: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 65.0),
          child: FloatingActionButton(
            onPressed: () {
              print('FloatingActionButton pressed ...');
            },
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            elevation: 8.0,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(TutoriaisWidget.routeName);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Gemini_Generated_Image_64i5u064i5u064i5-removebg-preview.png',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  if (FFAppState().homeIndex == 0) {
                    return wrapWithModel(
                      model: _model.cchecklistModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CchecklistWidget(),
                    );
                  } else if (FFAppState().homeIndex == 1) {
                    return wrapWithModel(
                      model: _model.cotacaoModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CotacaoWidget(),
                    );
                  } else if (FFAppState().homeIndex == 2) {
                    return wrapWithModel(
                      model: _model.listaPedidosRestautanteModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ListaPedidosRestautanteWidget(),
                    );
                  } else if (FFAppState().homeIndex == 3) {
                    return wrapWithModel(
                      model: _model.profileComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ProfileComponentWidget(),
                    );
                  } else {
                    return wrapWithModel(
                      model: _model.vendedoresComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: VendedoresComponentWidget(),
                    );
                  }
                },
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15.0,
                    color: Color(0x11000000),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                    spreadRadius: 0.0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().homeIndex = 0;
                          FFAppState().update(() {});
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) {
                                if (FFAppState().homeIndex == 0) {
                                  return Container(
                                    width: 48.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.asset(
                                        'assets/images/home_fill.png',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    width: 48.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(32.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/home.png',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Text(
                              'Listas',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    color: FFAppState().homeIndex == 0
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).black40,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.2,
                                  ),
                            ),
                          ].divide(SizedBox(height: 11.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().homeIndex = 1;
                          safeSetState(() {});
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) {
                                if (FFAppState().homeIndex == 1) {
                                  return Container(
                                    width: 48.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/category_fill.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    width: 48.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Category.svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Text(
                              'Cotação',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    color: FFAppState().homeIndex == 1
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).black40,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.2,
                                  ),
                            ),
                          ].divide(SizedBox(height: 11.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().homeIndex = 2;
                          safeSetState(() {});
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) {
                                if (FFAppState().homeIndex == 2) {
                                  return Container(
                                    width: 48.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.asset(
                                        'assets/images/order_fill.png',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    width: 48.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/order.png',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Text(
                              'Pedidos',
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    color: FFAppState().homeIndex == 2
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).black40,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.2,
                                  ),
                            ),
                          ].divide(SizedBox(height: 11.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().homeIndex = 4;
                            safeSetState(() {});
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Builder(
                                builder: (context) {
                                  if (FFAppState().homeIndex == 4) {
                                    return Container(
                                      width: 48.0,
                                      height: 32.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.solidHandshake,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      width: 48.0,
                                      height: 32.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.handshake,
                                          color: Color(0xFF9A9A8B),
                                          size: 24.0,
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                              Text(
                                'Vendedores',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FFAppState().homeIndex == 4
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .black40,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      lineHeight: 1.2,
                                    ),
                              ),
                            ].divide(SizedBox(height: 11.0)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().homeIndex = 3;
                          safeSetState(() {});
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) {
                                if (FFAppState().homeIndex == 3) {
                                  return Container(
                                    width: 48.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/profile-fill.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    width: 48.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/profile-border.svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Text(
                              'Profile',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    color: FFAppState().homeIndex == 3
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).black40,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.2,
                                  ),
                            ),
                          ].divide(SizedBox(height: 11.0)),
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
    );
  }
}
