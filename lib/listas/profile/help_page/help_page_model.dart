import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'help_page_widget.dart' show HelpPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HelpPageModel extends FlutterFlowModel<HelpPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    expandableExpandableController5.dispose();
    expandableExpandableController6.dispose();
  }
}
