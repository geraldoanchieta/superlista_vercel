import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/botton_sheet/bs_convida_restaurante/bs_convida_restaurante_widget.dart';
import '/listas/restaurante/restaurante_widget.dart';
import '/listas/restaurantes/restaurantes_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'restaurantescomponet_model.dart';
export 'restaurantescomponet_model.dart';

class RestaurantescomponetWidget extends StatefulWidget {
  const RestaurantescomponetWidget({super.key});

  @override
  State<RestaurantescomponetWidget> createState() =>
      _RestaurantescomponetWidgetState();
}

class _RestaurantescomponetWidgetState
    extends State<RestaurantescomponetWidget> {
  late RestaurantescomponetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RestaurantescomponetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 63.0, 0.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Restaurantes',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Satoshi',
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          FFAppState().vendedroe.nome,
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).black40,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Text(
                          FFAppState().vendedroe.nomeEmpresa,
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).black40,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(SearchPageWidget.routeName);
                            },
                            child: Container(
                              width: 48.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(16.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/search.png',
                                    width: 24.0,
                                    height: 24.0,
                                    fit: BoxFit.cover,
                                    alignment: Alignment(0.0, 0.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: BsConvidaRestauranteWidget(),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).success,
                          size: 40.0,
                        ),
                        Text(
                          'Adicionar novo restaurante',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).success,
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        FutureBuilder<List<VwRestaurantesDoVendedorRow>>(
          future: VwRestaurantesDoVendedorTable().queryRows(
            queryFn: (q) => q
                .eqOrNull(
                  'vendedor_id',
                  FFAppState().vendedroe.id,
                )
                .neqOrNull(
                  'situacao',
                  'ativa',
                )
                .order('situacao'),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            List<VwRestaurantesDoVendedorRow>
                containerVwRestaurantesDoVendedorRowList = snapshot.data!;

            return Container(
              decoration: BoxDecoration(),
              child: Builder(
                builder: (context) {
                  final restaurantes =
                      containerVwRestaurantesDoVendedorRowList.toList();

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: restaurantes.length,
                    itemBuilder: (context, restaurantesIndex) {
                      final restaurantesItem = restaurantes[restaurantesIndex];
                      return Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: restaurantesItem.situacao == 'ativa'
                                ? FlutterFlowTheme.of(context)
                                    .secondaryBackground
                                : Color(0x98F1F065),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Container(
                            height: 200.0,
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: RestaurantesWidget(
                                key: Key(
                                    'Keyeq2_${restaurantesIndex}_of_${restaurantes.length}'),
                                restaurante: restaurantesItem,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
        Expanded(
          child: FutureBuilder<List<VwGerenciamentoVendedoresRow>>(
            future: VwGerenciamentoVendedoresTable().queryRows(
              queryFn: (q) => q
                  .eqOrNull(
                    'vendedor_id',
                    FFAppState().vendedroe.id,
                  )
                  .order('nome_restaurante'),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              List<VwGerenciamentoVendedoresRow>
                  containerVwGerenciamentoVendedoresRowList = snapshot.data!;

              return Container(
                decoration: BoxDecoration(),
                child: Builder(
                  builder: (context) {
                    final restaurantes =
                        containerVwGerenciamentoVendedoresRowList.toList();

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: restaurantes.length,
                      itemBuilder: (context, restaurantesIndex) {
                        final restaurantesItem =
                            restaurantes[restaurantesIndex];
                        return Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: RestauranteWidget(
                                  key: Key(
                                      'Keyduq_${restaurantesIndex}_of_${restaurantes.length}'),
                                  restaurante: restaurantesItem,
                                  exivbicao: false,
                                  modo: 'vendedor',
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
