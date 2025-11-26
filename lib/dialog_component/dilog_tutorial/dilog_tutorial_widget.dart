import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'dilog_tutorial_model.dart';
export 'dilog_tutorial_model.dart';

class DilogTutorialWidget extends StatefulWidget {
  const DilogTutorialWidget({
    super.key,
    required this.ontapyes,
    required this.titulo,
    required this.mrndsgrm,
  });

  final Future Function()? ontapyes;
  final String? titulo;
  final String? mrndsgrm;

  @override
  State<DilogTutorialWidget> createState() => _DilogTutorialWidgetState();
}

class _DilogTutorialWidgetState extends State<DilogTutorialWidget> {
  late DilogTutorialModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DilogTutorialModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Container(
          width: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 388.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 388.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 388.0;
            } else {
              return 388.0;
            }
          }(),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.titulo,
                        'titulo',
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'BANGERS',
                            color: FlutterFlowTheme.of(context).secondary,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Gemini_Generated_Image_64i5u064i5u064i5-removebg-preview.png',
                      width: 300.0,
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.mrndsgrm,
                        'mdgh',
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Satoshi',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              await widget.ontapyes?.call();
                            },
                            text: 'ok',
                            options: FFButtonOptions(
                              width: 170.0,
                              height: 56.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 15.0, 12.0, 15.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
