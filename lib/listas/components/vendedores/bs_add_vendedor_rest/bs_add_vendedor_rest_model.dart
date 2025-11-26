import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bs_add_vendedor_rest_widget.dart' show BsAddVendedorRestWidget;
import 'package:flutter/material.dart';

class BsAddVendedorRestModel extends FlutterFlowModel<BsAddVendedorRestWidget> {
  ///  Local state fields for this component.

  bool pesquisaaFeita = false;

  bool encontrado = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtDDD widget.
  FocusNode? txtDDDFocusNode;
  TextEditingController? txtDDDTextController;
  String? Function(BuildContext, String?)? txtDDDTextControllerValidator;
  String? _txtDDDTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor informe seu DDD';
    }

    if (val.length < 2) {
      return 'O DDD precisa ter 2 números';
    }
    if (val.length > 2) {
      return 'O DDD precisa ter 2 números';
    }

    return null;
  }

  // State field(s) for txtNumero widget.
  FocusNode? txtNumeroFocusNode;
  TextEditingController? txtNumeroTextController;
  String? Function(BuildContext, String?)? txtNumeroTextControllerValidator;
  String? _txtNumeroTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'POr favor informe o numnero do seu telefone';
    }

    if (val.length < 8) {
      return 'Ele deve ter no mínimo 8 dígitos';
    }
    if (val.length > 9) {
      return 'Ele deve ter no máximo 9 dígitos';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (buscarv endedor por telefone)] action in Button widget.
  ApiCallResponse? apiResult12qw;
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  String? _txtNomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor informe o seu nome';
    }

    return null;
  }

  // State field(s) for txtEmpresa widget.
  FocusNode? txtEmpresaFocusNode;
  TextEditingController? txtEmpresaTextController;
  String? Function(BuildContext, String?)? txtEmpresaTextControllerValidator;
  String? _txtEmpresaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor informe o nome da sua empresa.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (vincular vendedore xistente)] action in Button widget.
  ApiCallResponse? apiResultgb2;
  // Stores action output result for [Backend Call - API (convidarvendedor)] action in Button widget.
  ApiCallResponse? apiResultsdf;

  @override
  void initState(BuildContext context) {
    txtDDDTextControllerValidator = _txtDDDTextControllerValidator;
    txtNumeroTextControllerValidator = _txtNumeroTextControllerValidator;
    txtNomeTextControllerValidator = _txtNomeTextControllerValidator;
    txtEmpresaTextControllerValidator = _txtEmpresaTextControllerValidator;
  }

  @override
  void dispose() {
    txtDDDFocusNode?.dispose();
    txtDDDTextController?.dispose();

    txtNumeroFocusNode?.dispose();
    txtNumeroTextController?.dispose();

    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtEmpresaFocusNode?.dispose();
    txtEmpresaTextController?.dispose();
  }
}
