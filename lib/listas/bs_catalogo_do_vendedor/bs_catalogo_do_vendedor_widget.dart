import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/tipo_de_preco_cotacao_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/listas/components/catalogo_vendedor/catalogo_vendedor_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'bs_catalogo_do_vendedor_model.dart';
export 'bs_catalogo_do_vendedor_model.dart';

class BsCatalogoDoVendedorWidget extends StatefulWidget {
  const BsCatalogoDoVendedorWidget({
    super.key,
    required this.produtoMASTER,
    required this.itemSolicitacao,
  });

  final int? produtoMASTER;
  final int? itemSolicitacao;

  @override
  State<BsCatalogoDoVendedorWidget> createState() =>
      _BsCatalogoDoVendedorWidgetState();
}

class _BsCatalogoDoVendedorWidgetState
    extends State<BsCatalogoDoVendedorWidget> {
  late BsCatalogoDoVendedorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsCatalogoDoVendedorModel());

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

    return FutureBuilder<List<VwCatalogoPessoalVendedorRow>>(
      future: VwCatalogoPessoalVendedorTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'vendedor_id',
              FFAppState().vendedroe.id,
            )
            .eqOrNull(
              'produto_master_id',
              widget.produtoMASTER,
            ),
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
        List<VwCatalogoPessoalVendedorRow>
            createNoteVwCatalogoPessoalVendedorRowList = snapshot.data!;

        return Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 1.227,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: 50.0,
                          height: 4.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Qual o problema que vc quer relatar',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineMediumIsCustom,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: FaIcon(
                            FontAwesomeIcons.solidTimesCircle,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 35.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final catalogos =
                            createNoteVwCatalogoPessoalVendedorRowList.toList();

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: catalogos.length,
                          separatorBuilder: (_, __) => SizedBox(height: 12.0),
                          itemBuilder: (context, catalogosIndex) {
                            final catalogosItem = catalogos[catalogosIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.escolhido == null) {
                                  _model.escolhido = catalogosIndex;
                                  safeSetState(() {});
                                } else {
                                  _model.escolhido = null;
                                  safeSetState(() {});
                                }
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CatalogoVendedorWidget(
                                        key: Key(
                                            'Key6c6_${catalogosIndex}_of_${catalogos.length}'),
                                        produto: catalogosItem,
                                      ),
                                      if (catalogosIndex == _model.escolhido)
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            TipoDePrecoCotacaoWidget(
                                              key: Key(
                                                  'Keyrb9_${catalogosIndex}_of_${catalogos.length}'),
                                              embalagem: valueOrDefault<String>(
                                                catalogosItem
                                                    .embalagemIndividual,
                                                'und',
                                              ),
                                              undBase: valueOrDefault<String>(
                                                catalogosItem
                                                    .unidadeBaseSimbolo,
                                                'und',
                                              ),
                                              cotadoUndBase: catalogosItem
                                                  .cotadoPorUnidadeBase,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 12.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  _model.apiResultioi =
                                                      await FuncoesRpcGroup
                                                          .editarCotacaoAtualCall
                                                          .call(
                                                    pPrecoOferta: FFAppState()
                                                        .valorCotacao,
                                                    pTipoPrecoInformado:
                                                        FFAppState()
                                                            .tipoDePreco,
                                                    token: currentJwtToken,
                                                    pCatalogoProdutoId:
                                                        catalogosItem
                                                            .catalogoProdutoId,
                                                    pCotacaoId:
                                                        FFAppState().cotacao.id,
                                                    pItemSolicitadoId:
                                                        widget.itemSolicitacao,
                                                  );

                                                  if ((_model.apiResultioi
                                                          ?.succeeded ??
                                                      true)) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'item Criado com sucesso!!!!',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                      ),
                                                    );
                                                    FFAppState()
                                                        .addToProdutocotado(
                                                            ProdutoCotadoStruct(
                                                      itemSolicitacaoId: widget
                                                          .itemSolicitacao,
                                                      itemCotacaoId: CatalogoComPrecoStruct
                                                              .maybeFromMap((_model
                                                                      .apiResultioi
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.cotacaoId,
                                                      cotacaoId: FFAppState()
                                                          .cotacao
                                                          .id,
                                                    ));
                                                    safeSetState(() {});
                                                    Navigator.pop(
                                                        context, true);
                                                  }

                                                  safeSetState(() {});
                                                },
                                                text: 'Criar oferta',
                                                options: FFButtonOptions(
                                                  width: 220.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
                                                          ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
