import '/flutter_flow/flutter_flow_util.dart';
import '/listas/cotacao/cotacao_widget.dart';
import 'cotaceos_encerradas_restaurante_widget.dart'
    show CotaceosEncerradasRestauranteWidget;
import 'package:flutter/material.dart';

class CotaceosEncerradasRestauranteModel
    extends FlutterFlowModel<CotaceosEncerradasRestauranteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cotacao component.
  late CotacaoModel cotacaoModel;

  @override
  void initState(BuildContext context) {
    cotacaoModel = createModel(context, () => CotacaoModel());
  }

  @override
  void dispose() {
    cotacaoModel.dispose();
  }
}
