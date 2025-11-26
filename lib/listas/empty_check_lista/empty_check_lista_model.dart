import '/backend/api_requests/api_calls.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'empty_check_lista_widget.dart' show EmptyCheckListaWidget;
import 'package:flutter/material.dart';

class EmptyCheckListaModel extends FlutterFlowModel<EmptyCheckListaWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (Inicia Cotacao com checkList)] action in Button widget.
  ApiCallResponse? solitcitacaocheck;
  // Stores action output result for [Backend Call - API (publica cotacao)] action in Button widget.
  ApiCallResponse? apiResult1y83;

  @override
  void initState(BuildContext context) {
    iconeTutorialModel = createModel(context, () => IconeTutorialModel());
  }

  @override
  void dispose() {
    iconeTutorialModel.dispose();
  }
}
