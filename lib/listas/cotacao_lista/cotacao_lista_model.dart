import '/backend/api_requests/api_calls.dart';
import '/components/icone_tutorial_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cotacao_lista_widget.dart' show CotacaoListaWidget;
import 'package:flutter/material.dart';

class CotacaoListaModel extends FlutterFlowModel<CotacaoListaWidget> {
  ///  Local state fields for this page.

  bool favourite = false;

  bool dataPreenchida = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getordereditemsforsolicitation)] action in cotacaoLista widget.
  ApiCallResponse? apiResultr2g;
  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    iconeTutorialModel = createModel(context, () => IconeTutorialModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    tabBarController?.dispose();
    iconeTutorialModel.dispose();
  }
}
