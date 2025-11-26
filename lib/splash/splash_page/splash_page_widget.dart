import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'splash_page_model.dart';
export 'splash_page_model.dart';

class SplashPageWidget extends StatefulWidget {
  const SplashPageWidget({super.key});

  static String routeName = 'SplashPage';
  static String routePath = 'splashPage';

  @override
  State<SplashPageWidget> createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<SplashPageWidget>
    with TickerProviderStateMixin {
  late SplashPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultqwe = await EdgeFunctionsGroup.identificausuarioCall.call(
        token: currentJwtToken,
      );

      if ((_model.apiResultqwe?.succeeded ?? true)) {
        if (EdgeFunctionsGroup.identificausuarioCall.isRestaurante(
          (_model.apiResultqwe?.jsonBody ?? ''),
        )!) {
          FFAppState().restaurante =
              EdgeFunctionsGroup.identificausuarioCall.restaurante(
            (_model.apiResultqwe?.jsonBody ?? ''),
          )!;
          FFAppState().profile =
              EdgeFunctionsGroup.identificausuarioCall.profile(
            (_model.apiResultqwe?.jsonBody ?? ''),
          )!;
          FFAppState().isRestaurante = true;
          FFAppState().categorias = [];
          safeSetState(() {});
          _model.categorias = await CategoriasTable().queryRows(
            queryFn: (q) => q,
          );
          FFAppState().looCount = 0;
          safeSetState(() {});
          while (FFAppState().looCount < _model.categorias!.length) {
            FFAppState().addToCategorias(CategoriasStruct(
              id: _model.categorias?.elementAtOrNull(FFAppState().looCount)?.id,
              nome: _model.categorias
                  ?.elementAtOrNull(FFAppState().looCount)
                  ?.nome,
              imagemUrl: _model.categorias
                  ?.elementAtOrNull(FFAppState().looCount)
                  ?.imagemUrl,
              posicao: _model.categorias
                  ?.elementAtOrNull(FFAppState().looCount)
                  ?.posicao,
            ));
            safeSetState(() {});
            FFAppState().looCount = FFAppState().looCount + 1;
            safeSetState(() {});
          }

          context.goNamed(HomeRestauranteWidget.routeName);
        } else {
          FFAppState().vendedroe =
              EdgeFunctionsGroup.identificausuarioCall.vendedor(
            (_model.apiResultqwe?.jsonBody ?? ''),
          )!;
          FFAppState().isRestaurante = false;
          safeSetState(() {});

          context.goNamed(HomeVendedorWidget.routeName);
        }
      } else {
        _model.vendedor = await VendedoresTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'auth_user_id',
            currentJwtToken,
          ),
        );
        if (_model.vendedor!.length > 0) {
          context.goNamed(BoasvidasvendedorWidget.routeName);
        } else {
          context.goNamed(ConfirmaCadastroWidget.routeName);
        }
      }
    });

    animationsMap.addAll({
      'imageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 1030.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 1080.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(
                  'assets/images/Design_sem_nome_(3).png',
                  height: 300.0,
                  fit: BoxFit.contain,
                ),
              ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation1']!),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.asset(
                    'assets/images/superlista.png',
                    width: 116.0,
                    height: 250.0,
                    fit: BoxFit.contain,
                  ),
                ).animateOnPageLoad(
                    animationsMap['imageOnPageLoadAnimation2']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
