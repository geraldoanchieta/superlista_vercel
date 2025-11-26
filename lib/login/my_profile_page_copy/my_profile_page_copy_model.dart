import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_profile_page_copy_widget.dart' show MyProfilePageCopyWidget;
import 'package:flutter/material.dart';

class MyProfilePageCopyModel extends FlutterFlowModel<MyProfilePageCopyWidget> {
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
