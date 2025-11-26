import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/vendedores/bs_add_vendedor_rest/bs_add_vendedor_rest_widget.dart';
import '/listas/restaurante/restaurante_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'vendedores_component_model.dart';
export 'vendedores_component_model.dart';

class VendedoresComponentWidget extends StatefulWidget {
  const VendedoresComponentWidget({super.key});

  @override
  State<VendedoresComponentWidget> createState() =>
      _VendedoresComponentWidgetState();
}

class _VendedoresComponentWidgetState extends State<VendedoresComponentWidget> {
  late VendedoresComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendedoresComponentModel());

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
                      'Vendedores ',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Satoshi',
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      FFAppState().restaurante.nomeFantasia,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Satoshi',
                            color: FlutterFlowTheme.of(context).black40,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      wrapWithModel(
                        model: _model.iconeTutorialModel,
                        updateCallback: () => safeSetState(() {}),
                        child: IconeTutorialWidget(
                          tutorial: 'Cotações',
                          ordem: 1,
                          nome: '+  Vendedor',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: FutureBuilder<List<VwGerenciamentoVendedoresRow>>(
            future: VwGerenciamentoVendedoresTable().queryRows(
              queryFn: (q) => q
                  .eqOrNull(
                    'restaurante_id',
                    FFAppState().restaurante.id,
                  )
                  .order('status'),
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
                child: Container(
                  decoration: BoxDecoration(),
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      12.0,
                      0,
                      12.0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 20.0, 0.0),
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
                                  child: BsAddVendedorRestWidget(),
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
                                    'Adicionar novo vendedor',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .success,
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
                      Builder(
                        builder: (context) {
                          final vendedores =
                              containerVwGerenciamentoVendedoresRowList
                                  .toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: vendedores.length,
                            itemBuilder: (context, vendedoresIndex) {
                              final vendedoresItem =
                                  vendedores[vendedoresIndex];
                              return Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: vendedoresItem.status == 'confirmado'
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                        : Color(0x98F1F065),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Container(
                                      child: RestauranteWidget(
                                        key: Key(
                                            'Keytyi_${vendedoresIndex}_of_${vendedores.length}'),
                                        restaurante: vendedoresItem,
                                        exivbicao: false,
                                        modo: 'restaurante',
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
