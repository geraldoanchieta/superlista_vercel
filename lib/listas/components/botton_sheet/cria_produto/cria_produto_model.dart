import '/flutter_flow/flutter_flow_util.dart';
import 'cria_produto_widget.dart' show CriaProdutoWidget;
import 'package:flutter/material.dart';

class CriaProdutoModel extends FlutterFlowModel<CriaProdutoWidget> {
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
