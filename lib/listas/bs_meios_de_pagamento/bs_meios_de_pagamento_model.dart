import '/flutter_flow/flutter_flow_util.dart';
import 'bs_meios_de_pagamento_widget.dart' show BsMeiosDePagamentoWidget;
import 'package:flutter/material.dart';

class BsMeiosDePagamentoModel
    extends FlutterFlowModel<BsMeiosDePagamentoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode;
  TextEditingController? shortBioTextController;
  String? Function(BuildContext, String?)? shortBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode?.dispose();
    shortBioTextController?.dispose();
  }
}
