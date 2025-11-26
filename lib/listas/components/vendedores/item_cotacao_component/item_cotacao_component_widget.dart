import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/botton_sheet/bs_cadastra_vendedor/bs_cadastra_vendedor_widget.dart';
import '/listas/vendedores/vendedores_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'item_cotacao_component_model.dart';
export 'item_cotacao_component_model.dart';

class ItemCotacaoComponentWidget extends StatefulWidget {
  const ItemCotacaoComponentWidget({
    super.key,
    required this.items,
  });

  final VwDetalhesItensSolicitadosRow? items;

  @override
  State<ItemCotacaoComponentWidget> createState() =>
      _ItemCotacaoComponentWidgetState();
}

class _ItemCotacaoComponentWidgetState
    extends State<ItemCotacaoComponentWidget> {
  late ItemCotacaoComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemCotacaoComponentModel());

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
                      valueOrDefault<String>(
                        widget.items?.nomeProduto,
                        'nome',
                      ),
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
                                  child: BsCadastraVendedorWidget(),
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
                                    child: VendedoresWidget(
                                      key: Key(
                                          'Keyt8i_${vendedoresIndex}_of_${vendedores.length}'),
                                      vendedor: vendedoresItem,
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
