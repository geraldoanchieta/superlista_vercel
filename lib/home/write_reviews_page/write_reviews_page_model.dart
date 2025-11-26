import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'write_reviews_page_widget.dart' show WriteReviewsPageWidget;
import 'package:flutter/material.dart';

class WriteReviewsPageModel extends FlutterFlowModel<WriteReviewsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please valid your review.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
