import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'orderdetail_page_copy_widget.dart' show OrderdetailPageCopyWidget;
import 'package:flutter/material.dart';

class OrderdetailPageCopyModel
    extends FlutterFlowModel<OrderdetailPageCopyWidget> {
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
