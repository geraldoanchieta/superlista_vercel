import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'security_page_widget.dart' show SecurityPageWidget;
import 'package:flutter/material.dart';

class SecurityPageModel extends FlutterFlowModel<SecurityPageWidget> {
  ///  Local state fields for this page.

  bool faceid = false;

  bool notifyid = false;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
  }
}
