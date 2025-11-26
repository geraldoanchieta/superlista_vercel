import '/backend/supabase/supabase.dart';
import '/empty_component/components/homevendedor/homevendedor_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/profile_component/profile_component_widget.dart';
import '/listas/components/vendedores/cotacaovendedor/cotacaovendedor_widget.dart';
import '/listas/components/vendedores/restaurantescomponet/restaurantescomponet_widget.dart';
import '/listas/lista_pedidos_vendedor/lista_pedidos_vendedor_widget.dart';
import '/index.dart';
import 'home_vendedor_widget.dart' show HomeVendedorWidget;
import 'package:flutter/material.dart';

class HomeVendedorModel extends FlutterFlowModel<HomeVendedorWidget> {
  ///  Local state fields for this page.

  int? bottomadded = 0;

  bool order = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in homeVendedor widget.
  List<VendedoresRow>? vendedor;
  // Stores action output result for [Backend Call - Query Rows] action in homeVendedor widget.
  List<CategoriasRow>? categorias;
  // Model for homevendedor component.
  late HomevendedorModel homevendedorModel;
  // Model for cotacaovendedor component.
  late CotacaovendedorModel cotacaovendedorModel;
  // Model for listaPedidosVendedor component.
  late ListaPedidosVendedorModel listaPedidosVendedorModel;
  // Model for ProfileComponent component.
  late ProfileComponentModel profileComponentModel;
  // Model for restaurantescomponet component.
  late RestaurantescomponetModel restaurantescomponetModel;

  @override
  void initState(BuildContext context) {
    homevendedorModel = createModel(context, () => HomevendedorModel());
    cotacaovendedorModel = createModel(context, () => CotacaovendedorModel());
    listaPedidosVendedorModel =
        createModel(context, () => ListaPedidosVendedorModel());
    profileComponentModel = createModel(context, () => ProfileComponentModel());
    restaurantescomponetModel =
        createModel(context, () => RestaurantescomponetModel());
  }

  @override
  void dispose() {
    homevendedorModel.dispose();
    cotacaovendedorModel.dispose();
    listaPedidosVendedorModel.dispose();
    profileComponentModel.dispose();
    restaurantescomponetModel.dispose();
  }
}
