import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cchecklist_widget.dart' show CchecklistWidget;
import 'package:flutter/material.dart';

class CchecklistModel extends FlutterFlowModel<CchecklistWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  ChecklistsRow? checkList;

  @override
  void initState(BuildContext context) {
    iconeTutorialModel = createModel(context, () => IconeTutorialModel());
  }

  @override
  void dispose() {
    iconeTutorialModel.dispose();
  }
}
