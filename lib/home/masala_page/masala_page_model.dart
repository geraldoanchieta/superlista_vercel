import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'masala_page_widget.dart' show MasalaPageWidget;
import 'package:flutter/material.dart';

class MasalaPageModel extends FlutterFlowModel<MasalaPageWidget> {
  ///  Local state fields for this page.

  String title = 'Masalas';

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
