import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/empty_component/components/product_component/product_component_widget.dart';
import '/empty_component/favourite_empty/favourite_empty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'favourite_page_widget.dart' show FavouritePageWidget;
import 'package:flutter/material.dart';

class FavouritePageModel extends FlutterFlowModel<FavouritePageWidget> {
  ///  Local state fields for this page.

  bool favourite = false;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels;
  // Model for FavouriteEmpty component.
  late FavouriteEmptyModel favouriteEmptyModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    productComponentModels =
        FlutterFlowDynamicModels(() => ProductComponentModel());
    favouriteEmptyModel = createModel(context, () => FavouriteEmptyModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    productComponentModels.dispose();
    favouriteEmptyModel.dispose();
  }
}
