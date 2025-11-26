import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/empty_component/components/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'search_result_page_model.dart';
export 'search_result_page_model.dart';

class SearchResultPageWidget extends StatefulWidget {
  const SearchResultPageWidget({super.key});

  static String routeName = 'SearchResultPage';
  static String routePath = 'searchResultPage';

  @override
  State<SearchResultPageWidget> createState() => _SearchResultPageWidgetState();
}

class _SearchResultPageWidgetState extends State<SearchResultPageWidget>
    with TickerProviderStateMixin {
  late SearchResultPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchResultPageModel());

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
                  name: 'Search results',
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
                          final deodorantsData =
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
                            children: List.generate(deodorantsData.length,
                                (deodorantsDataIndex) {
                              final deodorantsDataItem =
                                  deodorantsData[deodorantsDataIndex];
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
                                    deodorantsDataIndex.toString(),
                                    deodorantsDataIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ProductComponentWidget(
                                    key: Key(
                                      'Keyo85_${deodorantsDataIndex.toString()}',
                                    ),
                                    data: deodorantsDataItem,
                                    ontapcontain: () async {
                                      context.pushNamed(
                                        MasaladetailsPageWidget.routeName,
                                        queryParameters: {
                                          'details': serializeParam(
                                            deodorantsDataItem,
                                            ParamType.DataStruct,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    ontapfav: () async {
                                      if (deodorantsDataItem.isfav == true) {
                                        FFAppState().updateCateListAtIndex(
                                          deodorantsDataItem.id,
                                          (e) => e..isfav = false,
                                        );
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().updateCateListAtIndex(
                                          deodorantsDataItem.id,
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
