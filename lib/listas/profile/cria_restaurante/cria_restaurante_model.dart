import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cria_restaurante_widget.dart' show CriaRestauranteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriaRestauranteModel extends FlutterFlowModel<CriaRestauranteWidget> {
  ///  Local state fields for this page.

  bool verificado = true;

  bool alterarnomefantazia = false;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for TXTcnpj widget.
  FocusNode? tXTcnpjFocusNode;
  TextEditingController? tXTcnpjTextController;
  late MaskTextInputFormatter tXTcnpjMask;
  String? Function(BuildContext, String?)? tXTcnpjTextControllerValidator;
  String? _tXTcnpjTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'CNPJ is required';
    }

    if (val.length < 18) {
      return 'Requires at least 18 characters.';
    }
    if (val.length > 18) {
      return 'Maximum 18 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (consulta cnpj)] action in Button widget.
  ApiCallResponse? apiResultnmd;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<RestaurantesRow>? verificaEmpresa;
  bool isDataUploading_uploadDataUl2 = false;
  FFUploadedFile uploadedLocalFile_uploadDataUl2 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataUl2 = '';

  // State field(s) for TextFieldFantasia widget.
  FocusNode? textFieldFantasiaFocusNode;
  TextEditingController? textFieldFantasiaTextController;
  String? Function(BuildContext, String?)?
      textFieldFantasiaTextControllerValidator;
  // State field(s) for txtAdm widget.
  FocusNode? txtAdmFocusNode;
  TextEditingController? txtAdmTextController;
  String? Function(BuildContext, String?)? txtAdmTextControllerValidator;
  String? _txtAdmTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Administrador is required';
    }

    if (val.length < 3) {
      return 'Inform o nome do ADM';
    }

    return null;
  }

  // State field(s) for txtDDD widget.
  FocusNode? txtDDDFocusNode;
  TextEditingController? txtDDDTextController;
  String? Function(BuildContext, String?)? txtDDDTextControllerValidator;
  String? _txtDDDTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'DDD is required';
    }

    if (val.length < 2) {
      return 'DDD inválido';
    }
    if (val.length > 2) {
      return 'DDD inválido';
    }

    return null;
  }

  // State field(s) for txtNumero widget.
  FocusNode? txtNumeroFocusNode;
  TextEditingController? txtNumeroTextController;
  String? Function(BuildContext, String?)? txtNumeroTextControllerValidator;
  String? _txtNumeroTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Número is required';
    }

    if (val.length < 8) {
      return 'Número Inválido';
    }
    if (val.length > 9) {
      return 'Número Inválido';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // Stores action output result for [Backend Call - API (criar restaurante e associar perfil)] action in Button widget.
  ApiCallResponse? apiResulttfp;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    tXTcnpjTextControllerValidator = _tXTcnpjTextControllerValidator;
    txtAdmTextControllerValidator = _txtAdmTextControllerValidator;
    txtDDDTextControllerValidator = _txtDDDTextControllerValidator;
    txtNumeroTextControllerValidator = _txtNumeroTextControllerValidator;
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    tXTcnpjFocusNode?.dispose();
    tXTcnpjTextController?.dispose();

    textFieldFantasiaFocusNode?.dispose();
    textFieldFantasiaTextController?.dispose();

    txtAdmFocusNode?.dispose();
    txtAdmTextController?.dispose();

    txtDDDFocusNode?.dispose();
    txtDDDTextController?.dispose();

    txtNumeroFocusNode?.dispose();
    txtNumeroTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController6?.dispose();
  }
}
