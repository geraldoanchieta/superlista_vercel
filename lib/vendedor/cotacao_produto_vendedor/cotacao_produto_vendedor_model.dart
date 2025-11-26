import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/produtos/produtocotacao/produtocotacao_widget.dart';
import '/index.dart';
import 'cotacao_produto_vendedor_widget.dart' show CotacaoProdutoVendedorWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CotacaoProdutoVendedorModel
    extends FlutterFlowModel<CotacaoProdutoVendedorWidget> {
  ///  Local state fields for this page.

  double cmprar = 0.0;

  String tipoMedida = 'kg';

  ///  State fields for stateful widgets in this page.

  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel1;
  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel2;
  Completer<List<VwCatalogoUltimoPrecoRow>>? requestCompleter;
  // Stores action output result for [Bottom Sheet - bsCatalogoDoVendedor] action in Row widget.
  bool? catalogoAtualisacao;
  // Model for produtocotacao component.
  late ProdutocotacaoModel produtocotacaoModel;
  // Stores action output result for [Bottom Sheet - BsAtualisaCotacao] action in Container widget.
  bool? atualisar;

  @override
  void initState(BuildContext context) {
    iconeTutorialModel1 = createModel(context, () => IconeTutorialModel());
    iconeTutorialModel2 = createModel(context, () => IconeTutorialModel());
    produtocotacaoModel = createModel(context, () => ProdutocotacaoModel());
  }

  @override
  void dispose() {
    iconeTutorialModel1.dispose();
    iconeTutorialModel2.dispose();
    produtocotacaoModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
