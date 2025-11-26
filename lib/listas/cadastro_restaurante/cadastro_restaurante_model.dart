import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_restaurante_widget.dart' show CadastroRestauranteWidget;
import 'package:flutter/material.dart';

class CadastroRestauranteModel
    extends FlutterFlowModel<CadastroRestauranteWidget> {
  ///  Local state fields for this page.

  String? foto;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  bool isDataUploading_uploadDataT2x1 = false;
  FFUploadedFile uploadedLocalFile_uploadDataT2x1 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataT2x1 = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for tFDdd widget.
  FocusNode? tFDddFocusNode;
  TextEditingController? tFDddTextController;
  String? Function(BuildContext, String?)? tFDddTextControllerValidator;
  // State field(s) for TfTelefone widget.
  FocusNode? tfTelefoneFocusNode;
  TextEditingController? tfTelefoneTextController;
  String? Function(BuildContext, String?)? tfTelefoneTextControllerValidator;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    tFDddFocusNode?.dispose();
    tFDddTextController?.dispose();

    tfTelefoneFocusNode?.dispose();
    tfTelefoneTextController?.dispose();
  }
}
