import '/empty_component/components/category_component/category_component_widget.dart';
import '/empty_component/components/home_component/home_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/profile_component/profile_component_widget.dart';
import '/listas/lista_pedidos_restautante/lista_pedidos_restautante_widget.dart';
import 'bottom_page_widget.dart' show BottomPageWidget;
import 'package:flutter/material.dart';

class BottomPageModel extends FlutterFlowModel<BottomPageWidget> {
  ///  Local state fields for this page.

  int? bottomadded = 0;

  bool order = false;

  ///  State fields for stateful widgets in this page.

  // Model for HomeComponent component.
  late HomeComponentModel homeComponentModel;
  // Model for CategoryComponent component.
  late CategoryComponentModel categoryComponentModel;
  // Model for listaPedidosRestautante component.
  late ListaPedidosRestautanteModel listaPedidosRestautanteModel;
  // Model for ProfileComponent component.
  late ProfileComponentModel profileComponentModel;

  @override
  void initState(BuildContext context) {
    homeComponentModel = createModel(context, () => HomeComponentModel());
    categoryComponentModel =
        createModel(context, () => CategoryComponentModel());
    listaPedidosRestautanteModel =
        createModel(context, () => ListaPedidosRestautanteModel());
    profileComponentModel = createModel(context, () => ProfileComponentModel());
  }

  @override
  void dispose() {
    homeComponentModel.dispose();
    categoryComponentModel.dispose();
    listaPedidosRestautanteModel.dispose();
    profileComponentModel.dispose();
  }
}
