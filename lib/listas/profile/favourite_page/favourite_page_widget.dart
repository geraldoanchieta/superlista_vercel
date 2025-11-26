import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/empty_component/components/product_component/product_component_widget.dart';
import '/empty_component/favourite_empty/favourite_empty_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'favourite_page_model.dart';
export 'favourite_page_model.dart';

class FavouritePageWidget extends StatefulWidget {
  const FavouritePageWidget({super.key});

  static String routeName = 'FavouritePage';
  static String routePath = 'favouritePage';

  @override
  State<FavouritePageWidget> createState() => _FavouritePageWidgetState();
}

class _FavouritePageWidgetState extends State<FavouritePageWidget>
    with TickerProviderStateMixin {
  late FavouritePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavouritePageModel());

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.commonAppBarModel,
                updateCallback: () => safeSetState(() {}),
                child: CommonAppBarWidget(
                  name: 'My favorite',
                  novaacao: () async {},
                  actionicon: () async {},
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (FFAppState()
                        .cateList
                        .where((e) => e.isfav == true)
                        .toList()
                        .isNotEmpty) {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
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
                                final favdata = FFAppState()
                                    .cateList
                                    .where((e) => e.isfav == true)
                                    .toList();

                                return Wrap(
                                  spacing: 16.0,
                                  runSpacing: 16.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: List.generate(favdata.length,
                                      (favdataIndex) {
                                    final favdataItem = favdata[favdataIndex];
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
                                      child: wrapWithModel(
                                        model: _model.productComponentModels
                                            .getModel(
                                          favdataIndex.toString(),
                                          favdataIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ProductComponentWidget(
                                          key: Key(
                                            'Keycz6_${favdataIndex.toString()}',
                                          ),
                                          data: favdataItem,
                                          ontapcontain: () async {
                                            context.pushNamed(
                                              MasaladetailsPageWidget.routeName,
                                              queryParameters: {
                                                'details': serializeParam(
                                                  favdataItem,
                                                  ParamType.DataStruct,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          ontapfav: () async {
                                            if (favdataItem.isfav == true) {
                                              FFAppState()
                                                  .updateCateListAtIndex(
                                                favdataItem.id,
                                                (e) => e..isfav = false,
                                              );
                                              FFAppState().update(() {});
                                            } else {
                                              FFAppState()
                                                  .updateCateListAtIndex(
                                                favdataItem.id,
                                                (e) => e..isfav = true,
                                              );
                                              FFAppState().update(() {});
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
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      );
                    } else {
                      return wrapWithModel(
                        model: _model.favouriteEmptyModel,
                        updateCallback: () => safeSetState(() {}),
                        child: FavouriteEmptyWidget(),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
