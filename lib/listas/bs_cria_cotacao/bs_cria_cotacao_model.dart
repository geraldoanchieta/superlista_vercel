import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/produtos/criacotacacomponent/criacotacacomponent_widget.dart';
import 'bs_cria_cotacao_widget.dart' show BsCriaCotacaoWidget;
import 'package:flutter/material.dart';

class BsCriaCotacaoModel extends FlutterFlowModel<BsCriaCotacaoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel;
  // Model for criacotacacomponent component.
  late CriacotacacomponentModel criacotacacomponentModel;

  @override
  void initState(BuildContext context) {
    iconeTutorialModel = createModel(context, () => IconeTutorialModel());
    criacotacacomponentModel =
        createModel(context, () => CriacotacacomponentModel());
  }

  @override
  void dispose() {
    iconeTutorialModel.dispose();
    criacotacacomponentModel.dispose();
  }
}
