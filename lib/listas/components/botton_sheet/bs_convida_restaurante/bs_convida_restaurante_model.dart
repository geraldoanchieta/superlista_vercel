import '/components/convidarestaiurante_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bs_convida_restaurante_widget.dart' show BsConvidaRestauranteWidget;
import 'package:flutter/material.dart';

class BsConvidaRestauranteModel
    extends FlutterFlowModel<BsConvidaRestauranteWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for convidarestaiurante component.
  late ConvidarestaiuranteModel convidarestaiuranteModel;

  @override
  void initState(BuildContext context) {
    convidarestaiuranteModel =
        createModel(context, () => ConvidarestaiuranteModel());
  }

  @override
  void dispose() {
    convidarestaiuranteModel.dispose();
  }
}
