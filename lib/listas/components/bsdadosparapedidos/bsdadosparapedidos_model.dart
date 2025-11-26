import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bsdadosparapedidos_widget.dart' show BsdadosparapedidosWidget;
import 'package:flutter/material.dart';

class BsdadosparapedidosModel
    extends FlutterFlowModel<BsdadosparapedidosWidget> {
  ///  Local state fields for this component.

  List<int> diasDeEntrega = [];
  void addToDiasDeEntrega(int item) => diasDeEntrega.add(item);
  void removeFromDiasDeEntrega(int item) => diasDeEntrega.remove(item);
  void removeAtIndexFromDiasDeEntrega(int index) =>
      diasDeEntrega.removeAt(index);
  void insertAtIndexInDiasDeEntrega(int index, int item) =>
      diasDeEntrega.insert(index, item);
  void updateDiasDeEntregaAtIndex(int index, Function(int) updateFn) =>
      diasDeEntrega[index] = updateFn(diasDeEntrega[index]);

  List<int> todosDias = [1, 2, 3, 4, 5, 6];
  void addToTodosDias(int item) => todosDias.add(item);
  void removeFromTodosDias(int item) => todosDias.remove(item);
  void removeAtIndexFromTodosDias(int index) => todosDias.removeAt(index);
  void insertAtIndexInTodosDias(int index, int item) =>
      todosDias.insert(index, item);
  void updateTodosDiasAtIndex(int index, Function(int) updateFn) =>
      todosDias[index] = updateFn(todosDias[index]);

  bool naoENtrega = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ddwtipoPagamento widget.
  String? ddwtipoPagamentoValue;
  FormFieldController<String>? ddwtipoPagamentoValueController;
  // State field(s) for textF_praso widget.
  FocusNode? textFPrasoFocusNode;
  TextEditingController? textFPrasoTextController;
  String? Function(BuildContext, String?)? textFPrasoTextControllerValidator;
  // State field(s) for CBtofretegratis widget.
  bool? cBtofretegratisValue;
  // State field(s) for text_pedidominimo widget.
  FocusNode? textPedidominimoFocusNode;
  TextEditingController? textPedidominimoTextController;
  String? Function(BuildContext, String?)?
      textPedidominimoTextControllerValidator;
  // State field(s) for textF_obs widget.
  FocusNode? textFObsFocusNode;
  TextEditingController? textFObsTextController;
  String? Function(BuildContext, String?)? textFObsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFPrasoFocusNode?.dispose();
    textFPrasoTextController?.dispose();

    textPedidominimoFocusNode?.dispose();
    textPedidominimoTextController?.dispose();

    textFObsFocusNode?.dispose();
    textFObsTextController?.dispose();
  }
}
