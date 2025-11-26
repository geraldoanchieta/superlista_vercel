import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/bs_fazerpedido/bs_fazerpedido_widget.dart';
import '/listas/components/bs_edita_pedido/bs_edita_pedido_widget.dart';
import '/listas/components/produtos/produto_catalogo/produto_catalogo_widget.dart';
import '/listas/components/produtos/produtocotacao/produtocotacao_widget.dart';
import '/listas/empty_list/empty_list_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cotacao_produto_model.dart';
export 'cotacao_produto_model.dart';

class CotacaoProdutoWidget extends StatefulWidget {
  const CotacaoProdutoWidget({
    super.key,
    required this.produto,
  });

  final VwDetalhesItensSolicitadosRow? produto;

  static String routeName = 'cotacaoProduto';
  static String routePath = 'cotacaoProduto';

  @override
  State<CotacaoProdutoWidget> createState() => _CotacaoProdutoWidgetState();
}

class _CotacaoProdutoWidgetState extends State<CotacaoProdutoWidget> {
  late CotacaoProdutoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CotacaoProdutoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            FFAppState()
                                .fotos
                                .where((e) =>
                                    widget.produto?.itemSolicitadoId == e.id)
                                .toList()
                                .firstOrNull
                                ?.foto,
                            'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/varanda/Design_sem_nome_(3).png',
                          ),
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 63.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await ItensSolicitadosTable().update(
                                data: {
                                  'comprado': true,
                                },
                                matchingRows: (rows) => rows.eqOrNull(
                                  'id',
                                  widget.produto?.itemSolicitadoId,
                                ),
                              );

                              context.goNamed(
                                CotacaoListaWidget.routeName,
                                queryParameters: {
                                  'solicitacao': serializeParam(
                                    widget.produto?.solicitacaoId,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Icon(
                              Icons.add_shopping_cart_rounded,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 45.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: FutureBuilder<List<VwCatalogoUltimoPrecoRow>>(
                future: VwCatalogoUltimoPrecoTable().queryRows(
                  queryFn: (q) => q
                      .eqOrNull(
                        'item_solicitado_id',
                        widget.produto?.itemSolicitadoId,
                      )
                      .order('valor_por_unidade_base', ascending: true),
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
                  List<VwCatalogoUltimoPrecoRow>
                      containerVwCatalogoUltimoPrecoRowList = snapshot.data!;

                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(24.0),
                        topRight: Radius.circular(24.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: ListView(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          16.0,
                          0,
                          12.0,
                        ),
                        primary: false,
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(),
                                  ),
                                  Icon(
                                    Icons.add,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 35.0,
                                  ),
                                  Text(
                                    'Criar cotacao',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  wrapWithModel(
                                    model: _model.iconeTutorialModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: IconeTutorialWidget(
                                      tutorial: 'Cotações',
                                      ordem: 4,
                                      nome: 'Pedir item',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.produtocotacaoModel,
                            updateCallback: () => safeSetState(() {}),
                            child: ProdutocotacaoWidget(
                              produtocomprador: widget.produto,
                              mostrarVendedor: false,
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final produtos =
                                  containerVwCatalogoUltimoPrecoRowList
                                      .toList();
                              if (produtos.isEmpty) {
                                return EmptyListWidget(
                                  titulo: 'Sem Cotações',
                                  texto:
                                      'Este item ainda não recebeu nenhuma cotação',
                                  confirmacao: false,
                                  espera: true,
                                );
                              }

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: produtos.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 12.0),
                                itemBuilder: (context, produtosIndex) {
                                  final produtosItem = produtos[produtosIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().pedidosfeitos.contains(
                                              produtosItem.itemCotacaoId) ==
                                          true) {
                                        _model.prdido =
                                            await VwDetalhesPedidoTable()
                                                .queryRows(
                                          queryFn: (q) => q
                                              .eqOrNull(
                                                'item_solicitado_id',
                                                widget
                                                    .produto?.itemSolicitadoId,
                                              )
                                              .eqOrNull(
                                                'catalogo_produto_id',
                                                produtosItem.catalogoProdutoId,
                                              ),
                                        );
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: BsEditaPedidoWidget(
                                                  pedido: _model
                                                      .prdido!.firstOrNull!,
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      } else {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: BsFazerpedidoWidget(
                                                  detalhesSolicitacoa:
                                                      widget.produto!,
                                                  itemCotacao: produtosItem,
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      }

                                      safeSetState(() {});
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FFAppState()
                                                        .pedidosfeitos
                                                        .contains(produtosItem
                                                            .itemCotacaoId) ==
                                                    true
                                                ? FlutterFlowTheme.of(context)
                                                    .success
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            width: 4.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: ProdutoCatalogoWidget(
                                            key: Key(
                                                'Key909_${produtosIndex}_of_${produtos.length}'),
                                            produto: produtosItem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
