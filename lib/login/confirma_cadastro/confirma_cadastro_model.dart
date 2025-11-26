import '/backend/supabase/supabase.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'confirma_cadastro_widget.dart' show ConfirmaCadastroWidget;
import 'package:flutter/material.dart';

class ConfirmaCadastroModel extends FlutterFlowModel<ConfirmaCadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'please valid your confirm passsword.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please valid your new password.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ProfileRow>? profile;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    emailTextControllerValidator = _emailTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    textFieldFocusNode1?.dispose();
    emailTextController?.dispose();

    textFieldFocusNode2?.dispose();
    passwordTextController?.dispose();
  }
}
