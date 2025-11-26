import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bs_edita_produto_pai_widget.dart' show BsEditaProdutoPaiWidget;
import 'package:flutter/material.dart';

class BsEditaProdutoPaiModel extends FlutterFlowModel<BsEditaProdutoPaiWidget> {
  ///  Local state fields for this component.

  String? categoria;

  String? unidade;

  bool alteraCat = false;

  bool alteraUnd = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  String? _txtNomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome do produto is required';
    }

    return null;
  }

  // State field(s) for DropDownCat widget.
  String? dropDownCatValue;
  FormFieldController<String>? dropDownCatValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    txtNomeTextControllerValidator = _txtNomeTextControllerValidator;
  }

  @override
  void dispose() {
    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();
  }
}
