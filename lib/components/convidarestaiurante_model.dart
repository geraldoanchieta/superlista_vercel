import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'convidarestaiurante_widget.dart' show ConvidarestaiuranteWidget;
import 'package:flutter/material.dart';

class ConvidarestaiuranteModel
    extends FlutterFlowModel<ConvidarestaiuranteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldVend widget.
  FocusNode? textFieldVendFocusNode;
  TextEditingController? textFieldVendTextController;
  String? Function(BuildContext, String?)? textFieldVendTextControllerValidator;
  // State field(s) for TextFieldEmp widget.
  FocusNode? textFieldEmpFocusNode;
  TextEditingController? textFieldEmpTextController;
  String? Function(BuildContext, String?)? textFieldEmpTextControllerValidator;
  // State field(s) for TextFieldDDD widget.
  FocusNode? textFieldDDDFocusNode;
  TextEditingController? textFieldDDDTextController;
  String? Function(BuildContext, String?)? textFieldDDDTextControllerValidator;
  // State field(s) for TextFieldZAp widget.
  FocusNode? textFieldZApFocusNode;
  TextEditingController? textFieldZApTextController;
  String? Function(BuildContext, String?)? textFieldZApTextControllerValidator;
  // Stores action output result for [Backend Call - API (convidar empresa por vendedor)] action in Button widget.
  ApiCallResponse? apiResult71i;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldVendFocusNode?.dispose();
    textFieldVendTextController?.dispose();

    textFieldEmpFocusNode?.dispose();
    textFieldEmpTextController?.dispose();

    textFieldDDDFocusNode?.dispose();
    textFieldDDDTextController?.dispose();

    textFieldZApFocusNode?.dispose();
    textFieldZApTextController?.dispose();
  }
}
