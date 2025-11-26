import '/empty_component/components/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'home_component_model.dart';
export 'home_component_model.dart';

class HomeComponentWidget extends StatefulWidget {
  const HomeComponentWidget({super.key});

  @override
  State<HomeComponentWidget> createState() => _HomeComponentWidgetState();
}

class _HomeComponentWidgetState extends State<HomeComponentWidget>
    with TickerProviderStateMixin {
  late HomeComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeComponentModel());

    animationsMap.addAll({
      'wrapOnPageLoadAnimation1': AnimationInfo(
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
      'wrapOnPageLoadAnimation2': AnimationInfo(
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
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 63.0, 0.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bem Vindo',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Satoshi',
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      FFAppState().profile.nomeCompleto,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Satoshi',
                            color: FlutterFlowTheme.of(context).black40,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(SearchPageWidget.routeName);
                        },
                        child: Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/search.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(BasketPageWidget.routeName);
                          },
                          child: Container(
                            width: 48.0,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(16.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(BasketPageWidget.routeName);
                              },
                              child: Icon(
                                FFIcons.kbasket,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
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
        Expanded(
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
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                          CategoryPageWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                            ),
                          },
                        );
                      },
                      child: Text(
                        'View all',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 24.0),
                child: Builder(
                  builder: (context) {
                    final categiruesData =
                        FFAppState().categories.toList().take(4).toList();

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(categiruesData.length,
                                (categiruesDataIndex) {
                          final categiruesDataItem =
                              categiruesData[categiruesDataIndex];
                          return Container(
                              width: 100, height: 100, color: Colors.green);
                        })
                            .divide(SizedBox(width: 16.0))
                            .addToStart(SizedBox(width: 20.0))
                            .addToEnd(SizedBox(width: 20.0)),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Grooming',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                        context.pushNamed(GroomingsPageWidget.routeName);
                      },
                      child: Text(
                        'View all',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
                child: Builder(
                  builder: (context) {
                    final cateData =
                        FFAppState().cateList.toList().take(2).toList();

                    return Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: List.generate(cateData.length, (cateDataIndex) {
                        final cateDataItem = cateData[cateDataIndex];
                        return Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width < 810.0) {
                              return ((MediaQuery.sizeOf(context).width - 56) *
                                  1 /
                                  2);
                            } else if ((MediaQuery.sizeOf(context).width <=
                                    810.0) &&
                                (MediaQuery.sizeOf(context).width >= 1280.0)) {
                              return ((MediaQuery.sizeOf(context).width - 88) *
                                  1 /
                                  4);
                            } else {
                              return ((MediaQuery.sizeOf(context).width - 152) *
                                  1 /
                                  8);
                            }
                          }(),
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.productComponentModels1.getModel(
                              cateDataIndex.toString(),
                              cateDataIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: ProductComponentWidget(
                              key: Key(
                                'Keycia_${cateDataIndex.toString()}',
                              ),
                              data: cateDataItem,
                              ontapcontain: () async {
                                context.pushNamed(
                                  MasaladetailsPageWidget.routeName,
                                  queryParameters: {
                                    'details': serializeParam(
                                      cateDataItem,
                                      ParamType.DataStruct,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              ontapfav: () async {
                                if (cateDataItem.isfav == true) {
                                  FFAppState().updateCateListAtIndex(
                                    cateDataItem.id,
                                    (e) => e..isfav = false,
                                  );
                                  safeSetState(() {});
                                } else {
                                  FFAppState().updateCateListAtIndex(
                                    cateDataItem.id,
                                    (e) => e..isfav = true,
                                  );
                                  safeSetState(() {});
                                }
                              },
                            ),
                          ),
                        );
                      }),
                    ).animateOnPageLoad(
                        animationsMap['wrapOnPageLoadAnimation1']!);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Vegetable',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
                child: Builder(
                  builder: (context) {
                    final fruitDataData =
                        FFAppState().cateList.toList().take(2).toList();

                    return Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: List.generate(fruitDataData.length,
                          (fruitDataDataIndex) {
                        final fruitDataDataItem =
                            fruitDataData[fruitDataDataIndex];
                        return Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width < 810.0) {
                              return ((MediaQuery.sizeOf(context).width - 56) *
                                  1 /
                                  2);
                            } else if ((MediaQuery.sizeOf(context).width <=
                                    810.0) &&
                                (MediaQuery.sizeOf(context).width >= 1280.0)) {
                              return ((MediaQuery.sizeOf(context).width - 88) *
                                  1 /
                                  4);
                            } else {
                              return ((MediaQuery.sizeOf(context).width - 152) *
                                  1 /
                                  8);
                            }
                          }(),
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.productComponentModels2.getModel(
                              fruitDataDataIndex.toString(),
                              fruitDataDataIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: ProductComponentWidget(
                              key: Key(
                                'Key2lj_${fruitDataDataIndex.toString()}',
                              ),
                              data: fruitDataDataItem,
                              ontapcontain: () async {
                                context.pushNamed(
                                  MasaladetailsPageWidget.routeName,
                                  queryParameters: {
                                    'details': serializeParam(
                                      fruitDataDataItem,
                                      ParamType.DataStruct,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              ontapfav: () async {
                                if (fruitDataDataItem.isfav == true) {
                                  FFAppState().updateCateListAtIndex(
                                    fruitDataDataItem.id,
                                    (e) => e..isfav = false,
                                  );
                                  safeSetState(() {});
                                } else {
                                  FFAppState().updateCateListAtIndex(
                                    fruitDataDataItem.id,
                                    (e) => e..isfav = true,
                                  );
                                  safeSetState(() {});
                                }
                              },
                            ),
                          ),
                        );
                      }),
                    ).animateOnPageLoad(
                        animationsMap['wrapOnPageLoadAnimation2']!);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fruits',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'View all',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Satoshi',
                            color: FlutterFlowTheme.of(context).black40,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Deodorants',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'View all',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Satoshi',
                            color: FlutterFlowTheme.of(context).black40,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Masalas',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
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
        ),
      ],
    );
  }
}
