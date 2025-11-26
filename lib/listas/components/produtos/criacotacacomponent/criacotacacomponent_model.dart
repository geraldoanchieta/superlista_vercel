import '/backend/api_requests/api_calls.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'criacotacacomponent_widget.dart' show CriacotacacomponentWidget;
import 'package:flutter/material.dart';

class CriacotacacomponentModel
    extends FlutterFlowModel<CriacotacacomponentWidget> {
  ///  Local state fields for this component.

  int? evolucao = 1;

  int? undBaseSelel = 0;

  String? tipoDeValor;

  bool? undBase = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter valid your card holder name.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel1;
  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel2;
  // State field(s) for ddwtipo widget.
  String? ddwtipoValue;
  FormFieldController<String>? ddwtipoValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for ddwund widget.
  String? ddwundValue;
  FormFieldController<String>? ddwundValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter valid your expire date.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Cria novo item cotacao)] action in Button widget.
  ApiCallResponse? apiResult3io;
  // Stores action output result for [Backend Call - API (Cria novo item cotacao)] action in Button widget.
  ApiCallResponse? apiResult3ez;
  // State field(s) for TfQuantMin widget.
  FocusNode? tfQuantMinFocusNode;
  TextEditingController? tfQuantMinTextController;
  String? Function(BuildContext, String?)? tfQuantMinTextControllerValidator;
  String? _tfQuantMinTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter valid your cvv';
    }

    return null;
  }

  // State field(s) for ddwembSec widget.
  String? ddwembSecValue;
  FormFieldController<String>? ddwembSecValueController;
  // Stores action output result for [Backend Call - API (Cria novo item cotacao)] action in Button widget.
  ApiCallResponse? apiResultkio;
  // Stores action output result for [Backend Call - API (Cria novo item cotacao)] action in Button widget.
  ApiCallResponse? apiResult3ezCopy;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    iconeTutorialModel1 = createModel(context, () => IconeTutorialModel());
    iconeTutorialModel2 = createModel(context, () => IconeTutorialModel());
    textController4Validator = _textController4Validator;
    tfQuantMinTextControllerValidator = _tfQuantMinTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    iconeTutorialModel1.dispose();
    iconeTutorialModel2.dispose();
    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    tfQuantMinFocusNode?.dispose();
    tfQuantMinTextController?.dispose();
  }
}
