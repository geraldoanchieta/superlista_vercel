import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'onbording_page_model.dart';
export 'onbording_page_model.dart';

class OnbordingPageWidget extends StatefulWidget {
  const OnbordingPageWidget({super.key});

  static String routeName = 'OnbordingPage';
  static String routePath = 'onbordingPage';

  @override
  State<OnbordingPageWidget> createState() => _OnbordingPageWidgetState();
}

class _OnbordingPageWidgetState extends State<OnbordingPageWidget>
    with TickerProviderStateMixin {
  late OnbordingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnbordingPageModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation1': AnimationInfo(
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
      'imageOnPageLoadAnimation2': AnimationInfo(
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
      'imageOnPageLoadAnimation3': AnimationInfo(
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
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        body: Stack(
          alignment: AlignmentDirectional(0.0, 1.0),
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  PageView(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    onPageChanged: (_) async {
                      FFAppState().introIndex = _model.pageViewCurrentIndex;
                      safeSetState(() {});
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/Onboarding_1.png',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation1']!),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 210.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          'Get groceries delivered at Your doorstep',
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Satoshi',
                                                fontSize: 28.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 8.0, 20.0, 0.0),
                                      child: Text(
                                        'Bigbasket is a well-known online grocery shopping website that delivers to dehradun.',
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Satoshi',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .black40,
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              lineHeight: 1.5,
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
                      Stack(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/Onboarding_2.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation2']!),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 210.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Text(
                                    'Wide variety of products, delivered fast',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          fontSize: 28.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Text(
                                    'Place your order for an eligible item with Amazon Prime by the specified cutoff time.',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .black40,
                                          fontSize: 17.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/Onboarding_3.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation3']!),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 210.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 8.0),
                                  child: Text(
                                    'Hassle free online grocery shopping',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          fontSize: 28.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Text(
                                    'At the end of the day though it was uber eats that  average price that was just a few cents.',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .black40,
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
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 160.0),
                      child: smooth_page_indicator.SmoothPageIndicator(
                        controller: _model.pageViewController ??=
                            PageController(initialPage: 0),
                        count: 3,
                        axisDirection: Axis.horizontal,
                        onDotClicked: (i) async {
                          await _model.pageViewController!.animateToPage(
                            i,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                          safeSetState(() {});
                        },
                        effect: smooth_page_indicator.SlideEffect(
                          spacing: 8.0,
                          radius: 16.0,
                          dotWidth: 32.0,
                          dotHeight: 8.0,
                          dotColor: Color(0x2914181B),
                          activeDotColor: FlutterFlowTheme.of(context).primary,
                          paintStyle: PaintingStyle.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 78.0),
              child: FFButtonWidget(
                onPressed: () async {
                  if (FFAppState().introIndex == 2) {
                    context.goNamed(LoginPageWidget.routeName);

                    FFAppState().isIntro = true;
                    FFAppState().update(() {});
                  } else {
                    await _model.pageViewController?.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  }
                },
                text: FFAppState().introIndex == 2 ? 'Get Started' : 'Next',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 56.0,
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Satoshi',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
            Opacity(
              opacity: FFAppState().introIndex == 2 ? 0.0 : 1.0,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 38.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().isIntro = true;
                    safeSetState(() {});

                    context.pushNamed(LoginPageWidget.routeName);
                  },
                  child: Text(
                    'Skip',
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
            ),
          ],
        ),
      ),
    );
  }
}
