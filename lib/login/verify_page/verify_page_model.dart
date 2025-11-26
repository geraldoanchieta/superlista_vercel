import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verify_page_widget.dart' show VerifyPageWidget;
import 'package:flutter/material.dart';

class VerifyPageModel extends FlutterFlowModel<VerifyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  String? _pinCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please  valid  your pincode.';
    }
    if (val.length < 6) {
      return 'Requires 6 characters.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    pinCodeController = TextEditingController();
    pinCodeControllerValidator = _pinCodeControllerValidator;
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
