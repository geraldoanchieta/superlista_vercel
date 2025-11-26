import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lista_pedidos_restautante_widget.dart'
    show ListaPedidosRestautanteWidget;
import 'package:flutter/material.dart';

class ListaPedidosRestautanteModel
    extends FlutterFlowModel<ListaPedidosRestautanteWidget> {
  ///  Local state fields for this component.

  bool order = false;

  ///  State fields for stateful widgets in this component.

  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel;

  @override
  void initState(BuildContext context) {
    iconeTutorialModel = createModel(context, () => IconeTutorialModel());
  }

  @override
  void dispose() {
    iconeTutorialModel.dispose();
  }
}
