import '/empty_component/components/categories_all_contain/categories_all_contain_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'category_page_widget.dart' show CategoryPageWidget;
import 'package:flutter/material.dart';

class CategoryPageModel extends FlutterFlowModel<CategoryPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // Models for CategoriesAllContain dynamic component.
  late FlutterFlowDynamicModels<CategoriesAllContainModel>
      categoriesAllContainModels;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    categoriesAllContainModels =
        FlutterFlowDynamicModels(() => CategoriesAllContainModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    categoriesAllContainModels.dispose();
  }
}
