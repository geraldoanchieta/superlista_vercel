import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/cotacao/cotacao_widget.dart';
import 'package:flutter/material.dart';
import 'cotaceos_encerradas_restaurante_model.dart';
export 'cotaceos_encerradas_restaurante_model.dart';

class CotaceosEncerradasRestauranteWidget extends StatefulWidget {
  const CotaceosEncerradasRestauranteWidget({super.key});

  static String routeName = 'cotaceosEncerradasRestaurante';
  static String routePath = 'cotaceosEncerradasRestaurante';

  @override
  State<CotaceosEncerradasRestauranteWidget> createState() =>
      _CotaceosEncerradasRestauranteWidgetState();
}

class _CotaceosEncerradasRestauranteWidgetState
    extends State<CotaceosEncerradasRestauranteWidget> {
  late CotaceosEncerradasRestauranteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CotaceosEncerradasRestauranteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.cotacaoModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CotacaoWidget(
                    encerradas: true,
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
