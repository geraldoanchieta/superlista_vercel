import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'reset_password_page_widget.dart' show ResetPasswordPageWidget;
import 'package:flutter/material.dart';

class ResetPasswordPageModel extends FlutterFlowModel<ResetPasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please valid your new password.';
    }

    return null;
  }

  // State field(s) for TextFieldconfirm widget.
  FocusNode? textFieldconfirmFocusNode;
  TextEditingController? textFieldconfirmTextController;
  late bool textFieldconfirmVisibility;
  String? Function(BuildContext, String?)?
      textFieldconfirmTextControllerValidator;
  String? _textFieldconfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'please valid your confirm passsword.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    textFieldconfirmVisibility = false;
    textFieldconfirmTextControllerValidator =
        _textFieldconfirmTextControllerValidator;
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    textFieldFocusNode?.dispose();
    passwordTextController?.dispose();

    textFieldconfirmFocusNode?.dispose();
    textFieldconfirmTextController?.dispose();
  }
}
