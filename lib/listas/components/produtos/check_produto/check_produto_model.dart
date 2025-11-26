import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'check_produto_widget.dart' show CheckProdutoWidget;
import 'package:flutter/material.dart';

class CheckProdutoModel extends FlutterFlowModel<CheckProdutoWidget> {
  ///  Local state fields for this page.

  double cmprar = 0.0;

  ItemCheckListStruct? produto;
  void updateProdutoStruct(Function(ItemCheckListStruct) updateFn) {
    updateFn(produto ??= ItemCheckListStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel1;
  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel2;
  // Stores action output result for [Bottom Sheet - bsEmbalagemCheckList] action in Icon widget.
  ItemCheckListStruct? produtoback;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (atualizaritemchecklist)] action in Button widget.
  ApiCallResponse? apiResult123;
  // Stores action output result for [Backend Call - API (atualizaritemchecklist)] action in Button widget.
  ApiCallResponse? apiResult1qw1;

  @override
  void initState(BuildContext context) {
    iconeTutorialModel1 = createModel(context, () => IconeTutorialModel());
    iconeTutorialModel2 = createModel(context, () => IconeTutorialModel());
  }

  @override
  void dispose() {
    iconeTutorialModel1.dispose();
    iconeTutorialModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
