import '/dialog_component/orderempty/orderempty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'myorder_page_widget.dart' show MyorderPageWidget;
import 'package:flutter/material.dart';

class MyorderPageModel extends FlutterFlowModel<MyorderPageWidget> {
  ///  Local state fields for this page.

  bool order = false;

  ///  State fields for stateful widgets in this page.

  // Model for Orderempty component.
  late OrderemptyModel orderemptyModel;

  @override
  void initState(BuildContext context) {
    orderemptyModel = createModel(context, () => OrderemptyModel());
  }

  @override
  void dispose() {
    orderemptyModel.dispose();
  }
}
