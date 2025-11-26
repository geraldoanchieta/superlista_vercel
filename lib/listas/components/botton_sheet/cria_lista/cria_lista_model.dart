import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cria_lista_widget.dart' show CriaListaWidget;
import 'package:flutter/material.dart';

class CriaListaModel extends FlutterFlowModel<CriaListaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode;
  TextEditingController? shortBioTextController;
  String? Function(BuildContext, String?)? shortBioTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ListasMestrasRow? listaNova;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ChecklistsRow? checkListprimeiro;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode?.dispose();
    shortBioTextController?.dispose();
  }
}
