import '/backend/supabase/supabase.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editprofile_page_widget.dart' show EditprofilePageWidget;
import 'package:flutter/material.dart';

class EditprofilePageModel extends FlutterFlowModel<EditprofilePageWidget> {
  ///  Local state fields for this page.

  String? foto;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  bool isDataUploading_uploadDataT2x = false;
  FFUploadedFile uploadedLocalFile_uploadDataT2x =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataT2x = '';

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
  // State field(s) for TextFieldFantasia widget.
  FocusNode? textFieldFantasiaFocusNode;
  TextEditingController? textFieldFantasiaTextController;
  String? Function(BuildContext, String?)?
      textFieldFantasiaTextControllerValidator;
  // State field(s) for txtAdm widget.
  FocusNode? txtAdmFocusNode;
  TextEditingController? txtAdmTextController;
  String? Function(BuildContext, String?)? txtAdmTextControllerValidator;
  // State field(s) for txtDDD widget.
  FocusNode? txtDDDFocusNode;
  TextEditingController? txtDDDTextController;
  String? Function(BuildContext, String?)? txtDDDTextControllerValidator;
  // State field(s) for txtNumero widget.
  FocusNode? txtNumeroFocusNode;
  TextEditingController? txtNumeroTextController;
  String? Function(BuildContext, String?)? txtNumeroTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<RestaurantesRow>? na;

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

    textFieldFantasiaFocusNode?.dispose();
    textFieldFantasiaTextController?.dispose();

    txtAdmFocusNode?.dispose();
    txtAdmTextController?.dispose();

    txtDDDFocusNode?.dispose();
    txtDDDTextController?.dispose();

    txtNumeroFocusNode?.dispose();
    txtNumeroTextController?.dispose();
  }
}
