import '/flutter_flow/flutter_flow_util.dart';
import 'tipo_de_preco_cotacao_widget.dart' show TipoDePrecoCotacaoWidget;
import 'package:flutter/material.dart';

class TipoDePrecoCotacaoModel
    extends FlutterFlowModel<TipoDePrecoCotacaoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtEMbalagemValor widget.
  FocusNode? txtEMbalagemValorFocusNode;
  TextEditingController? txtEMbalagemValorTextController;
  String? Function(BuildContext, String?)?
      txtEMbalagemValorTextControllerValidator;
  // State field(s) for txtembalagemUndBase widget.
  FocusNode? txtembalagemUndBaseFocusNode;
  TextEditingController? txtembalagemUndBaseTextController;
  String? Function(BuildContext, String?)?
      txtembalagemUndBaseTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEMbalagemValorFocusNode?.dispose();
    txtEMbalagemValorTextController?.dispose();

    txtembalagemUndBaseFocusNode?.dispose();
    txtembalagemUndBaseTextController?.dispose();
  }
}
