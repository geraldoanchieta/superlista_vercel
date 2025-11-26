import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/vendedores/cadastra_vendedor/cadastra_vendedor_widget.dart';
import '/index.dart';
import 'boasvidasvendedor_widget.dart' show BoasvidasvendedorWidget;
import 'package:flutter/material.dart';

class BoasvidasvendedorModel extends FlutterFlowModel<BoasvidasvendedorWidget> {
  ///  Local state fields for this page.

  bool editar = false;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataB6k = false;
  FFUploadedFile uploadedLocalFile_uploadDataB6k =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataB6k = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<VendedoresRow>? vendedor;
  // Model for cadastraVendedor component.
  late CadastraVendedorModel cadastraVendedorModel;

  @override
  void initState(BuildContext context) {
    cadastraVendedorModel = createModel(context, () => CadastraVendedorModel());
  }

  @override
  void dispose() {
    cadastraVendedorModel.dispose();
  }
}
