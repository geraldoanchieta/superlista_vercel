import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/vendedores/cadastra_vendedor/cadastra_vendedor_widget.dart';
import 'package:flutter/material.dart';
import 'bs_cadastra_vendedor_model.dart';
export 'bs_cadastra_vendedor_model.dart';

class BsCadastraVendedorWidget extends StatefulWidget {
  const BsCadastraVendedorWidget({super.key});

  @override
  State<BsCadastraVendedorWidget> createState() =>
      _BsCadastraVendedorWidgetState();
}

class _BsCadastraVendedorWidgetState extends State<BsCadastraVendedorWidget> {
  late BsCadastraVendedorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsCadastraVendedorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.7,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(
              0.0,
              -3.0,
            ),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: wrapWithModel(
        model: _model.cadastraVendedorModel,
        updateCallback: () => safeSetState(() {}),
        child: CadastraVendedorWidget(),
      ),
    );
  }
}
