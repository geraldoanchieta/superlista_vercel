import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/vendedores/cadastra_vendedor/cadastra_vendedor_widget.dart';
import 'bs_cadastra_vendedor_widget.dart' show BsCadastraVendedorWidget;
import 'package:flutter/material.dart';

class BsCadastraVendedorModel
    extends FlutterFlowModel<BsCadastraVendedorWidget> {
  ///  State fields for stateful widgets in this component.

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
