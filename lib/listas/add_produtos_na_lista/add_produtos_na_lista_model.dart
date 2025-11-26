import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/add_produtos/add_produtos_widget.dart';
import '/index.dart';
import 'add_produtos_na_lista_widget.dart' show AddProdutosNaListaWidget;
import 'package:flutter/material.dart';

class AddProdutosNaListaModel
    extends FlutterFlowModel<AddProdutosNaListaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // Model for addProdutos component.
  late AddProdutosModel addProdutosModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    addProdutosModel = createModel(context, () => AddProdutosModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    addProdutosModel.dispose();
  }
}
