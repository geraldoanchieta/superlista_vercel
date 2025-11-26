import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'icone_tutorial_model.dart';
export 'icone_tutorial_model.dart';

class IconeTutorialWidget extends StatefulWidget {
  const IconeTutorialWidget({
    super.key,
    required this.tutorial,
    required this.ordem,
    required this.nome,
  });

  final String? tutorial;
  final int? ordem;
  final String? nome;

  @override
  State<IconeTutorialWidget> createState() => _IconeTutorialWidgetState();
}

class _IconeTutorialWidgetState extends State<IconeTutorialWidget>
    with TickerProviderStateMixin {
  late IconeTutorialModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconeTutorialModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 720.0.ms,
            duration: 810.0.ms,
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

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(
          VideoTurorialWidget.routeName,
          queryParameters: {
            'tutorial': serializeParam(
              FFAppState()
                  .tutoriais
                  .where((e) =>
                      (e.publico == widget.tutorial) &&
                      (e.ordem == widget.ordem))
                  .toList()
                  .firstOrNull,
              ParamType.DataStruct,
            ),
            'atalho': serializeParam(
              true,
              ParamType.bool,
            ),
          }.withoutNulls,
        );
      },
      child: Material(
        color: Colors.transparent,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 55.0,
                  height: 40.0,
                  decoration: BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Gemini_Generated_Image_64i5u064i5u064i5-removebg-preview.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.nome,
                          'nome',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
