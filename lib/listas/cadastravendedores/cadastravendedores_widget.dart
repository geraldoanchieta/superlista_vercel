import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/vendedores/cadastra_vendedor/cadastra_vendedor_widget.dart';
import 'package:flutter/material.dart';
import 'cadastravendedores_model.dart';
export 'cadastravendedores_model.dart';

class CadastravendedoresWidget extends StatefulWidget {
  const CadastravendedoresWidget({super.key});

  static String routeName = 'cadastravendedores';
  static String routePath = 'cadastravendedores';

  @override
  State<CadastravendedoresWidget> createState() =>
      _CadastravendedoresWidgetState();
}

class _CadastravendedoresWidgetState extends State<CadastravendedoresWidget> {
  late CadastravendedoresModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastravendedoresModel());

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
        backgroundColor: FlutterFlowTheme.of(context).lightGray,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.cadastraVendedorModel,
            updateCallback: () => safeSetState(() {}),
            child: CadastraVendedorWidget(),
          ),
        ),
      ),
    );
  }
}
