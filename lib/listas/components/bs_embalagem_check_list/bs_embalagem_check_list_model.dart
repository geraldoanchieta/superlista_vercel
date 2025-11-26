import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bs_embalagem_check_list_widget.dart' show BsEmbalagemCheckListWidget;
import 'package:flutter/material.dart';

class BsEmbalagemCheckListModel
    extends FlutterFlowModel<BsEmbalagemCheckListWidget> {
  ///  Local state fields for this component.

  bool undBase = true;

  String? tipoUnidade;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDownEmbPrim widget.
  String? dropDownEmbPrimValue;
  FormFieldController<String>? dropDownEmbPrimValueController;
  // State field(s) for TextFieldembala widget.
  FocusNode? textFieldembalaFocusNode;
  TextEditingController? textFieldembalaTextController;
  String? Function(BuildContext, String?)?
      textFieldembalaTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldEstoque widget.
  FocusNode? textFieldEstoqueFocusNode;
  TextEditingController? textFieldEstoqueTextController;
  String? Function(BuildContext, String?)?
      textFieldEstoqueTextControllerValidator;
  // Stores action output result for [Backend Call - API (atualizaritemdalista)] action in Button widget.
  ApiCallResponse? apiResultktm;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VwChecklistDetalhadoRow>? novoCheck;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldembalaFocusNode?.dispose();
    textFieldembalaTextController?.dispose();

    textFieldEstoqueFocusNode?.dispose();
    textFieldEstoqueTextController?.dispose();
  }
}
