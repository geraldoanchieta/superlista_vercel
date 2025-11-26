import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_password_page_widget.dart' show ForgotPasswordPageWidget;
import 'package:flutter/material.dart';

class ForgotPasswordPageModel
    extends FlutterFlowModel<ForgotPasswordPageWidget> {
  ///  Local state fields for this page.

  bool enviado = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your valid email address.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter your  valid email address.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
