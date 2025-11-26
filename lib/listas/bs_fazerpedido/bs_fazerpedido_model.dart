import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bs_fazerpedido_widget.dart' show BsFazerpedidoWidget;
import 'package:flutter/material.dart';

class BsFazerpedidoModel extends FlutterFlowModel<BsFazerpedidoWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (adicionar item ao pedido)] action in Button widget.
  ApiCallResponse? apiResultoi3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (adicionar item ao pedido)] action in Button widget.
  ApiCallResponse? apiResultoi3Copy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
