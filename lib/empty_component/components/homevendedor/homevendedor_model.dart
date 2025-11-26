import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homevendedor_widget.dart' show HomevendedorWidget;
import 'package:flutter/material.dart';

class HomevendedorModel extends FlutterFlowModel<HomevendedorWidget> {
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
