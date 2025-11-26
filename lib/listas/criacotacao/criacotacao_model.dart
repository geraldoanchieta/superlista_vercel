import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'criacotacao_widget.dart' show CriacotacaoWidget;
import 'package:flutter/material.dart';

class CriacotacaoModel extends FlutterFlowModel<CriacotacaoWidget> {
  ///  Local state fields for this page.

  String? tipodeMedida;

  bool? undBase = true;

  String? tipoDeValor;

  int? evolucao = 1;

  int? undBaseSelel = 0;

  String? marca;

  double? embPrimQtant;

  String? embPrimDesc;

  int? embUnidPrimaria;

  String? embSecDesc;

  double? embSecQtd;

  String? obs;

  String unidadeAtual = 'kg';

  bool alteraUnidade = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for txtMarca widget.
  FocusNode? txtMarcaFocusNode;
  TextEditingController? txtMarcaTextController;
  String? Function(BuildContext, String?)? txtMarcaTextControllerValidator;
  // State field(s) for TxtObs widget.
  FocusNode? txtObsFocusNode;
  TextEditingController? txtObsTextController;
  String? Function(BuildContext, String?)? txtObsTextControllerValidator;
  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel1;
  // Model for iconeTutorial component.
  late IconeTutorialModel iconeTutorialModel2;
  // State field(s) for ddwembprim widget.
  String? ddwembprimValue;
  FormFieldController<String>? ddwembprimValueController;
  // State field(s) for txtEMbPrimQTD widget.
  FocusNode? txtEMbPrimQTDFocusNode;
  TextEditingController? txtEMbPrimQTDTextController;
  String? Function(BuildContext, String?)? txtEMbPrimQTDTextControllerValidator;
  // State field(s) for ddwund widget.
  String? ddwundValue;
  FormFieldController<String>? ddwundValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TxtEmbSecQTD widget.
  FocusNode? txtEmbSecQTDFocusNode;
  TextEditingController? txtEmbSecQTDTextController;
  String? Function(BuildContext, String?)? txtEmbSecQTDTextControllerValidator;
  // State field(s) for ddwembSec widget.
  String? ddwembSecValue;
  FormFieldController<String>? ddwembSecValueController;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<VendedorCatalogoProdutosRow>? update;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VwItensParaCotarRow>? produto;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    iconeTutorialModel1 = createModel(context, () => IconeTutorialModel());
    iconeTutorialModel2 = createModel(context, () => IconeTutorialModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    txtMarcaFocusNode?.dispose();
    txtMarcaTextController?.dispose();

    txtObsFocusNode?.dispose();
    txtObsTextController?.dispose();

    iconeTutorialModel1.dispose();
    iconeTutorialModel2.dispose();
    txtEMbPrimQTDFocusNode?.dispose();
    txtEMbPrimQTDTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();

    txtEmbSecQTDFocusNode?.dispose();
    txtEmbSecQTDTextController?.dispose();
  }
}
