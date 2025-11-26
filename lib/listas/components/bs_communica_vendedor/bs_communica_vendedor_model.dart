import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bs_communica_vendedor_widget.dart' show BsCommunicaVendedorWidget;
import 'package:flutter/material.dart';

class BsCommunicaVendedorModel
    extends FlutterFlowModel<BsCommunicaVendedorWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode;
  TextEditingController? shortBioTextController;
  String? Function(BuildContext, String?)? shortBioTextControllerValidator;
  // Stores action output result for [Backend Call - API (lembrar vendedor cotacao)] action in Button widget.
  ApiCallResponse? apiResultxek;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode?.dispose();
    shortBioTextController?.dispose();
  }
}
