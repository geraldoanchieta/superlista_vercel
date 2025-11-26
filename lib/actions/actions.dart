import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future limpaSIstema(BuildContext context) async {
  FFAppState().profile = ProfileStruct();
  FFAppState().vendedroe = VendedorStruct();
  FFAppState().cotacao = CotacaoStruct();
  FFAppState().produtocotado = [];
  FFAppState().vendedores = [];
  FFAppState().listaemanalise = 0;
  FFAppState().checklistParaCotacao = [];
  FFAppState().restaurante = RestauranteStruct();
  FFAppState().solicitacaoid = 0;
  FFAppState().isRestaurante = false;
}
