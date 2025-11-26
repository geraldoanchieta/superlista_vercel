import '/empty_component/components/categories_all_contain/categories_all_contain_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'category_component_widget.dart' show CategoryComponentWidget;
import 'package:flutter/material.dart';

class CategoryComponentModel extends FlutterFlowModel<CategoryComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for CategoriesAllContain dynamic component.
  late FlutterFlowDynamicModels<CategoriesAllContainModel>
      categoriesAllContainModels;

  @override
  void initState(BuildContext context) {
    categoriesAllContainModels =
        FlutterFlowDynamicModels(() => CategoriesAllContainModel());
  }

  @override
  void dispose() {
    categoriesAllContainModels.dispose();
  }
}
