import '/empty_component/components/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_component_widget.dart' show HomeComponentWidget;
import 'package:flutter/material.dart';

class HomeComponentModel extends FlutterFlowModel<HomeComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels1;
  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels2;

  @override
  void initState(BuildContext context) {
    productComponentModels1 =
        FlutterFlowDynamicModels(() => ProductComponentModel());
    productComponentModels2 =
        FlutterFlowDynamicModels(() => ProductComponentModel());
  }

  @override
  void dispose() {
    productComponentModels1.dispose();
    productComponentModels2.dispose();
  }
}
