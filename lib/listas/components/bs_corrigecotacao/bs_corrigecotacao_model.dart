import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bs_corrigecotacao_widget.dart' show BsCorrigecotacaoWidget;
import 'package:flutter/material.dart';

class BsCorrigecotacaoModel extends FlutterFlowModel<BsCorrigecotacaoWidget> {
  ///  Local state fields for this component.

  bool editar = false;

  double? valor;

  bool alterar = false;

  String tipoDePreco = 'preco_por_pacote';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<VwCatalogoUltimoPrecoRow>? cotacao;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<VendedorCatalogoProdutosRow>? catalogo;
  // State field(s) for txtValorUndbase widget.
  FocusNode? txtValorUndbaseFocusNode;
  TextEditingController? txtValorUndbaseTextController;
  String? Function(BuildContext, String?)?
      txtValorUndbaseTextControllerValidator;
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
  // Stores action output result for [Backend Call - API (editar cotacao Atual)] action in Button widget.
  ApiCallResponse? apiResult2za;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtValorUndbaseFocusNode?.dispose();
    txtValorUndbaseTextController?.dispose();

    txtEMbalagemValorFocusNode?.dispose();
    txtEMbalagemValorTextController?.dispose();

    txtembalagemUndBaseFocusNode?.dispose();
    txtembalagemUndBaseTextController?.dispose();
  }
}
