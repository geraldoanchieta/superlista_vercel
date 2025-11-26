import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/produtos/produtocotacao/produtocotacao_widget.dart';
import '/index.dart';
import 'cotacao_produto_widget.dart' show CotacaoProdutoWidget;
import 'package:flutter/material.dart';

class CotacaoProdutoModel extends FlutterFlowModel<CotacaoProdutoWidget> {
  ///  Local state fields for this page.

  double cmprar = 0.0;

  ///  State fields for stateful widgets in this page.

  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel;
  // Model for produtocotacao component.
  late ProdutocotacaoModel produtocotacaoModel;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<VwDetalhesPedidoRow>? prdido;

  @override
  void initState(BuildContext context) {
    iconeTutorialModel = createModel(context, () => IconeTutorialModel());
    produtocotacaoModel = createModel(context, () => ProdutocotacaoModel());
  }

  @override
  void dispose() {
    iconeTutorialModel.dispose();
    produtocotacaoModel.dispose();
  }
}
