import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/produtos/cchecklist/cchecklist_widget.dart';
import '/listas/components/profile_component/profile_component_widget.dart';
import '/listas/components/vendedores/vendedores_component/vendedores_component_widget.dart';
import '/listas/cotacao/cotacao_widget.dart';
import '/listas/lista_pedidos_restautante/lista_pedidos_restautante_widget.dart';
import '/index.dart';
import 'home_restaurante_widget.dart' show HomeRestauranteWidget;
import 'package:flutter/material.dart';

class HomeRestauranteModel extends FlutterFlowModel<HomeRestauranteWidget> {
  ///  Local state fields for this page.

  int? bottomadded = 0;

  bool order = false;

  ///  State fields for stateful widgets in this page.

  // Model for cchecklist component.
  late CchecklistModel cchecklistModel;
  // Model for cotacao component.
  late CotacaoModel cotacaoModel;
  // Model for listaPedidosRestautante component.
  late ListaPedidosRestautanteModel listaPedidosRestautanteModel;
  // Model for ProfileComponent component.
  late ProfileComponentModel profileComponentModel;
  // Model for vendedoresComponent component.
  late VendedoresComponentModel vendedoresComponentModel;

  @override
  void initState(BuildContext context) {
    cchecklistModel = createModel(context, () => CchecklistModel());
    cotacaoModel = createModel(context, () => CotacaoModel());
    listaPedidosRestautanteModel =
        createModel(context, () => ListaPedidosRestautanteModel());
    profileComponentModel = createModel(context, () => ProfileComponentModel());
    vendedoresComponentModel =
        createModel(context, () => VendedoresComponentModel());
  }

  @override
  void dispose() {
    cchecklistModel.dispose();
    cotacaoModel.dispose();
    listaPedidosRestautanteModel.dispose();
    profileComponentModel.dispose();
    vendedoresComponentModel.dispose();
  }
}
