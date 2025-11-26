import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'signup_page_rest_widget.dart' show SignupPageRestWidget;
import 'package:flutter/material.dart';

class SignupPageRestModel extends FlutterFlowModel<SignupPageRestWidget> {
  ///  Local state fields for this page.

  bool falhou = false;

  bool convidado = false;

  bool recusado = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  String? _txtEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter valid your email address.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Por favor insira um email válido!';
    }
    return null;
  }

  // State field(s) for txtSenha widget.
  FocusNode? txtSenhaFocusNode;
  TextEditingController? txtSenhaTextController;
  late bool txtSenhaVisibility;
  String? Function(BuildContext, String?)? txtSenhaTextControllerValidator;
  String? _txtSenhaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor insira uma senha válida!!';
    }

    if (val.length < 6) {
      return 'A senha deve ter no mínimo 6 caracteres';
    }

    return null;
  }

  // State field(s) for TextFieldconfirm widget.
  FocusNode? textFieldconfirmFocusNode;
  TextEditingController? textFieldconfirmTextController;
  late bool textFieldconfirmVisibility;
  String? Function(BuildContext, String?)?
      textFieldconfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
    txtSenhaVisibility = false;
    txtSenhaTextControllerValidator = _txtSenhaTextControllerValidator;
    textFieldconfirmVisibility = false;
  }

  @override
  void dispose() {
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtSenhaFocusNode?.dispose();
    txtSenhaTextController?.dispose();

    textFieldconfirmFocusNode?.dispose();
    textFieldconfirmTextController?.dispose();
  }
}
