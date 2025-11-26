import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cotacaovendedor_widget.dart' show CotacaovendedorWidget;
import 'package:flutter/material.dart';

class CotacaovendedorModel extends FlutterFlowModel<CotacaovendedorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<CotacoesRow>? cotacaoPendente;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ItensCotacaoRow>? cotadopendentes;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<VwGerenciamentoVendedoresRow>? restautanteVendedor;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<CotacoesRow>? cotacao;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ItensCotacaoRow>? cotadosEncerrados;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<VwGerenciamentoVendedoresRow>? restautanteVendedor2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
