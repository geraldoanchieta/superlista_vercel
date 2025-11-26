import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cotacao_lista_vendedor_widget.dart' show CotacaoListaVendedorWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CotacaoListaVendedorModel
    extends FlutterFlowModel<CotacaoListaVendedorWidget> {
  ///  Local state fields for this page.

  bool favourite = false;

  bool dataPreenchida = false;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // Stores action output result for [Backend Call - API (finalizar preenchimento cotaca)] action in Button widget.
  ApiCallResponse? apiResultn9w;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel;
  Completer<List<VwItensParaCotarRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    iconeTutorialModel = createModel(context, () => IconeTutorialModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    tabBarController?.dispose();
    iconeTutorialModel.dispose();
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
