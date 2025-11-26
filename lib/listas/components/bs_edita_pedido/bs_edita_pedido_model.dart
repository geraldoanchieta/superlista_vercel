import '/backend/api_requests/api_calls.dart';
import '/components/pedido_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bs_edita_pedido_widget.dart' show BsEditaPedidoWidget;
import 'package:flutter/material.dart';

class BsEditaPedidoModel extends FlutterFlowModel<BsEditaPedidoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for pedidoComponent component.
  late PedidoComponentModel pedidoComponentModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (editar quantidade item pedido)] action in Button widget.
  ApiCallResponse? apiResultoi3Copy;
  // Stores action output result for [Backend Call - API (deletar item do pedido)] action in Button widget.
  ApiCallResponse? apiResultoi344;

  @override
  void initState(BuildContext context) {
    pedidoComponentModel = createModel(context, () => PedidoComponentModel());
  }

  @override
  void dispose() {
    pedidoComponentModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
