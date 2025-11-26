import '/components/convidarestaiurante_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'signu_vendedor_widget.dart' show SignuVendedorWidget;
import 'package:flutter/material.dart';

class SignuVendedorModel extends FlutterFlowModel<SignuVendedorWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // Model for convidarestaiurante component.
  late ConvidarestaiuranteModel convidarestaiuranteModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    convidarestaiuranteModel =
        createModel(context, () => ConvidarestaiuranteModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    convidarestaiuranteModel.dispose();
  }
}
