import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/empty_component/search_empty/search_empty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  Local state fields for this page.

  bool focus = false;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for Textfiled_search widget.
  FocusNode? textfiledSearchFocusNode;
  TextEditingController? textfiledSearchTextController;
  String? Function(BuildContext, String?)?
      textfiledSearchTextControllerValidator;
  // Model for SearchEmpty component.
  late SearchEmptyModel searchEmptyModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    searchEmptyModel = createModel(context, () => SearchEmptyModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    textfiledSearchFocusNode?.dispose();
    textfiledSearchTextController?.dispose();

    searchEmptyModel.dispose();
  }
}
