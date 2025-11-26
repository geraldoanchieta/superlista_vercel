import '/backend/schema/structs/index.dart';
import '/dialog_component/dilog_tutorial/dilog_tutorial_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'video_turorial_model.dart';
export 'video_turorial_model.dart';

class VideoTurorialWidget extends StatefulWidget {
  const VideoTurorialWidget({
    super.key,
    required this.tutorial,
    bool? atalho,
  }) : this.atalho = atalho ?? false;

  final TutorialStruct? tutorial;
  final bool atalho;

  static String routeName = 'videoTurorial';
  static String routePath = 'videoTurorial';

  @override
  State<VideoTurorialWidget> createState() => _VideoTurorialWidgetState();
}

class _VideoTurorialWidgetState extends State<VideoTurorialWidget> {
  late VideoTurorialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoTurorialModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await showDialog(
        context: context,
        builder: (dialogContext) {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            alignment: AlignmentDirectional(0.0, 0.0)
                .resolve(Directionality.of(context)),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(dialogContext).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: DilogTutorialWidget(
                titulo: valueOrDefault<String>(
                  widget.tutorial?.nome,
                  'nome',
                ),
                mrndsgrm: widget.tutorial!.descricao,
                ontapyes: () async {
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
      );
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

    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.commonAppBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CommonAppBarWidget(
                      name: 'Tutorial',
                      color: false,
                      iconExtra: false,
                      novaacao: () async {
                        if (widget.atalho) {
                          context.safePop();
                        } else {
                          if (FFAppState().isRestaurante) {
                            context.pushNamed(HomeRestauranteWidget.routeName);
                          } else {
                            context.pushNamed(HomeVendedorWidget.routeName);
                          }
                        }
                      },
                      actionicon: () async {},
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.8,
                        decoration: BoxDecoration(),
                        child: FlutterFlowVideoPlayer(
                          path: valueOrDefault<String>(
                            widget.tutorial?.video,
                            'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/WhatsApp%20Video%202025-10-02%20at%2015.03.04.mp4',
                          ),
                          videoType: VideoType.network,
                          autoPlay: false,
                          looping: false,
                          showControls: true,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: true,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (FFAppState().isRestaurante) {
                                  if (widget.tutorial?.publico ==
                                      'Check List') {
                                    if (widget.tutorial?.ordem != 1) {
                                      context.pushNamed(
                                        VideoTurorialWidget.routeName,
                                        queryParameters: {
                                          'tutorial': serializeParam(
                                            FFAppState()
                                                .tutoriais
                                                .where((e) =>
                                                    (e.publico ==
                                                        'Check List') &&
                                                    (e.ordem ==
                                                        valueOrDefault<int>(
                                                          widget.tutorial!
                                                                  .ordem -
                                                              1,
                                                          1,
                                                        )))
                                                .toList()
                                                .firstOrNull,
                                            ParamType.DataStruct,
                                          ),
                                          'atalho': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  } else {
                                    if (widget.tutorial?.publico ==
                                        'Cotações') {
                                      if (widget.tutorial?.ordem != 1) {
                                        context.pushNamed(
                                          VideoTurorialWidget.routeName,
                                          queryParameters: {
                                            'tutorial': serializeParam(
                                              FFAppState()
                                                  .tutoriais
                                                  .where((e) =>
                                                      (e.publico ==
                                                          'Cotações') &&
                                                      (e.ordem ==
                                                          valueOrDefault<int>(
                                                            widget.tutorial!
                                                                    .ordem -
                                                                1,
                                                            1,
                                                          )))
                                                  .toList()
                                                  .firstOrNull,
                                              ParamType.DataStruct,
                                            ),
                                            'atalho': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else {
                                        context.pushNamed(
                                          VideoTurorialWidget.routeName,
                                          queryParameters: {
                                            'tutorial': serializeParam(
                                              FFAppState()
                                                  .tutoriais
                                                  .where((e) =>
                                                      (e.publico ==
                                                          'Check List') &&
                                                      (e.ordem == 6))
                                                  .toList()
                                                  .firstOrNull,
                                              ParamType.DataStruct,
                                            ),
                                            'atalho': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
                                    } else {
                                      if (widget.tutorial?.ordem != 1) {
                                        context.pushNamed(
                                          VideoTurorialWidget.routeName,
                                          queryParameters: {
                                            'tutorial': serializeParam(
                                              FFAppState()
                                                  .tutoriais
                                                  .where((e) =>
                                                      (e.publico ==
                                                          'Pedidos') &&
                                                      (e.ordem ==
                                                          valueOrDefault<int>(
                                                            widget.tutorial!
                                                                    .ordem -
                                                                1,
                                                            1,
                                                          )))
                                                  .toList()
                                                  .firstOrNull,
                                              ParamType.DataStruct,
                                            ),
                                            'atalho': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else {
                                        context.pushNamed(
                                          VideoTurorialWidget.routeName,
                                          queryParameters: {
                                            'tutorial': serializeParam(
                                              FFAppState()
                                                  .tutoriais
                                                  .where((e) =>
                                                      (e.publico ==
                                                          'Cotações') &&
                                                      (e.ordem == 3))
                                                  .toList()
                                                  .firstOrNull,
                                              ParamType.DataStruct,
                                            ),
                                            'atalho': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
                                    }
                                  }
                                } else {
                                  if (widget.tutorial?.ordem != 1) {
                                    context.pushNamed(
                                      VideoTurorialWidget.routeName,
                                      queryParameters: {
                                        'tutorial': serializeParam(
                                          FFAppState()
                                              .tutoriais
                                              .where((e) =>
                                                  (e.publico == 'Vendas') &&
                                                  (e.ordem ==
                                                      valueOrDefault<int>(
                                                        widget.tutorial!
                                                                .ordem -
                                                            1,
                                                        1,
                                                      )))
                                              .toList()
                                              .firstOrNull,
                                          ParamType.DataStruct,
                                        ),
                                        'atalho': serializeParam(
                                          false,
                                          ParamType.bool,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                }
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: (widget.tutorial?.publico ==
                                            'Check List') &&
                                        (widget.tutorial?.ordem == 1)
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : FlutterFlowTheme.of(context).primary,
                                size: 45.0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Text(
                              valueOrDefault<String>(
                                widget.tutorial?.nome,
                                'Tutorial',
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (FFAppState().isRestaurante) {
                                  if (widget.tutorial?.publico ==
                                      'Check List') {
                                    if (widget.tutorial!.ordem < 6) {
                                      context.pushNamed(
                                        VideoTurorialWidget.routeName,
                                        queryParameters: {
                                          'tutorial': serializeParam(
                                            FFAppState()
                                                .tutoriais
                                                .where((e) =>
                                                    (e.publico ==
                                                        'Check List') &&
                                                    (e.ordem ==
                                                        valueOrDefault<int>(
                                                          widget.tutorial!
                                                                  .ordem +
                                                              1,
                                                          1,
                                                        )))
                                                .toList()
                                                .firstOrNull,
                                            ParamType.DataStruct,
                                          ),
                                          'atalho': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else {
                                      context.pushNamed(
                                        VideoTurorialWidget.routeName,
                                        queryParameters: {
                                          'tutorial': serializeParam(
                                            FFAppState()
                                                .tutoriais
                                                .where((e) =>
                                                    (e.publico == 'Cotações') &&
                                                    (e.ordem == 1))
                                                .toList()
                                                .firstOrNull,
                                            ParamType.DataStruct,
                                          ),
                                          'atalho': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  } else {
                                    if (widget.tutorial?.publico ==
                                        'Cotações') {
                                      if (widget.tutorial!.ordem < 4) {
                                        context.pushNamed(
                                          VideoTurorialWidget.routeName,
                                          queryParameters: {
                                            'tutorial': serializeParam(
                                              FFAppState()
                                                  .tutoriais
                                                  .where((e) =>
                                                      (e.publico ==
                                                          'Cotações') &&
                                                      (e.ordem ==
                                                          valueOrDefault<int>(
                                                            widget.tutorial!
                                                                    .ordem +
                                                                1,
                                                            1,
                                                          )))
                                                  .toList()
                                                  .firstOrNull,
                                              ParamType.DataStruct,
                                            ),
                                            'atalho': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else {
                                        context.pushNamed(
                                          VideoTurorialWidget.routeName,
                                          queryParameters: {
                                            'tutorial': serializeParam(
                                              FFAppState()
                                                  .tutoriais
                                                  .where((e) =>
                                                      (e.publico ==
                                                          'Pedidos') &&
                                                      (e.ordem == 1))
                                                  .toList()
                                                  .firstOrNull,
                                              ParamType.DataStruct,
                                            ),
                                            'atalho': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
                                    } else {
                                      if (widget.tutorial!.ordem < 2) {
                                        context.pushNamed(
                                          VideoTurorialWidget.routeName,
                                          queryParameters: {
                                            'tutorial': serializeParam(
                                              FFAppState()
                                                  .tutoriais
                                                  .where((e) =>
                                                      (e.publico ==
                                                          'Pedidos') &&
                                                      (e.ordem ==
                                                          valueOrDefault<int>(
                                                            widget.tutorial!
                                                                    .ordem +
                                                                1,
                                                            1,
                                                          )))
                                                  .toList()
                                                  .firstOrNull,
                                              ParamType.DataStruct,
                                            ),
                                            'atalho': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
                                    }
                                  }
                                } else {
                                  if (widget.tutorial!.ordem < 8) {
                                    context.pushNamed(
                                      VideoTurorialWidget.routeName,
                                      queryParameters: {
                                        'tutorial': serializeParam(
                                          FFAppState()
                                              .tutoriais
                                              .where((e) =>
                                                  (e.publico == 'Vendas') &&
                                                  (e.ordem ==
                                                      valueOrDefault<int>(
                                                        widget.tutorial!
                                                                .ordem +
                                                            1,
                                                        1,
                                                      )))
                                              .toList()
                                              .firstOrNull,
                                          ParamType.DataStruct,
                                        ),
                                        'atalho': serializeParam(
                                          false,
                                          ParamType.bool,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                }
                              },
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: (widget.tutorial?.publico ==
                                            'Pedidos') &&
                                        (widget.tutorial?.ordem == 2)
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : FlutterFlowTheme.of(context).primary,
                                size: 45.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
