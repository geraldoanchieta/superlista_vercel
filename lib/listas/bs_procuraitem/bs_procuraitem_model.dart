import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bs_procuraitem_widget.dart' show BsProcuraitemWidget;
import 'package:flutter/material.dart';

class BsProcuraitemModel extends FlutterFlowModel<BsProcuraitemWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode;
  TextEditingController? shortBioTextController;
  String? Function(BuildContext, String?)? shortBioTextControllerValidator;
  // Stores action output result for [Backend Call - API (buscar produtos master)] action in shortBio widget.
  ApiCallResponse? apiResultalh;
  // Stores action output result for [Backend Call - API (buscar itens solicitados )] action in shortBio widget.
  ApiCallResponse? apiResultalg;
  // Stores action output result for [Backend Call - API (buscar itens checkList)] action in shortBio widget.
  ApiCallResponse? apiResultali;
  // Stores action output result for [Backend Call - Query Rows] action in Column widget.
  List<CategoriasRow>? acrtegoria;
  // Stores action output result for [Backend Call - Query Rows] action in Column widget.
  List<ProdutosMasterRow>? produtoMaster;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<VwDetalhesItensSolicitadosRow>? solicitacao;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<VwChecklistDetalhadoRow>? checkList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode?.dispose();
    shortBioTextController?.dispose();
  }
}
