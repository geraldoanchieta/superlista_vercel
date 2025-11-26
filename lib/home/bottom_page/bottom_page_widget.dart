import '/empty_component/components/category_component/category_component_widget.dart';
import '/empty_component/components/home_component/home_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/profile_component/profile_component_widget.dart';
import '/listas/lista_pedidos_restautante/lista_pedidos_restautante_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'bottom_page_model.dart';
export 'bottom_page_model.dart';

class BottomPageWidget extends StatefulWidget {
  const BottomPageWidget({super.key});

  static String routeName = 'BottomPage';
  static String routePath = 'bottomPage';

  @override
  State<BottomPageWidget> createState() => _BottomPageWidgetState();
}

class _BottomPageWidgetState extends State<BottomPageWidget> {
  late BottomPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomPageModel());

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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  if (FFAppState().homeIndex == 0) {
                    return wrapWithModel(
                      model: _model.homeComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: HomeComponentWidget(),
                    );
                  } else if (FFAppState().homeIndex == 1) {
                    return wrapWithModel(
                      model: _model.categoryComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CategoryComponentWidget(),
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
                    return Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 18.0),
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
                              'Home',
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
                              'Category',
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
                              'Order',
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    color: FFAppState().bottomIndex == 2
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
