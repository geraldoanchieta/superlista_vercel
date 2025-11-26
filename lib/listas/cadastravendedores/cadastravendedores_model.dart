import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/vendedores/cadastra_vendedor/cadastra_vendedor_widget.dart';
import 'cadastravendedores_widget.dart' show CadastravendedoresWidget;
import 'package:flutter/material.dart';

class CadastravendedoresModel
    extends FlutterFlowModel<CadastravendedoresWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cadastraVendedor component.
  late CadastraVendedorModel cadastraVendedorModel;

  @override
  void initState(BuildContext context) {
    cadastraVendedorModel = createModel(context, () => CadastraVendedorModel());
  }

  @override
  void dispose() {
    cadastraVendedorModel.dispose();
  }
}
