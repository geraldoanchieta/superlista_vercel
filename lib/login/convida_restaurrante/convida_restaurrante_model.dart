import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'convida_restaurrante_widget.dart' show ConvidaRestaurranteWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class ConvidaRestaurranteModel
    extends FlutterFlowModel<ConvidaRestaurranteWidget> {
  ///  Local state fields for this page.

  bool falhou = false;

  bool convidado = false;

  bool recusado = false;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for TextFinempresa widget.
  FocusNode? textFinempresaFocusNode;
  TextEditingController? textFinempresaTextController;
  String? Function(BuildContext, String?)?
      textFinempresaTextControllerValidator;
  // State field(s) for TextFielddd widget.
  FocusNode? textFieldddFocusNode;
  TextEditingController? textFieldddTextController;
  String? Function(BuildContext, String?)? textFieldddTextControllerValidator;
  // State field(s) for TextFinumero widget.
  FocusNode? textFinumeroFocusNode;
  TextEditingController? textFinumeroTextController;
  String? Function(BuildContext, String?)? textFinumeroTextControllerValidator;
  // Stores action output result for [Backend Call - API (criar convite beta)] action in Button widget.
  ApiCallResponse? apiResultrs31;
  Completer<List<ConvitesBetaRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    textFinempresaFocusNode?.dispose();
    textFinempresaTextController?.dispose();

    textFieldddFocusNode?.dispose();
    textFieldddTextController?.dispose();

    textFinumeroFocusNode?.dispose();
    textFinumeroTextController?.dispose();
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
