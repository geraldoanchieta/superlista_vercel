import '/empty_component/components/categories_all_contain/categories_all_contain_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'category_component_model.dart';
export 'category_component_model.dart';

class CategoryComponentWidget extends StatefulWidget {
  const CategoryComponentWidget({super.key});

  @override
  State<CategoryComponentWidget> createState() =>
      _CategoryComponentWidgetState();
}

class _CategoryComponentWidgetState extends State<CategoryComponentWidget>
    with TickerProviderStateMixin {
  late CategoryComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryComponentModel());

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
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 63.0, 0.0, 16.0),
          child: Text(
            'Categories',
            maxLines: 1,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Satoshi',
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
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
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
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
                      children: List.generate(cateData.length, (cateDataIndex) {
                        final cateDataItem = cateData[cateDataIndex];
                        return Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width < 810.0) {
                              return ((MediaQuery.sizeOf(context).width - 72) *
                                  1 /
                                  3);
                            } else if ((MediaQuery.sizeOf(context).width <=
                                    810.0) &&
                                (MediaQuery.sizeOf(context).width >= 1280.0)) {
                              return ((MediaQuery.sizeOf(context).width - 120) *
                                  1 /
                                  6);
                            } else {
                              return ((MediaQuery.sizeOf(context).width - 168) *
                                  1 /
                                  9);
                            }
                          }(),
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.categoriesAllContainModels.getModel(
                              cateDataIndex.toString(),
                              cateDataIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: CategoriesAllContainWidget(
                              key: Key(
                                'Key3u7_${cateDataIndex.toString()}',
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
          ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation']!),
        ),
      ],
    );
  }
}
