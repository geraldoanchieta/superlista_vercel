import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/bs_atualisa_cotacao/bs_atualisa_cotacao_widget.dart';
import '/listas/bs_catalogo_do_vendedor/bs_catalogo_do_vendedor_widget.dart';
import '/listas/bs_cria_cotacao/bs_cria_cotacao_widget.dart';
import '/listas/components/produtos/produto_catalogo/produto_catalogo_widget.dart';
import '/listas/components/produtos/produtocotacao/produtocotacao_widget.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cotacao_produto_vendedor_model.dart';
export 'cotacao_produto_vendedor_model.dart';

class CotacaoProdutoVendedorWidget extends StatefulWidget {
  const CotacaoProdutoVendedorWidget({
    super.key,
    required this.produto,
  });

  final VwItensParaCotarRow? produto;

  static String routeName = 'cotacaoProdutoVendedor';
  static String routePath = 'cotacaoProdutoVendedor';

  @override
  State<CotacaoProdutoVendedorWidget> createState() =>
      _CotacaoProdutoVendedorWidgetState();
}

class _CotacaoProdutoVendedorWidgetState
    extends State<CotacaoProdutoVendedorWidget> {
  late CotacaoProdutoVendedorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CotacaoProdutoVendedorModel());

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
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 63.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/Design_sem_nome_(3).png',
                            height: 300.0,
                            fit: BoxFit.contain,
                          ),
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
                              context.pushNamed(FavouritePageWidget.routeName);
                            },
                            child: Icon(
                              Icons.favorite_sharp,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      wrapWithModel(
                        model: _model.iconeTutorialModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: IconeTutorialWidget(
                          tutorial: 'Vendas',
                          ordem: 4,
                          nome: 'Novo Item',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.iconeTutorialModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: IconeTutorialWidget(
                          tutorial: 'Vendas',
                          ordem: 7,
                          nome: 'Reutilizar',
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().atualisacriacao = false;
                        safeSetState(() {});
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: BsCriaCotacaoWidget(
                                  itemCotacao: widget.produto!,
                                  tipoDeUnidade: FFAppState()
                                      .unidades
                                      .where((e) =>
                                          e.id ==
                                          widget.produto?.unidadeBaseId)
                                      .toList()
                                      .firstOrNull!
                                      .tipoMedida,
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));

                        if (FFAppState().atualisacriacao) {
                          safeSetState(() => _model.requestCompleter = null);
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: FlutterFlowTheme.of(context).success,
                            size: 35.0,
                          ),
                          Text(
                            'Criar cotacao',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context).success,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
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
                            return GestureDetector(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: BsCatalogoDoVendedorWidget(
                                  produtoMASTER:
                                      widget.produto!.produtoMasterId!,
                                  itemSolicitacao:
                                      widget.produto!.itemSolicitadoId!,
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(
                            () => _model.catalogoAtualisacao = value));

                        if (_model.catalogoAtualisacao!) {
                          safeSetState(() => _model.requestCompleter = null);
                        }

                        safeSetState(() {});
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.backup_sharp,
                            color: FlutterFlowTheme.of(context).success,
                            size: 35.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Já Criadas',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context).success,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                wrapWithModel(
                  model: _model.produtocotacaoModel,
                  updateCallback: () => safeSetState(() {}),
                  child: ProdutocotacaoWidget(
                    mostrarVendedor: true,
                    produtosVendedor: widget.produto,
                  ),
                ),
              ],
            ),
            Expanded(
              child: FutureBuilder<List<VwCatalogoUltimoPrecoRow>>(
                future: (_model.requestCompleter ??= Completer<
                        List<VwCatalogoUltimoPrecoRow>>()
                      ..complete(VwCatalogoUltimoPrecoTable().queryRows(
                        queryFn: (q) => q
                            .eqOrNull(
                              'item_da_lista_id',
                              widget.produto?.itemDaListaId,
                            )
                            .eqOrNull(
                              'vendedor_id',
                              FFAppState().vendedroe.id,
                            )
                            .order('valor_por_unidade_base', ascending: true),
                      )))
                    .future,
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
                      child: Builder(
                        builder: (context) {
                          final cotacoes =
                              containerVwCatalogoUltimoPrecoRowList.toList();

                          return ListView.separated(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              16.0,
                              0,
                              12.0,
                            ),
                            primary: false,
                            scrollDirection: Axis.vertical,
                            itemCount: cotacoes.length,
                            separatorBuilder: (_, __) => SizedBox(height: 8.0),
                            itemBuilder: (context, cotacoesIndex) {
                              final cotacoesItem = cotacoes[cotacoesIndex];
                              return InkWell(
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
                                      return GestureDetector(
                                        onTap: () {
                                          FocusScope.of(context).unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: BsAtualisaCotacaoWidget(
                                            cotacao: cotacoesItem,
                                            itemSolicitacaoIdAtual: widget
                                                .produto!.itemSolicitadoId!,
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(
                                      () => _model.atualisar = value));

                                  if (_model.atualisar!) {
                                    safeSetState(
                                        () => _model.requestCompleter = null);
                                  }

                                  safeSetState(() {});
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: ProdutoCatalogoWidget(
                                        key: Key(
                                            'Key03n_${cotacoesIndex}_of_${cotacoes.length}'),
                                        produto: cotacoesItem,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
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
