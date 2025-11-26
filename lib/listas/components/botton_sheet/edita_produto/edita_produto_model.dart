import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edita_produto_widget.dart' show EditaProdutoWidget;
import 'package:flutter/material.dart';

class EditaProdutoModel extends FlutterFlowModel<EditaProdutoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode1;
  TextEditingController? shortBioTextController1;
  String? Function(BuildContext, String?)? shortBioTextController1Validator;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode2;
  TextEditingController? shortBioTextController2;
  String? Function(BuildContext, String?)? shortBioTextController2Validator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VwChecklistDetalhadoRow>? checkItem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode1?.dispose();
    shortBioTextController1?.dispose();

    shortBioFocusNode2?.dispose();
    shortBioTextController2?.dispose();
  }
}
