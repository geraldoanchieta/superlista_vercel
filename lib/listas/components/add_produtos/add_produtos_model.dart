import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_produtos_widget.dart' show AddProdutosWidget;
import 'package:flutter/material.dart';

class AddProdutosModel extends FlutterFlowModel<AddProdutosWidget> {
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
