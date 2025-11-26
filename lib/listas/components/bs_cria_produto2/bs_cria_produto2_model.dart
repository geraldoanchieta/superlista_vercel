import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bs_cria_produto2_widget.dart' show BsCriaProduto2Widget;
import 'package:flutter/material.dart';

class BsCriaProduto2Model extends FlutterFlowModel<BsCriaProduto2Widget> {
  ///  Local state fields for this component.

  bool undBase = false;

  String? tipoUnidade;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode1;
  TextEditingController? txtNomeTextController1;
  String? Function(BuildContext, String?)? txtNomeTextController1Validator;
  String? _txtNomeTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome do produto is required';
    }

    return null;
  }

  // State field(s) for DropDownCat widget.
  String? dropDownCatValue;
  FormFieldController<String>? dropDownCatValueController;
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode2;
  TextEditingController? txtNomeTextController2;
  String? Function(BuildContext, String?)? txtNomeTextController2Validator;
  // State field(s) for DropDownunBase widget.
  String? dropDownunBaseValue;
  FormFieldController<String>? dropDownunBaseValueController;
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
  // Stores action output result for [Backend Call - API (criar item lista com produto master)] action in Button widget.
  ApiCallResponse? apiResultktm;

  @override
  void initState(BuildContext context) {
    txtNomeTextController1Validator = _txtNomeTextController1Validator;
  }

  @override
  void dispose() {
    txtNomeFocusNode1?.dispose();
    txtNomeTextController1?.dispose();

    txtNomeFocusNode2?.dispose();
    txtNomeTextController2?.dispose();

    textFieldembalaFocusNode?.dispose();
    textFieldembalaTextController?.dispose();

    textFieldEstoqueFocusNode?.dispose();
    textFieldEstoqueTextController?.dispose();
  }
}
