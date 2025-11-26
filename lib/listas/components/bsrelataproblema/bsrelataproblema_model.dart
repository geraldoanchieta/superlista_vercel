import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bsrelataproblema_widget.dart' show BsrelataproblemaWidget;
import 'package:flutter/material.dart';

class BsrelataproblemaModel extends FlutterFlowModel<BsrelataproblemaWidget> {
  ///  Local state fields for this component.

  String? motivo;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode;
  TextEditingController? shortBioTextController;
  String? Function(BuildContext, String?)? shortBioTextControllerValidator;
  // Stores action output result for [Backend Call - API (criar alerta erro)] action in Button widget.
  ApiCallResponse? apiResult9xa;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode?.dispose();
    shortBioTextController?.dispose();
  }
}
