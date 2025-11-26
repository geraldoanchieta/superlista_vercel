import '/empty_component/components/categories_all_contain/categories_all_contain_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'category_page_model.dart';
export 'category_page_model.dart';

class CategoryPageWidget extends StatefulWidget {
  const CategoryPageWidget({super.key});

  static String routeName = 'CategoryPage';
  static String routePath = 'categoryPage';

  @override
  State<CategoryPageWidget> createState() => _CategoryPageWidgetState();
}

class _CategoryPageWidgetState extends State<CategoryPageWidget>
    with TickerProviderStateMixin {
  late CategoryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryPageModel());

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
                  name: 'Categories',
                  novaacao: () async {},
                  actionicon: () async {},
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    16.0,
                    0,
                    24.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final cateData = FFAppState().categories.toList();

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
                                            72) *
                                        1 /
                                        3);
                                  } else if ((MediaQuery.sizeOf(context)
                                              .width <=
                                          810.0) &&
                                      (MediaQuery.sizeOf(context).width >=
                                          1280.0)) {
                                    return ((MediaQuery.sizeOf(context).width -
                                            120) *
                                        1 /
                                        6);
                                  } else {
                                    return ((MediaQuery.sizeOf(context).width -
                                            168) *
                                        1 /
                                        9);
                                  }
                                }(),
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.categoriesAllContainModels
                                      .getModel(
                                    cateDataIndex.toString(),
                                    cateDataIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoriesAllContainWidget(
                                    key: Key(
                                      'Keysoi_${cateDataIndex.toString()}',
                                    ),
                                    image: cateDataItem.image,
                                    text: cateDataItem.title,
                                    oncontainer: () async {
                                      context.pushNamed(
                                        FruitPageWidget.routeName,
                                        queryParameters: {
                                          'name': serializeParam(
                                            cateDataItem.title,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    ontext: () async {},
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ],
                ).animateOnPageLoad(
                    animationsMap['listViewOnPageLoadAnimation']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
