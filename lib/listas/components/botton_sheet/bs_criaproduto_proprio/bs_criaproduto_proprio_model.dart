import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bs_criaproduto_proprio_widget.dart' show BsCriaprodutoProprioWidget;
import 'package:flutter/material.dart';

class BsCriaprodutoProprioModel
    extends FlutterFlowModel<BsCriaprodutoProprioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  String? _txtNomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'nome_personalizado is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  // State field(s) for DropDownCat widget.
  String? dropDownCatValue;
  FormFieldController<String>? dropDownCatValueController;
  // State field(s) for DropDownEmbPrim widget.
  String? dropDownEmbPrimValue;
  FormFieldController<String>? dropDownEmbPrimValueController;
  // State field(s) for txtQuant widget.
  FocusNode? txtQuantFocusNode;
  TextEditingController? txtQuantTextController;
  String? Function(BuildContext, String?)? txtQuantTextControllerValidator;
  String? _txtQuantTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Quantidade is required';
    }

    return null;
  }

  // State field(s) for DropDownUNd widget.
  String? dropDownUNdValue;
  FormFieldController<String>? dropDownUNdValueController;
  // State field(s) for TextFieldEstoque widget.
  FocusNode? textFieldEstoqueFocusNode;
  TextEditingController? textFieldEstoqueTextController;
  String? Function(BuildContext, String?)?
      textFieldEstoqueTextControllerValidator;
  // State field(s) for txtObs widget.
  FocusNode? txtObsFocusNode;
  TextEditingController? txtObsTextController;
  String? Function(BuildContext, String?)? txtObsTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtNomeTextControllerValidator = _txtNomeTextControllerValidator;
    txtQuantTextControllerValidator = _txtQuantTextControllerValidator;
  }

  @override
  void dispose() {
    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtQuantFocusNode?.dispose();
    txtQuantTextController?.dispose();

    textFieldEstoqueFocusNode?.dispose();
    textFieldEstoqueTextController?.dispose();

    txtObsFocusNode?.dispose();
    txtObsTextController?.dispose();
  }
}
