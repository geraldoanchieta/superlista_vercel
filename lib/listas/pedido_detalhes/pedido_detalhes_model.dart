import '/backend/api_requests/api_calls.dart';
import '/components/icone_tutorial_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pedido_detalhes_widget.dart' show PedidoDetalhesWidget;
import 'package:flutter/material.dart';

class PedidoDetalhesModel extends FlutterFlowModel<PedidoDetalhesWidget> {
  ///  Local state fields for this page.

  DateTime? data;

  String? prazo = 'À vista';

  String? pagamento = 'Boleto';

  String? linkPedido;

  bool pedidoEnviado = false;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // Stores action output result for [Bottom Sheet - BsMeiosDePagamento] action in Icon widget.
  String? modalidade;
  // Stores action output result for [Bottom Sheet - BsMeiosDePagamento] action in Icon widget.
  String? prazoBs;
  DateTime? datePicked1;
  // Stores action output result for [Bottom Sheet - BsMeiosDePagamento] action in Icon widget.
  String? modalidaderestaurante;
  // Stores action output result for [Bottom Sheet - BsMeiosDePagamento] action in Icon widget.
  String? prazoRestaurnte;
  DateTime? datePicked2;
  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel1;
  // Stores action output result for [Backend Call - API (gerar e enviar pedido)] action in Button widget.
  ApiCallResponse? apiResult7bb;
  // Stores action output result for [Backend Call - API (gerar e enviar pedido)] action in Button widget.
  ApiCallResponse? apiResult7bbb;
  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel2;
  // Stores action output result for [Backend Call - API (marcar pedido feito)] action in Button widget.
  ApiCallResponse? apiResult9fn;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    iconeTutorialModel1 = createModel(context, () => IconeTutorialModel());
    iconeTutorialModel2 = createModel(context, () => IconeTutorialModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    iconeTutorialModel1.dispose();
    iconeTutorialModel2.dispose();
  }
}
