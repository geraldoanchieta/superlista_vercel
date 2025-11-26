import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/empty_component/components/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'groomings_page_widget.dart' show GroomingsPageWidget;
import 'package:flutter/material.dart';

class GroomingsPageModel extends FlutterFlowModel<GroomingsPageWidget> {
  ///  Local state fields for this page.

  bool isfav = false;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    productComponentModels =
        FlutterFlowDynamicModels(() => ProductComponentModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    productComponentModels.dispose();
  }
}
