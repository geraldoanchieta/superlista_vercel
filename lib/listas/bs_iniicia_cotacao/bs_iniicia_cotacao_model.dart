import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/restaurante/restaurante_widget.dart';
import 'bs_iniicia_cotacao_widget.dart' show BsIniiciaCotacaoWidget;
import 'package:flutter/material.dart';

class BsIniiciaCotacaoModel extends FlutterFlowModel<BsIniiciaCotacaoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in BsIniiciaCotacao widget.
  List<VwGerenciamentoVendedoresRow>? restautanteVendedor;
  // Model for restaurante component.
  late RestauranteModel restauranteModel;
  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (iniciar cotacao)] action in Button widget.
  ApiCallResponse? apiResultjcw;

  @override
  void initState(BuildContext context) {
    restauranteModel = createModel(context, () => RestauranteModel());
    iconeTutorialModel = createModel(context, () => IconeTutorialModel());
  }

  @override
  void dispose() {
    restauranteModel.dispose();
    iconeTutorialModel.dispose();
  }
}
