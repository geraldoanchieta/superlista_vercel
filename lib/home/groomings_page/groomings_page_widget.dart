import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/empty_component/components/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'groomings_page_model.dart';
export 'groomings_page_model.dart';

class GroomingsPageWidget extends StatefulWidget {
  const GroomingsPageWidget({
    super.key,
    String? name,
  }) : this.name = name ?? 'Grooming';

  final String name;

  static String routeName = 'GroomingsPage';
  static String routePath = 'groomingsPage';

  @override
  State<GroomingsPageWidget> createState() => _GroomingsPageWidgetState();
}

class _GroomingsPageWidgetState extends State<GroomingsPageWidget>
    with TickerProviderStateMixin {
  late GroomingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GroomingsPageModel());

    animationsMap.addAll({
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.commonAppBarModel,
                updateCallback: () => safeSetState(() {}),
                child: CommonAppBarWidget(
                  name: widget.name,
                  novaacao: () async {},
                  actionicon: () async {},
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      16.0,
                      0,
                      24.0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      Builder(
                        builder: (context) {
                          final cateData = FFAppState().cateList.toList();

                          return Wrap(
                            spacing: 16.0,
                            runSpacing: 16.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children:
                                List.generate(cateData.length, (cateDataIndex) {
                              final cateDataItem = cateData[cateDataIndex];
                              return Container(
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      810.0) {
                                    return ((MediaQuery.sizeOf(context).width -
                                            56) *
                                        1 /
                                        2);
                                  } else if ((MediaQuery.sizeOf(context)
                                              .width <=
                                          810.0) &&
                                      (MediaQuery.sizeOf(context).width >=
                                          1280.0)) {
                                    return ((MediaQuery.sizeOf(context).width -
                                            88) *
                                        1 /
                                        4);
                                  } else {
                                    return ((MediaQuery.sizeOf(context).width -
                                            152) *
                                        1 /
                                        8);
                                  }
                                }(),
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.productComponentModels.getModel(
                                    cateDataIndex.toString(),
                                    cateDataIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ProductComponentWidget(
                                    key: Key(
                                      'Keyrgo_${cateDataIndex.toString()}',
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
                              animationsMap['wrapOnPageLoadAnimation']!);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
